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

## Deploy to Nomad

```console
$ nomad run fah.nomad
==> Monitoring evaluation "f4e02ca1"
    Evaluation triggered by job "folding-at-home"
    Evaluation within deployment: "15e1bc04"
    Allocation "6518ece5" created: node "3cea90f6", group "folding-at-home"
    Evaluation status changed: "pending" -> "complete"
==> Evaluation "f4e02ca1" finished with status "complete"
```
