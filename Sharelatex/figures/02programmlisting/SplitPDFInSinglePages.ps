:: Parametrierbereich
set gsbin="C:\Program Files\gs\gs9.19\bin\gswin64.exe"
set fd=Symbolbibliothek.pdf

:: Programmbereich
%gsbin% -q -sstdout=anzahlseite.txt -c ^
 "(%fd%) (r) file runpdfbegin pdfpagecount = quit"
set /p Seitenzahlstr=<anzahlseite.txt
echo Seitenazhlvariable: %Seitenzahlstr%
del anzahlseite.txt

rem Datei in x seiten zerlegen
setlocal EnableDelayedExpansion
set ctr=0
for /L %%G IN (1,1,%Seitenzahlstr%) do (
echo %%G
set "var=000000%%G"
set "var=!var:~-6!"
echo !var!
set /A CTR=CTR+1
%gsbin% -dNOPAUSE -dBATCH  -sOutputFile=p!var!.pdf ^
 -dFirstPage=!CTR! -dLastPage=!CTR! -sDEVICE=pdfwrite %fd%
)

