#!/bin/bash

#The first argument is the file that has the hash values of the samples downloaded as a torrent from VirusShare. I had extracted their hashes using Linux commands. 
INFILE=$1

#OUTFOLDER is the folder where the HTML files will be saved based on the criteria below
OUTFOLDER=/media/aristo/Elements/Denemem/Samples

#counter
i=0

#read INFILE line by line and store each line in the variable DENE
while IFS='' read -r DENE || [ -n "${DENE}" ]; do
     #VirusTotal API limited queries to be made in a minute to 4. So, sleep 15s between each query.
     sleep 15s
     echo "Counter: $i"
     ((i=i+1))
     echo "Processing $DENE"
     #connect to VirusTotal API and query the hash value (DENE)
     CEVAP="$(curl --request GET \
  --url 'https://www.virustotal.com/vtapi/v2/file/report?apikey=ece5a798ec9866e4740f6e8570e012e36374fc200b4da56216c282755fa07f6f&resource='$DENE'')"
     #if the result has the keyword of Miner somewhere
     if [[ "$CEVAP" == *"Miner"* ]]; then

        #it means this could be a Cryptojacking sample. So find the corresponding file among the downloaded files in the VirusShare torrent's extracted folder and copy it as hashvalue.html so that it can be browsed by a browser
        cp /media/aristo/Elements/Ahmet-378-HTML/VirusShare_$DENE ./$DENE.html

        #run the Puppeteer API script which will open the local html file in chrome. I couldnt' have used wasm-collector since it cannot extract wasm binaries from the local files for some reason I can't figure out.
        node try.js $DENE
        echo "was it a WASM sample? "


        #during this time Puppeteer opens the local html file in chrome and I manually check it if it creates wasm. Then if it does, I press y, if not I press n
        read key </dev/tty
                        #based on the keypress we store that file to OUTFOLDER.
                        if [ "$key" = "y" ]; then
                        mv $DENE.html $OUTFOLDER

                else
                        rm $DENE.html

                fi





     fi


done < $INFILE

