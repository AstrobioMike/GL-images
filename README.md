# GL-images

This repo holds docker images created for my GeneLab work. The Dockerfiles are stored here and the images on [quay.io](https://quay.io/user/astrobiomike/).


## Notes on adding new images and putting on Quay

**E.g., here's the process for adding the bismark image for the methylseq workflow**

Created the subdirectory "methylseq-wf-bismark", added the Dockerfile.

Logged into my quay.io account and did the following:

- made a new repository called `gl-methylseq-wf-bismark`
- set to Public
- selected link to a GitHub Repository Push
- clicked Create Public Repository
- may have to select apprpriate organization, then click Continue
- selected this repository, GL-images, then Continue
- set to "Trigger only on branches and tags matching a regular expression", and entered `tags/methylseq-wf-bismark`
    - if i want to trigger an auto-build, i can use that tag, otherwise can just manually trigger build on quay (which won't be that often)
- clicked Continue
- left checked "Tag manifest with the branch or tag name"
- unchecked "Add `latest` tag if on default branch" (because i'm keeping all of these in the main branch)
- entered this as tag template: `${commit_info.short_sha}` (pasted in and clicked Add Tag Template, then click Continue)
- selected this as location of Dockerfile: `/methylseq-wf-bismark/Dockerfile`, clicked Continue
- selected this as context: `/methylseq-wf-bismark`, clicked Continue
- ignore Optional Robot Account, clicked Continue, then Continue again
- notification page about Trigger activate, clicked "Return to..."


![image](https://user-images.githubusercontent.com/13923308/225208945-667ed751-b95a-4245-a36c-d2ce40bbbd9c.png)


Then triggered first build with "Start New Build", "Run Trigger Now", selected "main" branch, then "Start Build" from the builds page, which is here for this example: https://quay.io/repository/astrobiomike/gl-methylseq-wf-bismark?tab=builds


---

## Docker reminder commands
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

---

## Docker install notes
Installing docker on my Apple Silicon M1 mac following this page (https://docs.docker.com/desktop/install/mac-install/) was problematic. I could install and run it, but then trying to setup conda environments inside those docker containers when running `docker build` did not work, as they were limited to looking for packages under noarch and linux-aarch64, rather than noarch and linux-64. 

I imagine running containers built elsewhere would be fine (i think), but i don't think i can build them there. Couldn't get things working on my M1 mac, so instead installed on my work mac following the above. Example steps below are after doing that. 

**UPDATE**
I think i just need to specify the platform during the build command, e.g.:

```bash
docker build --platform linux/x86_64 -t gl-align-qc . 
```

Also, based on looking [here](https://docs.docker.com/engine/reference/builder/#from), may be able to put that in the Dockerfile, e.g.:

```bash
FROM --platform linux/x86_64 condaforge/mambaforge:22.11.1-4
```

> **NOTE**
> I'm seeing `amd64` and `x86_64` used interchangeably in a lot of places. I think they may be the same. I'm not sure which should be used in these (i've seen both for Dockerfiles), and i'm not sure if they would pull the same things anyway. But, try swapping them if you have a problem sometime.

