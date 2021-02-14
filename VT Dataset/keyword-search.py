import os
import pandas as pd

path = SOURCE_DIRECTORY

file_list=[f for f in os.listdir(os.path.join(path,'FolderName')) if f.endswith('.html')]

count = 0
keyword = 'Coinhive'


for filename in file_list:
    data = open(os.path.join(os.path.join(path,'FolderName'),filename)).read()
    
    if keyword.lower() in data.lower():
        print(filename)
        count += 1
        
print('Total: %s'%count)