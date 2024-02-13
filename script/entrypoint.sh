#!/usr/bin/bash

source /opt/conda/etc/profile.d/conda.sh && conda activate sele-test
python src/manage.py runserver 0.0.0.0:8000
