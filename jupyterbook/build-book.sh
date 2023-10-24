mamba run -n jupyterbook pytest --nbmake --overwrite notebooks/intro.ipynb --nbmake-kernel=swarmpal-runner
mamba run -n jupyterbook jupyter-book build --config _config-with-nbmake.yml .