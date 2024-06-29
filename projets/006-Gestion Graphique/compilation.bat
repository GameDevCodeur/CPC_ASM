@echo off

echo ****************************
echo *       COMPILATION        *
echo ****************************
echo * ASM ......... VBCC 1.9f  *
echo * CPU ......... Z80        *
echo * Date ........ 19/05/2024 *
echo ****************************

set path_vbcc=..\..\..\compilateurs\VBCC\1_9f\bin
set path_cpcdsk=..\..\..\tools\CPCDiskXP\2_5_1
set path_CapriceForever=..\..\..\emulateurs\CapriceForever\24_2_7

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

echo.
echo ****************************
echo *       EMULATEUR          *
echo ****************************
if exist cpc.dsk (
	%path_CapriceForever%\Caprice64.exe
) else (
	echo not found cpc.dsk
)

pause