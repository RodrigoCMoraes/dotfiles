# install git 
sudo apt-get install git -y

# clone repository
mkdir ~/projetos/

# change to projects path
cd ~/projetos

# clone repository
git clone git@172.20.24.169:ml/faceRecognition.git

# add NVIDIA package repository
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
sudo apt install ./cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo apt install ./nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
sudo apt update

# install CUDA and tools. Include optional NCCL 2.x
sudo apt install cuda9.0 cuda-cublas-9-0 cuda-cufft-9-0 cuda-curand-9-0 \
	    cuda-cusolver-9-0 cuda-cusparse-9-0 libcudnn7=7.2.1.38-1+cuda9.0 \
	        libnccl2=2.2.13-1+cuda9.0 cuda-command-line-tools-9-0

# optional: Install the TensorRT runtime (must be after CUDA install)
sudo apt update
sudo apt install libnvinfer4=4.1.2-1+cuda9.0

# download miniconda 3 x64
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# make executable
sudo chmod +x Miniconda3-latest-Linux-x86_64.sh

# install cuda and dependencies
./Miniconda3-latest-Linux-x86_64.sh

# install NVIDIA CUDA Profile Tools Interface ( libcupti-dev v9.0)
sudo apt-get install cuda-command-line-tools-9-0 nvidia-cuda-toolkit -y

# set environment variables
export PATH=${PATH}:/usr/local/cuda-9.0/bin
export CUDA_HOME=${CUDA_HOME}:/usr/local/cuda:/usr/local/cuda-9.0
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda-9.0/lib64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64

# close, open terminal and execute install_part2.sh
