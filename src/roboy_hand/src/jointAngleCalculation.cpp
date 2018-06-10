/*
 * jointAngleCalculation.cpp
 *
 *  Created on: Jun 7, 2018
 *      Author: kaiwu
 */

#include "ros/ros.h"
#include "leap_motion/leapros.h"
#include "geometry_msgs/Point.h"
#define _USE_MATH_DEFINES
#include <math.h>
#define VARIABLE_TYPE double



double jointAngleCalculation(geometry_msgs::Vector3 p1, geometry_msgs::Vector3 p2){
  double dot_product = p1.x * p2.x + p1.y * p2.y + p1.z * p2.z;
  double magnitude = sqrt((p1.x*p1.x + p1.y * p1.y + p1.z * p1.z) * (p2.x*p2.x + p2.y * p2.y + p2.z * p2.z));
  double arccos = acos(dot_product/magnitude);
  double angle = - arccos * 180 / M_PI;
  return angle;
}

geometry_msgs::Point transform_PalmCS(geometry_msgs::Point p, geometry_msgs::Point palm,
		geometry_msgs::Vector3 x, geometry_msgs::Vector3 y, geometry_msgs::Vector3 z){
	geometry_msgs::Point p_new;
	p.x -= palm.x;
	p.y -= palm.y;
	p.z -= palm.z;
	//printf("%lf %lf %lf\n",p.x,p.y,p.z);

	p_new.x = p.x*x.x + p.y*x.y + p.z*x.z;
	p_new.y = p.x*y.x + p.y*y.y + p.z*y.z;
	p_new.z = p.x*z.x + p.y*z.y + p.z*z.z;

	//printf("%lf %lf %lf\n",p_new.x,p_new.y,p_new.z);
	return p_new;
}


void jointAngleTransform(const leap_motion::leaprosConstPtr& msg){
	geometry_msgs::Point fingerjoints[5][5];
	geometry_msgs::Point joints_inPalmCS[5][5];
	double allAngles[5][4] = {0};
	geometry_msgs::Vector3 fingerVectors[5][4];


	fingerjoints[0][0] = msg->thumb_metacarpal;
	fingerjoints[0][1] = msg->thumb_proximal;
	fingerjoints[0][2] = msg->thumb_intermediate;
	fingerjoints[0][3] = msg->thumb_distal;
	fingerjoints[0][4] = msg->thumb_tip;

	fingerjoints[1][0] = msg->index_metacarpal;
	fingerjoints[1][1] = msg->index_proximal;
	fingerjoints[1][2] = msg->index_intermediate;
	fingerjoints[1][3] = msg->index_distal;
	fingerjoints[1][4] = msg->index_tip;

	fingerjoints[2][0] = msg->middle_metacarpal;
	fingerjoints[2][1] = msg->middle_proximal;
	fingerjoints[2][2] = msg->middle_intermediate;
	fingerjoints[2][3] = msg->middle_distal;
	fingerjoints[2][4] = msg->middle_tip;

	fingerjoints[3][0] = msg->ring_metacarpal;
	fingerjoints[3][1] = msg->ring_proximal;
	fingerjoints[3][2] = msg->ring_intermediate;
	fingerjoints[3][3] = msg->ring_distal;
	fingerjoints[3][4] = msg->ring_tip;

	fingerjoints[4][0] = msg->pinky_metacarpal;
	fingerjoints[4][1] = msg->pinky_proximal;
	fingerjoints[4][2] = msg->pinky_intermediate;
	fingerjoints[4][3] = msg->pinky_distal;
	fingerjoints[4][4] = msg->pinky_tip;

	geometry_msgs::Vector3 y_palm;
	y_palm.x = msg->normal.y*msg->direction.z - msg->normal.z*msg->direction.y;
	y_palm.y = msg->normal.z*msg->direction.x - msg->normal.x*msg->direction.z;
	y_palm.z = msg->normal.x*msg->direction.y - msg->normal.y*msg->direction.x;
	//printf("%lf %lf %lf\n",y_palm.x,y_palm.y,y_palm.z);

	//transform every joint into palm coordinate system
	//x-axis: leapros->direction
	//y-axis: cross_product(leapros->normal, leapros->direction)
	//z-axis: leapros->normal
	for(int i=0;i<5;i++){
		for(int j=0;j<5;j++){
			joints_inPalmCS[i][j] = transform_PalmCS(fingerjoints[i][j], msg->palmpos, msg->direction, y_palm, msg->normal);
		}
	}
	//printf("%lf %lf %lf\n",joints_inPalmCS[1][2].x,joints_inPalmCS[1][2].y,joints_inPalmCS[1][2].z);

	for(int i=0;i<5;i++){
		for(int j=0;j<4;j++){
			fingerVectors[i][j].x= joints_inPalmCS[i][j+1].x - joints_inPalmCS[i][j].x;
			fingerVectors[i][j].y= joints_inPalmCS[i][j+1].y - joints_inPalmCS[i][j].y;
			fingerVectors[i][j].z= joints_inPalmCS[i][j+1].z - joints_inPalmCS[i][j].z;
		}
	}

	//printf("%lf %lf %lf\n",fingerVectors[1][0].x,fingerVectors[1][0].y,fingerVectors[1][0].z);

	for(int i=0;i<5;i++){
		for(int j=2;j<4;j++){
			allAngles[i][j] = jointAngleCalculation(fingerVectors[i][j-1], fingerVectors[i][j]);
		}

		double r = sqrt(fingerVectors[i][1].x*fingerVectors[i][1].x + fingerVectors[i][1].y*fingerVectors[i][1].y
				+ fingerVectors[i][1].z*fingerVectors[i][1].z);
		double theta = acos(fingerVectors[i][1].z/r);
		double phi = atan(fingerVectors[i][1].y/fingerVectors[i][1].x);

		allAngles[i][1] = -(90 - theta * 180 / M_PI);
		allAngles[i][0] = phi * 180 / M_PI;
	}
	printf("%lf %lf %lf %lf\n",allAngles[1][0],allAngles[1][1],allAngles[1][2],allAngles[1][3]);
	//printf("%lf %lf %lf\n",msg->pinky_metacarpal.x,msg->pinky_metacarpal.y,msg->pinky_metacarpal.z);
}

int main(int argc, char** argv){
	ros::init(argc, argv, "LeapMotionSubscriber");
	ros::NodeHandle n;

	ros::Subscriber sub = n.subscribe("/leapmotion/data",1000,jointAngleTransform);



	ros::spin();
}


