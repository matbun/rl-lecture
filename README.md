# Introduction to Reinforcement Learning

Find the lecture slides [here](https://docs.google.com/presentation/d/1HObB0NPQuSgOl_n-TKQuEqcC9B6n7Is7avw6WshSIXM).

In the `RL-lecture.ipynb` notebook you will find the exercises used
during the lecture, whereas in `RL-lecture-solutions.ipynb` you can find
the solutions to the exercises.

## Environment setup

In [this presentation](https://docs.google.com/presentation/d/1SKoHpH-H6bSj5gU8dDh8lrtHvjcVrgTciql9QMXfOxU)
you can find more details on how to setup the execution environment to run the exercises of the RL lecture,
which include two alternative ways: CERN's KubeFlow cluster or Google Colaboratory.

There is a third option, if you want work on your laptop: use python virtual environments.

```bash
# Create a virtual env called ".venv"
python3 -m venv .venv

# Activate it
source .venv/bin/activate

# Install libraries
pip install -r requirements.txt

# Launch jupyter notebook server
jupyter notebook
```

A new window should open in the browser... If the window does not open, you can try
pasting this in the search bar of your browser: `http://localhost:8888/`

The Dockerfile is meant to generate a Docker image to be used as a notebook
server in CERN's KubeFlow (pretty much a JupyterLab image). However, you won't need it.
