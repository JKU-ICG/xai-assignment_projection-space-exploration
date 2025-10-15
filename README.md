
# Explainable AI Assignment 1: Projection Space Exploration

## General Assignment Information

### Dimensionality Reduction and Scatterplots

In this assignment, you are challenged to visually analyze patterns emerging from projections of a dataset. For bonus points, you can optionally project and compare solutions of a problem, game, algorithm, model, or anything else that can be represented by sequential states/trajectories. For this, you will:
* Think about which features to project and how to encode them, normalize them, etc.
* Project the corresponding high-dimensional states to the 2-D space using algorithms like PCA, t-SNE, UMAP, MDS, ...
* Experiment with projection hyperparameter settings.
* When choosing your algorithms and hyperparameters, consider using dimensionality reduction quality metrics suitable to your dataset that tell you how well the 2-D projection preserves the high-dimensional structures. E.g.: "Trustworthiness", "Continuity", kNN overlap between high-dimensional and 2-D data, kNN classification accuracy, ...
* Render resulting 2-D points in a scatterplot.
* Find a suitable visual encoding for the scatterplot by mapping high-dimensional data features to channels such as mark color, size, shape/complex glyphs, opacity, orientation, texture, stroke, text labels...
* If you choose a trajectory dataset, you will render the edges by connecting states within a trajectory using lines or splines and apply visual encoding like color and thickness to these.

[Tool for selecting color maps by variable type](https://colorbrewer2.org/#type=qualitative&scheme=Dark2&n=3)

### Analysis of Clusters, Outliers, and Other Patterns

Depending on your dataset, the projection scatterplot will reveal patterns like clusters, outliers, and edge bundles. Because these scatterplot patterns alone are typically insufficient for making sense of the high-dimensional information, you will experiment with ways to visually analyze these patterns:

* Select patterns like salient clusters and outliers programmatically or through lasso or brush selections.
* Select patterns using clustering algorithms like k-means, DBSCAN, HDBSCAN, ...
* Then, for each selected pattern to be analyzed, take the data points that are part of this selection and think about how to visualize them in order to answer questions like:
    * Which features and feature values drive this cluster?
    * How would we label this cluster?
    * What is the data distribution of the features that drive this cluster?
    * Why is one cluster very dense and another very sparse?
    * Which features make this cluster different from the overall distribution of the entire dataset?
    * Why is this cluster different from another cluster?
    * Why does this bundle of trajectories form?
    * How do the features change between two clusters connected by a bundle?
    * Do all edges in this bundle represent the same action?
    * Why is this point an outlier?

---

For example, if you choose a tabular dataset and want to analyze which features drive a cluster, you might want to use visualizations like bar charts, histograms, KDE plots, boxplots, or violin plots to visualize its categorical and continuous variables appropriately.

[Visual Vocabulary Cheatsheet](https://gramener.github.io/visual-vocabulary-vega/#/FullList/)

There may be too many features in your dataset to analyze plots of every single feature. In this case, you might want to first determine which features are the most important to visualize: For instance, using a statistical measure to rank how dissimilar each feature in your cluster distribution is from the overall data distribution, or from that of another cluster. Then you can visualize the top k features ranked by this statistical measure.

If you are using an image dataset, you might want to think about whether it makes sense to average the images in your clusters or whether a more complex strategy is necessary.

For datasets with an inherent 2-D spatial layout, such as a chessboard where each square can take on different states (e.g., occupied by a particular piece), consider how to visualize which regions consistently have the same state and which vary across observations.

Experiment and choose the types of visualizations that fit your dataset best to explain the most interesting structures in your projections.

---

Exemplary solutions for how to perform projections and create scatterplots are provided in the `solution_rubik.ipynb` and `solution_2048.ipynb` notebooks. 

One place to look for interesting datasets is [Kaggle](https://www.kaggle.com/datasets).

Further examples of trajectory datasets to analyze are (board) games and approximation algorithms. The 2048 notebook uses [OpenAI Gym](https://gym.openai.com/) to create a game environment and produce state data. There are various of first- and third-party environments for Gym that can be used.

## Intermediate Submission

### Team Information

Fill out the `team-info.json` file in this repository and **push it to GitHub by 23:59 on 5 November, 2025**. (Check Moodle for any updated deadlines.)
Make sure that the file contains your team name, each student's first and last name, student ID, email address, and GitHub username.

### Dataset
Please add your dataset to the repository (or provide a link if it is too large) and answer the following questions about it:

* Which dataset are you using? What is it about?
* Where did you get this dataset from (i.e., source of the dataset)? How was the dataset generated?
* What is the dataset size in terms of nodes, items, rows, columns, ...?
* What do you want to analyze?
* What are you expecting to see?


## Final Submission

* **Push it to GitHub by 23:59 on 12 November, 2025**
* Make sure that you have pushed your GitHub repository and didn't just commit it locally.
* Sending us an email with the code is not necessary.
* Update the *environment.yml* file if you need additional libraries, otherwise the code is not executable.
* Create a single, clearly named notebook with your solution, e.g. solution.ipynb.
* Save your final executed notebook as HTML (File > Download as > HTML) and add them to your repository.

### Workload Distribution

Please indicate the workloads for each student in the `workload.json`.

Make sure that the file includes your correct team name, that the names in the workload file match the `team-info.json` and that the workloads sum up to 1.

## Development Environment

Check out this repo and change into the folder:
```
git clone https://github.com/jku-icg-classroom/xai_proj_space_2025-<GROUP_NAME>.git
cd xai_proj_space_2025-<GROUP_NAME>
```

Load the conda environment from the shared `environment.yml` file:
```
conda env create -f environment.yml
conda activate xai_proj_space
```

> Hint: For more information on Anaconda and environments take a look at the README in our [tutorial repository](https://github.com/JKU-ICG/python-visualization-tutorial).

Then launch JupyterLab:
```
jupyter lab
```

Go to http://localhost:8888/ and open the *template* notebook.

Alternatively, you can also work with [binder](https://mybinder.org/), [deepnote](https://deepnote.com/), [colab](https://colab.research.google.com/), or any other service as long as the notebook runs in the standard Jupyter environment.
