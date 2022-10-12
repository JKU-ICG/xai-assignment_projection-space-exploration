
# Explainable AI Assignment 1: Projection Space Exploration
In this assignment, you are challenged to analyze and compare solutions of a problem, game, algorithm, model, or anything else that can be represented by sequential states. For this, you will project the high-dimensional states to the two-dimensional space, connect the states, and add meta-data to the visualization.

Exemplary solutions are provided in the `solution_rubik.ipynb` and `solution_2048.ipynb` notebooks. 

Further examples to analyze are (board) games and approximation algorithms. The 2048 notebook uses [OpenAI Gym](https://gym.openai.com/) to create a game environment and produce state data. There is a variety of first and third party environments for Gym that can be used.

## General Information Submission

For the intermediate submission, please enter the group and dataset information. Coding is not yet necessary.

**Group Members**

| Student ID    | First Name  | Last Name      | E-Mail |  Workload [%] |
| --------------|-------------|----------------|--------|---------------|
| TODO        | TODO      | TODO         |TODO  |TODO         |
| TODO        | TODO      | TODO         |TODO  |TODO         |
| TODO        | TODO      | TODO         |TODO  |TODO         |
| TODO        | TODO      | TODO         |TODO  |TODO         |

### Dataset
Please add your dataset to the repository (or provide a link if it is too large) and answer the following questions about it:

* Which dataset are you using? What is it about?
* Where did you get this dataset from (i.e., source of the dataset)? How was the dataset generated?
* What is dataset size in terms of nodes, items, rows, columns, ...?
* What do you want to analyze?
* What are you expecting to see?

TODO


## Final Submission

* Make sure that you pushed your GitHub repository and not just committed it locally.
* Sending us an email with the code is not necessary.
* Update the *environment.yml* file if you need additional libraries, otherwise the code is not executeable.
* Create a single, clearly named notebook with your solution, e.g. solution.ipynb.
* Save your final executed notebook as html (File > Download as > HTML) and add them to your repository.


## Development Environment

Checkout this repo and change into the folder:
```
git clone https://github.com/jku-icg-classroom/xai_proj_space_2022-<GROUP_NAME>.git
cd xai_proj_space_2022-<GROUP_NAME>
```

Load the conda environment from the shared `environment.yml` file:
```
conda env create -f environment.yml
conda activate xai_proj_space
```

> Hint: For more information on Anaconda and enviroments take a look at the README in our [tutorial repository](https://github.com/JKU-ICG/python-visualization-tutorial).

Then launch Jupyter Lab:
```
jupyter lab
```

Go to http://localhost:8888/ and open the *template* notebook.

Alternatively, you can also work with [binder](https://mybinder.org/), [deepnote](https://deepnote.com/), [colab](https://colab.research.google.com/), or any other service as long as the notebook runs in the standard Jupyter environment.
