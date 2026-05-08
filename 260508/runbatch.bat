for /f %%i in ('dir fchk\*.fchk /b') do (
Multiwfn fchk\%%i < batch.txt
rename func1.cub f1_%%~ni.cub
rename func2.cub f2_%%~ni.cub
)