#!/bin/sh
/venv/bin/python3 -m radicale --config "" --server-hosts 0.0.0.0:5232 --auth-type=http_x_remote_user --storage-filesystem-folder=${DATA_DIR} --logging-level=${LOGLEVEL}
