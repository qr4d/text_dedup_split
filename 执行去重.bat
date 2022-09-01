@echo off
copy  ".\0工具文件夹（勿动）\null.txt" "已发.txt"
for /r %%i in (.\1已发短信手机号码\*.txt) do copy  "已发.txt"+"%%i"+".\0工具文件夹（勿动）\null.txt" "已发.txt"
copy  ".\0工具文件夹（勿动）\null.txt" "拟发.txt"
for /r %%i in (.\2拟发短信手机号码\*.txt) do copy  "拟发.txt"+"%%i"+".\0工具文件夹（勿动）\null.txt" "拟发.txt"
cls
cmd /c 0工具文件夹（勿动）\awk.exe -f 0工具文件夹（勿动）\统计.AWK 已发.txt 拟发.txt >3去重后生成结果\统计结果.txt
cmd /c 0工具文件夹（勿动）\awk.exe -f 0工具文件夹（勿动）\去重.AWK 已发.txt 拟发.txt >3去重后生成结果\去重后总文件.txt
cmd /c 0工具文件夹（勿动）\awk.exe -f 0工具文件夹（勿动）\重复.AWK 已发.txt 拟发.txt >3去重后生成结果\重复号码.txt
cmd /c 0工具文件夹（勿动）\awk.exe -f 0工具文件夹（勿动）\split.AWK 3去重后生成结果\去重后总文件.txt
del 已发.txt
del 拟发.txt
for /f "delims=" %%i in (3去重后生成结果\统计结果.txt) do echo %%i
pause