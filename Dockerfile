FROM jupyter/minimal-notebook:lab-3.1.18

WORKDIR /home/jovyan/work/

COPY environment.yml .
RUN conda env create -f environment.yml

# Make RUN commands use the new environment:
# See https://pythonspeed.com/articles/activate-conda-dockerfile/ for details
SHELL ["conda", "run", "--no-capture-output", "-n", "xai_proj_space", "/bin/bash", "-c"]

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "xai_proj_space", "jupyter", "lab"]