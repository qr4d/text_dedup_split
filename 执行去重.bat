@echo off
copy  ".\0�����ļ��У��𶯣�\null.txt" "�ѷ�.txt"
for /r %%i in (.\1�ѷ������ֻ�����\*.txt) do copy  "�ѷ�.txt"+"%%i"+".\0�����ļ��У��𶯣�\null.txt" "�ѷ�.txt"
copy  ".\0�����ļ��У��𶯣�\null.txt" "�ⷢ.txt"
for /r %%i in (.\2�ⷢ�����ֻ�����\*.txt) do copy  "�ⷢ.txt"+"%%i"+".\0�����ļ��У��𶯣�\null.txt" "�ⷢ.txt"
cls
cmd /c 0�����ļ��У��𶯣�\awk.exe -f 0�����ļ��У��𶯣�\ͳ��.AWK �ѷ�.txt �ⷢ.txt >3ȥ�غ����ɽ��\ͳ�ƽ��.txt
cmd /c 0�����ļ��У��𶯣�\awk.exe -f 0�����ļ��У��𶯣�\ȥ��.AWK �ѷ�.txt �ⷢ.txt >3ȥ�غ����ɽ��\ȥ�غ����ļ�.txt
cmd /c 0�����ļ��У��𶯣�\awk.exe -f 0�����ļ��У��𶯣�\�ظ�.AWK �ѷ�.txt �ⷢ.txt >3ȥ�غ����ɽ��\�ظ�����.txt
cmd /c 0�����ļ��У��𶯣�\awk.exe -f 0�����ļ��У��𶯣�\split.AWK 3ȥ�غ����ɽ��\ȥ�غ����ļ�.txt
del �ѷ�.txt
del �ⷢ.txt
for /f "delims=" %%i in (3ȥ�غ����ɽ��\ͳ�ƽ��.txt) do echo %%i
pause