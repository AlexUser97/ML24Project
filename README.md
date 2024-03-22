# Improvement of Tabular Embeddings - Deep Learning Dorks
![Report](https://v1.iconsearch.ru/uploads/icons/nuvola2/32x32/bookcase.png) [Official report](https://drive.google.com/file/d/16rpLjNSqpxRVuBicghh-ZYobiakhRrqZ/view?usp=sharing)&nbsp;&nbsp;&nbsp;&nbsp;![Presentation](https://v1.iconsearch.ru/uploads/icons/oxygen/32x32/datashow.png) [Presentation](https://docs.google.com/presentation/d/1oWXI6c6Y84bzmsi3mCiXyKpXBR202deo/edit?usp=sharing&ouid=110874271372220681465&rtpof=true&sd=true)

This repository contains the project "Improvement of Tabular Embeddings" for the Machine Learning 2024 course at Skoltech. The project is developed by the Deep Learning Dorks team.

# Overview 
Tabular data has become increasingly important in modern machine learning applications. However, traditional methods for handling tabular data often struggle to capture complex relationships and interactions between features. This project aims to explore and improve the use of embeddings for tabular data, which can provide a more expressive and flexible representation of categorical and numerical features.

This project includes:
- checking the results of previous researchers
- estimation of the accuracy gain applying embeddings to ML models
- evaluation of the statistical features

# Features:
- Embedding Models: Implementations of various embedding models for tabular data
- Preprocessing: Utilities for data preprocessing, including feature engineering and data normalization.
- Evaluation: Scripts for evaluating the performance of embedding models on various tabular datasets.

# Getting Started
To get started with the project, clone the repository and install the required dependencies.

# Requirements
- Linux or Windows Subsystem for Linux (WSL) or macOS subsystem for Linux (Lima)
- Anaconda 23.5.0
- Nvidia CUDA toolkit 12.3 (recommended)

# How to install
```
#Set general environments
export PROJECT_DIR=<ABSOLUTE path to the repository root>
git clone https://github.com/yandex-research/tabular-dl-num-embeddings $PROJECT_DIR
cd $PROJECT_DIR
#Install all dependences
conda create -n num-embeddings python=3.9.7
conda activate num-embeddings
pip install torch==1.10.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r requirements.txt
#Specift paths
conda env config vars set PYTHONPATH=${PYTHONPATH}:${PROJECT_DIR}
conda env config vars set PROJECT_DIR=${PROJECT_DIR}
conda env config vars set LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:.../cuda-12.3/lib64
conda env config vars set CUDA_HOME=.../cuda-12.3
conda env config vars set CUDA_ROOT=.../cuda-12.3
#Reload conda to apply changes
conda deactivate
conda activate num-embeddings
#Download datasets
cd $PROJECT_DIR
wget "https://www.dropbox.com/s/r0ef3ij3wl049gl/data.tar?dl=1" -O num_embeddings_data.tar
tar -xvf num_embeddings_data.tar
```

# Usage
The repository is structured to facilitate easy experimentation and reproducibility. Each model implementation is contained within its own directory, along with any associated scripts for training and evaluation. Users can easily swap out different models and datasets to conduct their own experiments.

Useful links:

[Repeat the results](https://v1.iconsearch.ru/detailed/19832/3/)

[Embeddings application in ML](https://v1.iconsearch.ru/detailed/19832/3/)

[Embeddings application in DL](https://v1.iconsearch.ru/detailed/19832/3/)

# Contributing
We welcome contributions from the community! If you have suggestions for improvements or find any issues, please feel free to open an issue or submit a pull request.

# License
This project is licensed under the MIT License. See the LICENSE file for details.

# Contact
For any questions or comments, please contact the team at email Aleksandr.Zolotarev@skoltech.ru.

# Acknowledgments
We would like to thank the Skoltech Machine Learning 2024 course instructors for their guidance and support throughout the project and team of Yandex https://github.com/yandex-research/rtdl-num-embeddings/tree/main on the basis of whose work this project was created.
