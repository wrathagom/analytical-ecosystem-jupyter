# base-jupyter-lab

Thanks for coming to check out my analytical ecosystem! This is what I consider the core of the entire system: Jupyter. With it I can bring data in from anywhere, move data out to anywhere, and do whatever analyssi or transformation needs to be done in the middle.

## Installation

Getting started is easy, if you already have Docker and docker-compose installed. If you don't take care of that first:

 - [Install Docker](https://docs.docker.com/get-docker/)
 - [Install docker-compose](https://docs.docker.com/compose/install/)

After that it's as simple as:

 - Clone this repo - `git clone https://github.com/wrathagom/analytical-ecosystem-jupyter.git`
 - Move to the new folder - `cd analytical-ecosystem-jupyter`
 - Docker compose up - `docker-compose up -d && docker-compose logs -f`

## Access

The last command above will start up Jupyter and leave the logs showing. Once Jupyter is running it should show an output like the below:

```
Creating network "my-data-network" with the default driver
Creating base-jupyter-lab_jupyter_1 ... done
Attaching to base-jupyter-lab_jupyter_1
jupyter_1  | Executing the command: jupyter lab
jupyter_1  | [I 2021-06-18 14:27:37.372 ServerApp] jupyterlab | extension was successfully linked.
jupyter_1  | [W 2021-06-18 14:27:37.375 NotebookApp] 'ip' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
jupyter_1  | [W 2021-06-18 14:27:37.375 NotebookApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
jupyter_1  | [W 2021-06-18 14:27:37.375 NotebookApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
jupyter_1  | [I 2021-06-18 14:27:37.381 ServerApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/jupyter_cookie_secret
jupyter_1  | [I 2021-06-18 14:27:37.507 ServerApp] nbclassic | extension was successfully linked.
jupyter_1  | [I 2021-06-18 14:27:37.523 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.9/site-packages/jupyterlab
jupyter_1  | [I 2021-06-18 14:27:37.523 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
jupyter_1  | [I 2021-06-18 14:27:37.525 ServerApp] jupyterlab | extension was successfully loaded.
jupyter_1  | [I 2021-06-18 14:27:37.528 ServerApp] nbclassic | extension was successfully loaded.
jupyter_1  | [I 2021-06-18 14:27:37.529 ServerApp] Serving notebooks from local directory: /home/jovyan
jupyter_1  | [I 2021-06-18 14:27:37.529 ServerApp] Jupyter Server 1.6.2 is running at:
jupyter_1  | [I 2021-06-18 14:27:37.529 ServerApp] http://5f9497d28719:8888/lab?token=4c1998301dfe8aae78f1ee8dfbfae55ae2bc69dba83cf6c3
jupyter_1  | [I 2021-06-18 14:27:37.529 ServerApp]     http://127.0.0.1:8888/lab?token=4c1998301dfe8aae78f1ee8dfbfae55ae2bc69dba83cf6c3
jupyter_1  | [I 2021-06-18 14:27:37.529 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
jupyter_1  | [C 2021-06-18 14:27:37.531 ServerApp]
jupyter_1  |
jupyter_1  |     To access the server, open this file in a browser:
jupyter_1  |         file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
jupyter_1  |     Or copy and paste one of these URLs:
jupyter_1  |         http://5f9497d28719:8888/lab?token=4c1998301dfe8aae78f1ee8dfbfae55ae2bc69dba83cf6c3
jupyter_1  |         http://127.0.0.1:8888/lab?token=4c1998301dfe8aae78f1ee8dfbfae55ae2bc69dba83cf6c3
```

Copy the URL from the last line and paste it into your browser. Reach out if you have any problems.

## Updating

This repo is still changing frequently. I am adding new libraries all the time. To update run the below commands:

```
git pull
docker-compose down
docker-compose build
docker-compose up -d
docker-compose logs -f
```

This pulls the latest repo info from Github, shuts down the notebook server, updates the image the server is using, and starts everythin back up again.
