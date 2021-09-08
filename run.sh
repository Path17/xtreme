# !/bin/bash

# Arguments in decreasing order of priority
TASK=${1:-chaii_hi}
# DATA_DIR for chaii points directly to the dataset (won't be added with any suffix directory path)
DATA_DIR=${2:-"/content/xtreme/download/chaii_data/"}
OUT_DIR=${3:-"/content/outputs-temp/"}
MODEL=${4:-bert-base-multilingual-cased}
GPU=${5:-0}
TRAIN_FILE_NAME=${6}
PREDICTIONS_DIR=${7:-"/content/predictions/"}
PREDICT_FILE_NAME=${8}
MODEL_NAME=${9:-bert-base-multilingual-cased}

cd /content/xtreme
bash scripts/train.sh $MODEL $TASK $GPU $DATA_DIR $OUT_DIR $TRAIN_FILE_NAME $PREDICTIONS_DIR $PREDICT_FILE_NAME $MODEL_NAME
