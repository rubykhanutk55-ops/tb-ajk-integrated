FROM continuumio/miniconda3:latest

# System dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    git \
    samtools \
    && rm -rf /var/lib/apt/lists/*

# Install bioinformatics tools
RUN conda install -c bioconda -c conda-forge \
    trimmomatic=0.39 \
    bwa-mem2=2.2.1 \
    gatk4=4.2.6.1 \
    iqtree=2.2.0 \
    raxml=8.2.12 \
    beast2=2.6.7 \
    snakemake=6.10.0 \
    tb-profiler=4.3.2 \
    && conda clean -afy

# Install Python libraries
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set working directory
WORKDIR /workspace

# Copy all scripts and notebooks
COPY . .

# Default command
CMD ["snakemake", "--cores", "4"]
