# Based on the latest datascience-notebook as of December 2025
ARG STARTER_IMAGE=quay.io/jupyter/datascience-notebook:2025-12-22
FROM $STARTER_IMAGE

# Add in your own requirements below.
# For best maintainability use a specific version.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install prebuilt JupyterLab extensions via pip
# Note: @jupyter-widgets/jupyterlab-manager is now built into JupyterLab 4.x
# ipydrawio replaces jupyterlab-drawio for JupyterLab 4 compatibility
RUN pip install --no-cache-dir ipydrawio
