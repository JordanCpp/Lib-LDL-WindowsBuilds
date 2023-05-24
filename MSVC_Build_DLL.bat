
RD /s/q %2

MD %2

call %1

CL /O2 /FeLDL.dll -LD -GX /Idependencies\LDL\include /DLDL_SHARED_LIBRARY /DLDL_RENDER_OPENGL1  ^
dependencies\LDL\source\Allocators\*.cpp ^
dependencies\LDL\source\Core\*.cpp ^
dependencies\LDL\source\Events\*.cpp ^
dependencies\LDL\source\Time\*.cpp ^
dependencies\LDL\source\Platforms\Windows\Graphics\*.cpp ^
dependencies\LDL\source\Platforms\Windows\Graphics\OpenGL\*.cpp ^
dependencies\LDL\source\Platforms\Windows\Graphics\OpenGL1\*.cpp ^
dependencies\LDL\source\Platforms\Windows\Time\Ticks.cpp ^
dependencies\LDL\source\Platforms\Windows\Core\*.cpp ^
dependencies\LDL\source\Graphics\*.cpp ^
dependencies\LDL\source\Graphics\Base\*.cpp ^
dependencies\LDL\source\Graphics\Software\Surface.cpp ^
dependencies\LDL\source\Graphics\OpenGL\*.cpp ^
dependencies\LDL\source\Graphics\OpenGL1\*.cpp ^
dependencies\LDL\source\Graphics\Primitives\*.cpp ^
dependencies\LDL\source\Graphics\Utils\*.cpp ^
dependencies\LDL\source\Loaders\*.cpp  ^
dependencies\LDL\source\Platforms\Windows\Input\*.cpp  ^
dependencies\LDL\source\OpenGL\*.cpp  ^
dependencies\LDL\source\LDLC\*.cpp  ^
gdi32.lib ^
opengl32.lib ^
winmm.lib   ^
user32.lib

copy LDL.dll %2\
copy LDL.lib %2\
copy LDL.exp %2\

del *.obj *.dll *.lib *.exp

xcopy dependencies\LDL\include %2\include\ /s /e /d
