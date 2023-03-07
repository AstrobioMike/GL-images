# GL-images

See different branches :+1: 

Installed docker on my Apple Silicon mac following this page (https://docs.docker.com/desktop/install/mac-install/) was problematic. I could install and run it, but then trying to setup conda environments inside those docker containers did not work as they were limited to looking for packages under noarch and linux-aarch64, rather than noarch and linux-64. 

I imagine running containers built elsewhere would be fine (i think), but i don't think i can build them there.

Example building locally after having created Dockerfile, from in the directory:

```bash
docker build -t gl-align-qc .
    # where `-t` argument is wanted name of container
```

Example jumping into `shell` of a container:

```bash
docker run -it gl-align-qc bash
    # where `-i` is for interactive and `-t` is for tty
```

<!--
Downloaded the Apple Silicon dmg file (not sure yet if I want that over the Intel way, and just relying on rosetta like is currently best with conda, but trying this way first. 


```bash
softwareupdate --install-rosetta
```

Proceeding with command-line install steps:
```bash
sudo hdiutil attach ~/Downloads/Docker.dm

sudo /Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license --user=mike

sudo hdiutil detach /Volumes/Docker
```


Was getting this error initially when trying to run things:

```bash
Cannot connect to the Docker daemon at unix:///Users/mike/.docker/run/docker.sock. Is the docker daemon running?
```

Following steps and info from [this response](https://stackoverflow.com/a/49719638/13722613) using homebrew:

```bash

```
https://www.cprime.com/resources/blog/docker-for-mac-with-homebrew-a-step-by-step-tutorial/
-->
