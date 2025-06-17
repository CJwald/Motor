-- premake5.lua
workspace "Motor"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Motor-App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Motor"
	include "Motor/Build-Motor.lua"
group ""

include "Motor-App/Build-Motor-App.lua"