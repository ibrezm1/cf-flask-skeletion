#!/usr/bin/env bash
# Py2 is out removing py2
PY2=`which python`
python3 -m venv cfenv
activate () {
 . cfenv/bin/activate
}
activate
pip install -r requirements.txt
