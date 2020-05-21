del /S /Q .\images\%~n1\*
del .\%~n1.md
del /S /Q .\images\%~n1\*
mkdir images
mkdir images\%~n1\
pandoc -t gfm -o .\%~n1.md --extract-media=./images/%~n1 %~1  
ren .\images\%~n1\media\*.tmp *.jpg
call replacer.bat ".\%~n1.md" "\.tmp\)" ".jpg)"


