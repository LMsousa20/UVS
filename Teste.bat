@echo off

bitsadmin.exe /transfer "installGerente" /download /priority foreground  https://github.com/LMsousa20/UVS/blob/main/Monitor_MFe.exe "C:\ACS\gerente.exe"

pause