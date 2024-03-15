#!/bin/bash

# set CUDA variable 
# available options for pytorch 2.0.1 are cpu, cu118
CUDA_VERSION=$1

# set Your Conda Path
your_conda_path=/home/anaconda3/bin/

conda create -n MUSE python=3.9
source ${your_conda_path}activate MUSE


# install pytorch & torch-geometric
if [[ "$CUDA_VERSION" == "cpu" ]]; then 
    conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 cpuonly -c pytorch
    pip install torch_geometric==2.3.1
    pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.0.0+cpu.html
elif [[ "$CUDA_VERSION" == 'cu118' ]]; then
    conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.8 -c pytorch -c nvidia
    pip install torch_geometric==2.3.1
    pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.0.0+cu118.html
fi


# install dependencies
pip install git+https://github.com/samoturk/mol2vec
pip install git+https://github.com/bp-kelley/descriptastorus

pip install -r requirements.txt