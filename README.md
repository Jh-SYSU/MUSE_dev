# MUSE
Source code for "A Variational Expectation-Maximization Framework for Balanced Multi-scale Learning of Protein and Drug Interactions"

![workflow](https://github.com/biomed-AI/MUSE/blob/master/image/fig1.jpg)

# System requirement
MUSE is mainly based on the following packages:  
- python  3.9.16
- rdkit 2023.3.1
- numpy  1.24.3
- pytorch  2.0.1+cu118
- pytorch-scatter  1.6.1
- pytorch-cluster  2.1.1
- torch-sparse  0.6.17
- torch-geometric  2.3.1


We provide a script (install.sh) to install the environment, including the extra packages (mol2vec, descriptastorus, et al), and CPU and CUDA11.8 environments are supported.
You can install the required packages follow the instructions (tested on a linux terminal, this step will take around 30 minutes depending on the speed of your internet bandwidth.):

`source install.sh cu118`


# Dataset
We provide the datasets here for those interested in our paper:  
The protein and drug interactions datasets used in this study are stored in `./datasets/`


# Usage

## Protein and Drug Interaction Predictions
For EM training (for example, protein-protein interactions), this step will take around several hours based on your system, number of GPUs or CPUs and IO speed:
```
python trainer_ppi.py --cfg-path configs/ppi.yaml --job-id test_run
```

drug-protein interactions:
```
python trainer_dpi.py --cfg-path configs/snap_dpi.yaml --job-id test_run
```

drug-drug interactions:
```
python trainer_ddi.py --cfg-path configs/deepddi.yaml --job-id test_run
```


## Protein-Protein Binding Sites Predictions
For EM training:
```
python trainer_ppbs.py --cfg-path configs/ppbs.yaml --job-id test_run
```

# Citation and contact
Citation: 
```
```  

Contact:  
In case you have questions, please contact [Jiahua Rao](raojh6@mail2.sysu.edu.cn)