# Singularity container with Robo 3T

This is a [Singularity](http://singularity.lbl.gov/) container containing [Robo 3T](https://robomongo.org/).

It requires a recent version of Singularity on Linux (tested with 2.4).

## To pull a pre-built container:

[The container is available on Singularity-Hub](https://www.singularity-hub.org/collections/1899) with [additional usage details](https://www.singularity-hub.org/collections/1899/usage) and can be easily pulled and run on a machine without root:

```bash
singularity pull --name "robo3t.simg" shub://xrobin/singularity-robo3t
```

## To run Robo 3T inside the container

```bash
singularity run robo3t.simg
# Or the shorter syntax:
./robo3t.simg
```

## To build this container from scratch execute this (requires root):

```bash
git clone https://github.com/xrobin/singularity-robo3t.git
cd singularity-robo3t
sudo singularity build robo3t.simg Singularity
```
