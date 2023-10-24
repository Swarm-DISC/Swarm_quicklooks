# Swarm_quicklooks

[![nbgitpuller](https://img.shields.io/badge/nbgitpuller-VRE-blue)](https://vre.vires.services/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FSwarm-DISC%2FSwarm_quicklooks&branch=main&urlpath=lab%2Ftree%2FSwarm_quicklooks%2Fnotebooks%2F01a1_Outreach-Report.ipynb)

Notebooks run automatically to display recent Swarm data at https://quicklooks.swarmdisc.org

Interact with them yourself on the VRE using the nbgitpuller link above. You won't get exact reproducibility - the software is not fixed the same, and the data is in flux.

## Run locally with Podman / Docker

Requires: Podman. Will need to edit the scripts to make them work with Docker.

```
git clone https://github.com/Swarm-DISC/Swarm_quicklooks
cd Swarm_quicklooks
```

- `build-book.sh`: Executes the notebooks with nbmake and builds the html with jupyter-book
- `build-and-deploy.sh`: Runs the above, plus deploys that book to netlify. Requires [netlify cli](https://docs.netlify.com/cli/get-started/)
- `run-lab.sh`: Run a JupyterLab where the notebooks can be edited.

## Development

- This repo holds the docker build config in `./docker/`, made available at <ghcr.io/swarm-disc/swarm_quicklooks>
    - Based on [jupyter/minimal-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-minimal-notebook)
    - Adds *two extra conda environments* which can be updated independently:
        - `swarmpal-runner`: Environment containing [SwarmPAL](https://github.com/Swarm-DISC/SwarmPAL), used to reliably run the notebooks. Notebooks should select this kernel.
        - `jupyterbook`: Minimal environment with pytest, [nbmake](https://github.com/treebeardtech/nbmake), [jupyter-book](https://jupyterbook.org). This is used to execute the notebooks (using the `swarmpal-runner` kernel) and build the pretty html.
    - Use the uploaded Docker image directly, or build one locally
- Update notebooks within `./jupyterbook/notebooks/`
