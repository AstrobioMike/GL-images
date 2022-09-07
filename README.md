# GL-images

- Made docker file

- **quay.io way**

    - Made quay.io account

    - Made repository linked to a GitHub repository push called 'gl-align-qc'

    - Manually triggered first build on quay.io
        - failed a few times for "internal error", but eventually worked without me changing anything


- **hub.docker.com way**
    - Installed docker on my mac

    - In this directory ran `docker build -t astrobiomike/gl-align-qc .`

    - Made account at hub.docker.com

    - Made repo there called 'gl-align-qc'

    - After build complete, in this directory ran `docker push astrobiomike/gl-align-qc`
