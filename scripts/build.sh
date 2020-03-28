set -ex

OUTPUT_DIR=$(pwd)/output
mkdir ${OUTPUT_DIR}

pip install -r requirements.txt --target ${OUTPUT_DIR}/libs

