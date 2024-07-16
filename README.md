# Introduction to Reinforcement Learning

Find the lecture slides [here](https://docs.google.com/presentation/d/1HObB0NPQuSgOl_n-TKQuEqcC9B6n7Is7avw6WshSIXM).

In the `RL-lecture.ipynb` notebook you will find the exercises used
during the lecture, whereas in `RL-lecture-solutions.ipynb` you can find
the solutions to the exercises.

The lecture contains exercises on the following topics:

1. Learn how to interact with RL environments using [Gymnasium](https://gymnasium.farama.org/index.html).
1. Markov Decision Process (MDP).
1. Dynamic programming (DP): Policy Evaluation and Value Iteration algorithms.
1. Maintaining exploration with epsilon-greedy policies.
1. TD(0) methods for sample-based RL: a comparison between SARSA and Q-learning.
1. Function approximation: train a deep reinforcement learning agent to control a [Lunar Lander](https://gymnasium.farama.org/environments/box2d/lunar_lander/).

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
