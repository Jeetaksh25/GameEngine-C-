@echo off

:: Set up the Visual Studio build environment
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

:: Define paths to source files
set render=D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\engine\render\render.c D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\engine\render\render_init.c D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\engine\render\render_util.c
set io=D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\engine\io\io.c
set files=D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\glad.c D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\main.c D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\engine\global.c %render% %io%

:: Define paths to libraries
set libs=D:\College\SEM-2\CSE101\Programs\Game1\lib\SDL2main.lib D:\College\SEM-2\CSE101\Programs\Game1\lib\SDL2.lib D:\College\SEM-2\CSE101\Programs\Game1\lib\freetype.lib

:: Compile all source files into object files
CL /Zi /MD /DWIN32 /D_WINDOWS /I D:\College\SEM-2\CSE101\Programs\Game1\include /I D:\College\SEM-2\CSE101\Programs\Game1\include\SDL2 /I D:\College\SEM-2\CSE101\Programs\Game1\engine-from-scratch\src\engine %files% /c

:: Link the object files to create the executable
link *.obj %libs% /SUBSYSTEM:CONSOLE /MACHINE:X64 /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\lib\10.0.19041.0\um\x64" /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\lib\10.0.19041.0\ucrt\x64" /LIBPATH:"C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.29.30133\lib\x64" /OUT:mygame.exe
