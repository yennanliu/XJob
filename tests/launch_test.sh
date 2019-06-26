#!/bin/sh
#################################################################
# SHELL TRIGGER WHOLE AIRFLOW TEST   
#################################################################

# declare env 
export AIRFLOW_HOME=/
export PYTHONPATH=/
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# init db (for airflow parameters (saved in DB))
airflow initdb

# print file structure 
ls && pwd &&  echo 'AIRFLOW_HOME :' $AIRFLOW_HOME && echo 'PYTHONPATH :' $PYTHONPATH

#lunch test 
#pytest 
python dag_validate_test.py 