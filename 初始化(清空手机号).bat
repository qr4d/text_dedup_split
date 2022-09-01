@echo off
echo 初始化将会删除各文件夹内的手机号码文件。
set /p input=确定删除请输入yes：

if "%input%"=="yes" goto A

echo  未执行任何操作
pause
exit
:A

echo 正在初始化
echo ……
del /Q 1已发短信手机号码
del /Q 2拟发短信手机号码
del /Q 3去重后生成结果
echo 执行结束
pause 
exit