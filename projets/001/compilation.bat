@echo off

echo ****************************
echo *       COMPILATION        *
echo ****************************
echo * ASM ......... VBCC 1.9a  *
echo * CPU ......... Z80        *
echo * Date ........ 19/05/2024 *
echo ****************************

set path_vbcc=..\..\compilateurs\VBCC\1_9a\bin
set path_cpcdsk=..\..\tools\CPCDiskXP\2_5_1

echo.
echo ****************************
echo *        NETOYAGE          *
echo ****************************

if exist bin\cpc.bin erase bin\cpc.bin
if exist cpc.dsk erase cpc.dsk

echo.
echo ****************************
echo *       ASSEMBLAGE         *
echo ****************************
 %path_vbcc%\vasmz80_oldstyle.exe src\main.asm -Fbin -dotdir -o bin\cpc.bin
 
echo.
echo ****************************
echo *       BUILD DISK         *
echo ****************************
 %path_cpcdsk%\CPCDiskXP.exe -FILE bin\cpc.bin -AddAmsdosHeader 170 -AddtoNewDsk cpc.dsk

pause
