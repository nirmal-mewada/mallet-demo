@echo off
set outfile=%~n0.log
set datafile=data.mlt
set datadir=..\sample-data\web\en\

rem echo output will be redirected to:  %outfile% 
cmd /C "mallet import-dir --input %datadir% --output %datafile% --keep-sequence --remove-stopwords"> %outfile% 


cmd /C "mallet train-topics  --input %datafile% --num-topics 20 --output-state topic-state.txt --output-topic-keys tutorial_keys.txt --output-doc-topics tutorial_compostion.txt

pause



rem outputs every word in your corpus of materials and the topic it belongs to into a compressed file (.gz; see www.gzip.org on how to unzip this)
rem outputs a text document showing you what the top key words are for each topic (tutorial_keys.txt)
rem and outputs a text file indicating the breakdown, by percentage, of each topic within each original text file you imported (tutorial_composition.txt). (To see the full range of possible parameters that you may wish to tweak, type bin\mallet train-topics –help at the prompt.)


