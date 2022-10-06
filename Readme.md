# Radicale Alpine Docker Image

![build workflow](https://github.com/pheelee/radicale/actions/workflows/deploy-image.yml/badge.svg)


This is my radicale docker image based on alpine.
Authentication is provided from the header X-Remote-User

## Environment Variables

| Variable | Description                     | Default |
|----------|---------------------------------|---------|
| DATA_DIR | Path where the data gets stored | /data   |
| LOGLEVEL | Logging Level (debug, info, warning, error, critical) | info   |