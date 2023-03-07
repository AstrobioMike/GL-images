# GL-images

See different branches :+1: 

Installed docker on my Apple Silicon mac following this page: https://docs.docker.com/desktop/install/mac-install/

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



