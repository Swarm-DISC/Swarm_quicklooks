# Swarm_quicklooks

[![Treebeard notebook status](https://api.treebeard.io/Swarm-DISC/Swarm_quicklooks/master/buildbadge)](https://treebeard.io/admin/Swarm-DISC/Swarm_quicklooks/master "Latest notebook run")
[![Launch on VRE](https://img.shields.io/badge/nbgitpuller-VRE-blue)](https://vre.vires.services/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FSwarm-DISC%2FSwarm_quicklooks&branch=master&urlpath=lab%2Ftree%2FSwarm_quicklooks%2Fnotebooks%2F01a1_Outreach-Report.ipynb)

Notebooks run daily (at 1am) to display recent Swarm data (using the [Treebeard](https://treebeard.io/) service running on GitHub)

The notebooks save figures which are accessible through the Treebeard API - these figures are displayed at https://magneticearth.org/pages/quicklooks.html

You can easily run and modify these notebooks yourself using the VRE -> [access link (nbgitpuller)](https://vre.vires.services/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2FSwarm-DISC%2FSwarm_quicklooks&branch=master&urlpath=lab%2Ftree%2FSwarm_quicklooks%2Fnotebooks%2F01a1_Outreach-Report.ipynb)

The code runs using the [GitHub Treebeard Action](https://github.com/marketplace/actions/treebeard-continuous-integration-for-python-data-science-supporting-jupyter-notebooks) and the latest run is viewable at https://treebeard.io/admin/Swarm-DISC/Swarm_quicklooks/master. Docker images for the environment are cached on [Docker Hub](https://hub.docker.com/u/swarmdisc/).

Directory structure:

```
| .github/workflows/   # Configures the GitHub Action (commit triggers, scheduling...)
| notebooks/           # Notebook files to be executed
| treebeard/           # Additional build scripts to configure environment
| environment.yml      # Specifies the conda environment to use
| treebeard.yaml       # Configuration for Treebeard (notebooks to use, output dir...)
```

Secrets (e.g. access tokens) are stored on GitHub (connected to this repository) - these are made available at runtime as environment variables.

