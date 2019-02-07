# after close and open terminal execute this script

conda create -n face_recognition python=3.6

source activate face_recognition

cd ~/projetos/faceRecognition

pip install cmake

pip install -r requirements.txt

sudo reboot
