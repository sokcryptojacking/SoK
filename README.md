
# SoK: Cryptojacking Malware

This repository contains the cryptojacking malware dataset and relevant information for the ["SoK: Cryptojacking Malware" paper](https://arxiv.org/pdf/2103.03851). 

## 1. VT Dataset 

The VT dataset consists of the hash values of the 20200 cryptojacking samples in the CSV format. 

We made our queries on the entire VirusTotal database that can be accessed via VirusTotal academic API. Then, we performed the case-insensitive search of the keyword "miner" on the samples' VT scan reports in our database.

### Reproducibility of VT Dataset:

1. Download the hash values of the samples
2. You can [search for hashes of the samples on the VT interface](https://www.virustotal.com/intelligence/#search-for-hashes) or [download the samples](https://www.virustotal.com/intelligence/downloader/) with your own credentials. 
3. Run the keyword-search.py to find the samples of interest. For example, one can run the "Coinhive" to find the Coinhive service provider's samples. Similarly, one can run "XMR" to find the samples using Monero as a target cryptocurrency. 

## 2. PublicWWW Dataset 

The PublicWWW dataset consists of two domain lists and two keyword lists. 
 
1. "known_service_provider_domain_list.csv": This file contains the domains with the publicly known service providers. The list also includes the service provider name for each domain and associated keyword. Please note that some of the domain use multiple service providers. 
2. "unknown_service_provider_domain_list.csv": This file contains the domains with unknown service providers. The second column includes the keyword that is used to identify this domain.
3. "service provider keywords.csv": This file contains the keywords that can be used to identify the 14 service providers uniquely.
4. "unknown service provider keywords.csv": This file contains the keywords that can be used to identify the cryptominer, but the associated service provider is unknown.

### Reproducibility of PublicWW Dataset:

In order to reproduce the dataset and experiments, one can either use the domain lists we released or can download the keyword lists and then make a query on [PublicWWW's website](https://publicwww.com/). Finally, we also release the crawler we used to download the samples.


### The use of samples in our paper:  

For our paper, we used the dataset to verify some known techniques and behaviors of cryptojacking malware. Particularly, we used the dataset for the following purposes:

- To understand the lifecycle of in-browser and host-based cryptojacking
- To verify the service provider list given in other studies and as a source of cryptojacking malware
- To verify the use of mobile devices 
- To verify that Monero is the main target currency used by cryptojackings
- To find the other cryptocurrencies used by cryptojacking malware
- To verify that the existence of a CPU limiting technique for the obfuscation

## 3. Major Instances

This folder (Major_instances_links.xlsx) contains the major cryptojacking attack instances that we used in the paper.

### Citation

```
@inproceedings{tekiner2021,
 AUTHOR = {Ege Tekiner and Abbas Acar and A. Selcuk Uluagac and Engin Kirda and Ali Aydin Selcuk},
 TITLE = {SoK: Cryptojacking Malware},
 BOOKTITLE = {6th IEEE European Symposium on Security and Privacy},
 ADDRESS = {Virtual},
 MONTH = {September},
 DAY = {6--10},
 YEAR = {2021}
}
```

### Contact 

Please send an email to sokcryptokjacking (at) gmail (dot) com if you have any questions. 
