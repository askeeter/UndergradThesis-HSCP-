#!/bin/sh
CMSSW_PROJECT_SRC="/afs/cern.ch/work/a/askeeter/private/CMSSW_7_4_4_patch4/src/"
CFG_FILE='/afs/cern.ch/work/a/askeeter/private/CMSSW_7_4_4_patch4/src/HSCP_MC_cfg_Files/mchamp60_M_900_cfg.py'
OUTPUT_FILE='/afs/cern.ch/work/a/askeeter/private/CMSSW_7_4_4_patch4/src/HSCP_MC_Root_Files/mchamp60_M_900_AOD.root'
OUT_FILE='mchamp60_M_900_AOD.root'
TOP="$PWD"
cd $CMSSW_PROJECT_SRC
eval `scramv1 runtime -sh`
cd $TOP
cmsRun $CFG_FILE
rfcp $OUT_FILE $OUTPUT_FILE
