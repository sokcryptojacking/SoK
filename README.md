
# SoK: Cryptojacking Malware

This repository contains the cryptojacking malware dataset and relevant information for the "SoK: Cryptojacking Malware" paper. 

## Dataset 

The datasets (In-browser.csv, Host-based.csv) are in the CSV format. The columns show the first submission year, file type, and hash value of the samples in the given order.

We made our queries on the entire VirusTotal database (Jan 2018-May 2020) that can be accessed via VirusTotal academic API. Then, we checked if the result has the keyword "Miner" somewhere to include in our database.

We also put the script (script.sh) for downloading the sources from the VirusTotal. 

The file type of the samples can be used to decide whether the sample is in-browser or host-based cryptojacking. If the sample is in the HTML format, the sample is called in-browser cryptojacking, while other formats (e.g., exe, dll, C/C++) are called host-based cryptojacking malware samples. 

### Analysis

For our paper, we used the dataset to verify the known techniques, for mostly in-browser cryptojacking malware. For example, we used a python script (keyword-search.py) to find the samples from spesific service providers (e.g., Coinhive).


### Contact 

Please send an email to sokcryptokjacking (at) gmail (dot) com if you have any questions. 
