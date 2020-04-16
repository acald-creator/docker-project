FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

# Errors from the Hadolint
# Dockerfile:7 DL3013 Pin versions in pip. Instead of `pip install <package>` use `pip install <package>==<version>`
# Previously: pip install --upgrade pip
# This line has been changed to pip install pip==20.0.2

RUN pip install pip==20.0.2 && \
    pip install --trusted-host pypi.python.org -r requirements.txt