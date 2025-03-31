#!/bin/bash
pip install -r requirements.txt

pip3 uninstall cmake && conda install cmake=3.14.0
pip3 install httpx==0.27.2

conda install habitat-sim=0.2.2 -c conda-forge -c aihabitat -y

cd ~
git clone --recursive https://github.com/cvg/Hierarchical-Localization/
cd Hierarchical-Localization/
python -m pip install -e .