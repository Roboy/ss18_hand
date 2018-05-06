
"use strict";

let SpeechSynthesis = require('./SpeechSynthesis.js');
let NewFacialFeatures = require('./NewFacialFeatures.js');
let AudioData = require('./AudioData.js');
let DirectionVector = require('./DirectionVector.js');
let AudioInfo = require('./AudioInfo.js');
let FaceCoordinates = require('./FaceCoordinates.js');

module.exports = {
  SpeechSynthesis: SpeechSynthesis,
  NewFacialFeatures: NewFacialFeatures,
  AudioData: AudioData,
  DirectionVector: DirectionVector,
  AudioInfo: AudioInfo,
  FaceCoordinates: FaceCoordinates,
};
