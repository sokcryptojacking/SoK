
# SoK: Cryptojacking Malware

This repository contains the cryptojacking malware dataset and relevant information for the "SoK: Cryptojacking Malware" paper. 

## Dataset 

The datasets (In-browser.csv, Host-based.csv) containing the hash values of the cryptojacking samples are in the CSV format. We only share the hash values of the samples as the raw samples allocate a huge volume (≈100GB). The columns in CSV files show the first submission year, file type, and hash value of the samples in the given order. 

We made our queries on the entire VirusTotal database (Jan 2018-May 2020) that can be accessed via VirusTotal academic API. Then, we checked if the result has the keyword "Miner" somewhere to include in our database.

We also put the script (script.sh) for downloading the sources from the VirusTotal. 

The file type of the samples can be used to decide whether the sample is in-browser or host-based cryptojacking. If the sample is in the HTML format, the sample is called in-browser cryptojacking, while other formats (e.g., exe, dll, C/C++) are called host-based cryptojacking malware samples. 

We are still working on our research and we continue to add more samples as we have more data available. We add our updated in-browser cryptojacking dataset which contains 23320 domains that contains in-browser cryptojacking malware.
### The use of samples in our paper:  

For our paper, we used the dataset to verify some known techniques and behaviors of cryptojacking malware. Particularly, we used the dataset for the following purposes:

- To understand the lifecycle of in-browser and host-based cryptojacking
- To verify the service provider list given in other studies and as a source of cryptojacking malware
- To verify the use of mobile devices 
- To verify that Monero is the main target currency used by cryptojackings
- To find the other cryptocurrencies used by cryptojacking malware
- To verify that the existence of a CPU limiting technique for the obfuscation

### Reproducibility of our analysis:

1. Download the hash values of the samples
2. Modify "script.sh" with your own credentials and run it to download the raw samples from VirusTotal. 
3. Run the keyword-search.py to find the samples of interest. For example, one can run the "Coinhive" to find the Coinhive service provider's samples. Similarly, one can run "XMR" to find the samples using Monero as a target cryptocurrency. 


### Contact 

Please send an email to sokcryptokjacking (at) gmail (dot) com if you have any questions. 
