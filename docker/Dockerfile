# Check tags at https://hub.docker.com/r/jupyter/minimal-notebook
FROM jupyter/minimal-notebook:2023-10-20

RUN mamba install nb_conda_kernels

# -----------------
# swarmpal environment
# -----------------

# Use the lock file to create the conda environment named swarmpal
COPY environments/swarmpal/conda-linux-64.lock /locks/swarmpal.lock
RUN mamba create -n swarmpal --file /locks/swarmpal.lock
RUN mamba clean -afy
# Install the remaining pip packages (in the swarmpal environment)
COPY environments/swarmpal/requirements.txt /locks/swarmpal-requirements.txt
RUN mamba run -n swarmpal pip install -r /locks/swarmpal-requirements.txt


# -----------------
# jupyterbook+nbmake environment
# -----------------
 
# Use the lock file to create the conda environment named jupyterbook
COPY environments/jupyterbook/conda-linux-64.lock /locks/jupyterbook.lock
RUN mamba create -n jupyterbook --file /locks/jupyterbook.lock
RUN mamba clean -afy
