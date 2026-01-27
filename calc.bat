@echo off
echo ===============================
echo        PARAMETERIZED CALCULATOR
echo ===============================

echo Operation : %OPERATION%
echo Number 1  : %NUM1%
echo Number 2  : %NUM2%
echo.

if "%OPERATION%"=="ADD" goto add
if "%OPERATION%"=="SUB" goto sub
if "%OPERATION%"=="MUL" goto mul
if "%OPERATION%"=="DIV" goto div

echo Invalid operation!
exit /b 1

:add
set /a result=%NUM1% + %NUM2%
echo Result (Addition) = %result%
goto end

:sub
set /a result=%NUM1% - %NUM2%
echo Result (Subtraction) = %result%
goto end

:mul
set /a result=%NUM1% * %NUM2%
echo Result (Multiplication) = %result%
goto end

:div
if "%NUM2%"=="0" (
    echo ERROR: Division by zero not allowed
    exit /b 1
)
set /a result=%NUM1% / %NUM2%
echo Result (Division) = %result%
goto end

:end
echo ===============================
echo        BUILD SUCCESSFUL
echo ===============================
