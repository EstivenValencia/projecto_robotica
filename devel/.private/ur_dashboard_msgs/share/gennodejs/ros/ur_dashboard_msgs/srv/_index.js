
"use strict";

let GetLoadedProgram = require('./GetLoadedProgram.js')
let GetRobotMode = require('./GetRobotMode.js')
let IsProgramRunning = require('./IsProgramRunning.js')
let IsInRemoteControl = require('./IsInRemoteControl.js')
let GetProgramState = require('./GetProgramState.js')
let Popup = require('./Popup.js')
let AddToLog = require('./AddToLog.js')
let IsProgramSaved = require('./IsProgramSaved.js')
let GetSafetyMode = require('./GetSafetyMode.js')
let Load = require('./Load.js')
let RawRequest = require('./RawRequest.js')

module.exports = {
  GetLoadedProgram: GetLoadedProgram,
  GetRobotMode: GetRobotMode,
  IsProgramRunning: IsProgramRunning,
  IsInRemoteControl: IsInRemoteControl,
  GetProgramState: GetProgramState,
  Popup: Popup,
  AddToLog: AddToLog,
  IsProgramSaved: IsProgramSaved,
  GetSafetyMode: GetSafetyMode,
  Load: Load,
  RawRequest: RawRequest,
};
