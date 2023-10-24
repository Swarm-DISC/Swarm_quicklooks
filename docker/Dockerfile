# Check tags at https://hub.docker.com/r/jupyter/minimal-notebook
FROM jupyter/minimal-notebook:2023-10-20

RUN mamba install nb_conda_kernels

# -----------------
# swarmpal environment
# -----------------

# Use the lock file to create the conda environment named swarmpal
COPY environments/swarmpal-runner/conda-linux-64.lock /locks/swarmpal-runner.lock
RUN mamba create -n swarmpal-runner --file /locks/swarmpal-runner.lock
RUN mamba clean -afy
# Install the remaining pip packages (in the swarmpal environment)
COPY environments/swarmpal-runner/requirements.txt /locks/swarmpal-runner-requirements.txt
RUN mamba run -n swarmpal-runner pip install -r /locks/swarmpal-runner-requirements.txt

# -----------------
# jupyterbook+nbmake environment
# -----------------
 
# Use the lock file to create the conda environment named jupyterbook
COPY environments/jupyterbook/conda-linux-64.lock /locks/jupyterbook.lock
RUN mamba create -n jupyterbook --file /locks/jupyterbook.lock
RUN mamba clean -afy

# -----------------
# Additional configuration steps
# -----------------

# Install the swarmpal kernel to make it available to jupyter
RUN mamba run --no-capture-output -n swarmpal-runner \
        python -m ipykernel install --user --name swarmpal-runner
