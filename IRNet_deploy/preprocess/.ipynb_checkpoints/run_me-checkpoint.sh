# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

#!/bin/bash

cd "$(dirname "$0")"

data=$1
table_data=$2
output=$3

# echo "Start download NLTK data"
# python download_nltk.py

echo "Start process the origin Spider dataset"
python data_process.py --data_path ${data} --table_path ${table_data} --output ${output}

# echo "Start generate SemQL from SQL"
# python sql2SemQL.py --data_path process_data.json --table_path ${table_data} --output ${output}

# rm process_data.json
