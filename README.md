# TB AJK Integrated Analysis Repository

This repository contains all code, workflows, and notebooks used for the manuscript:
*"Integrated epidemiological, machine learning, and genomic evaluation of the tuberculosis control programme in Azad Jammu and Kashmir, Pakistan"*.

## Contents

- `01_survey_analysis.ipynb` – Reproduces survey results (Tables 1–2, Figure 3)
- `02_xgboost_training.py` – Trains and tunes XGBoost model (Table 3)
- `03_shap_visualisation.py` – Generates SHAP summary plot (Figure 4)
- `04_phylogeny.py` – Produces phylogenetic tree and transmission network (Figures 5–6)
- `Snakefile` – Snakemake workflow for whole‑genome sequencing processing
- `Dockerfile` – Build a reproducible container with all dependencies

## Quick start

Build the Docker image:
```bash
docker build -t tb-ajk .
