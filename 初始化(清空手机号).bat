@echo off
echo ��ʼ������ɾ�����ļ����ڵ��ֻ������ļ���
set /p input=ȷ��ɾ��������yes��

if "%input%"=="yes" goto A

echo  δִ���κβ���
pause
exit
:A

echo ���ڳ�ʼ��
echo ����
del /Q 1�ѷ������ֻ�����
del /Q 2�ⷢ�����ֻ�����
del /Q 3ȥ�غ����ɽ��
echo ִ�н���
pause 
exit