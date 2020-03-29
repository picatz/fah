# Folding @ Home Docker Setup

For running the [FAH](https://foldingathome.org/) client in [Docker](https://www.docker.com/).

## Build

```console
$ docker build -t fah-client .
...
Successfully tagged fah-client:latest
```

## Run

```console
$ docker run -it --rm fah-client
19:24:27:************************* Folding@home Client *************************
...
19:24:27:Connecting to assign1.foldingathome.org:8080
...
```
