# This script installs jupyter labs onto your Ubuntu EC2, run it on a t3.micro instance.

# Update package list and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install Python3 and pip if not installed
sudo apt install python3-pip python3-venv -y

# Create a directory for the project
mkdir -p ~/my_project
cd ~/my_project

# Create a virtual environment in the project folder
python3 -m venv jupyter

# Activate the virtual environment
source jupyter/bin/activate

# Install Jupyter Notebook in the virtual environment
pip install jupyter

# Run Jupyter Notebook with default settings (only accessible from localhost)
jupyter notebook --ip=0.0.0.0 --no-browser

# Install the ipython-sql package to run SQL in Jupyter
pip install ipython-sql

# Load the ipython-sql extension
%load_ext sql
