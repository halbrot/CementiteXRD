@echo off

rem �x�����ϐ��̏����i�s���Ƃɏォ�珇�ɏ��������s�j
setlocal enabledelayedexpansion

rem ���݂̃f�B���N�g�����������I�Ɏ擾
set param1=%~dp0
echo %param1%

rem TOPAS�ŉ�͂��s�����`�Ƃ��āAINP�t�@�C���̖��O���w��
set inpname=Cementite

rem ���ʂ��o�͂���t�@�C�������w��
set resultname=Cementite-result

echo %inpname% >> %param1%%resultname%.txt

rem ���ʃt�@�C����1�s�ڂɁA�e���ڂ̌��o�����������ށi������₷�����邽�߁j
echo FileName	Austenite(wt%%)	Austenite_error	Cementite(wt%%)	Cementite_error	Martensite(wt%%)	Martensite_error>> %param1%%resultname%.txt

rem .raw�t�@�C���������ԂɎ擾���A���ꂼ���͂����s
echo -----------------------�t�@�C����
for %%A in (*.raw) do (
	set filename=%%~nA
	echo !filename!
	c:\topas6\tc %param1%%inpname% "macro FileName {"!filename!"}"
	rem ���s����
	echo; >> %param1%%resultname%.txt
)


echo %param1%INP\%inpname%

rem ��͎��Ɉꎞ�I�ɍ쐬���ꂽ�`.out�t�@�C�����폜����