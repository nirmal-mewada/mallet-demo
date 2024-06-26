@echo off
set outfile=%~n0.log
set datafile=sample-data.mlt
set datadir=sample-data\web\en\

rem echo output will be redirected to:  %outfile% 
rem cmd /C "mallet import-dir --input %datadir% --output %datafile% --keep-sequence --remove-stopwords"> %outfile% 
cmd /C "mallet train-classifier --input %datafile% --trainer MaxEnt --trainer NaiveBayes  --training-portion 0.9 --num-trials 10 --output-classifier classifier/ent-naive.classifier" > %outfile% 
pause 


