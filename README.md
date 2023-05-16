# monday.com (python) scripts

A collection of monday.com scripts (mostly in python) that use the API

![monday.com logo](img/monday_logo.png)

## The idea

The idea of this repository is a database of python scripts using the monday API.  
The scripts are launched through the use of Docker.  
As you see in the Docker image all the scripts in the `scripts` folder are loaded and then you can decide which script to run.

## How to run

```bash
docker build --name=python_docker --tag python-docker .
docker run -it -e FILE_TO_RUN="SCRIPT_NAME" -e API_KEY="YOU_API_KEY" --rm python-docker
```

**NB**: in the `docker run` command you have to set the `FILE_TO_RUN` and `API_KEY`.  
The `FILE_TO_RUN` is the name of python file;  
The `API_KEY` is monday API KEY. [Here](https://developer.monday.com/api-reference/docs/authentication) you can find the guide to have your api key.

So an example of a command could be

```bash
docker run -it -e FILE_TO_RUN="list_projects.py" -e API_KEY="dd98ad90d09023.dion09320ddjoeq0qdj0jqdjt0vmj0dqn9qdus0pioijnbi1" --rm python-docker
```
