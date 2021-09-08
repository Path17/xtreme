# !/bin/bash
 
cd /kaggle/input/modified-xtreme

# Arguments in decreasing order of priority
MODEL_PATH=${1:-"/content/outputs-temp/chaii_hi/bert-base-multilingual-cased_LR3e-5_EPOCH2.0_maxlen384"}
TASK=${2:-chaii_hi}
DATA_DIR=${3:-"/content/chaii_data/"}
PREDICTIONS_DIR=${4:-"/content/predictions/"}
MODEL=${5:-bert-base-multilingual-cased}
MODEL_TYPE=${6:-bert}
GPU=${7:-0}
PREDICT_FILE_NAME=${8}
 
bash scripts/predict_qa.sh bert-base-multilingual-cased bert $MODEL_PATH $TASK $GPU $DATA_DIR $PREDICTIONS_DIR $PREDICT_FILE_NAME
