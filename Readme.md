# Environment issue

Start command prompt (cmd.exe) then run BuildEnvTest.bat.
16.4.6 works.
16.5.0 + 16.5.1 produces the error log below.

The Doc/BuildEnv_16.4.6.txt contains a stripped version of the generated BuildEnv.txt with 16.4.6
The Doc/BuildEnv_16.5.1.txt contains a stripped version of the generated BuildEnv.txt with 16.5.1

Notice that the 16.4.6 environment dump contains the expected values that the visual studio build was launched with
- path contains "c:\Work\EnvTest\Custom" (the path location where the EnvTest project was located as set by BuildEnvTest.bat)
- the environment variable "MY_CUSTOM_ENVVARIABLE=hello world" is set.

The 16.5.1 is missing these important environment changes which was carefully set by the build batch script.


## 16.5.1 ERROR log

```bash
**********************************************************************
** Visual Studio 2019 Developer Command Prompt v16.5.1
** Copyright (c) 2019 Microsoft Corporation
**********************************************************************
[vcvarsall.bat] Environment initialized for: 'x64'
-- Selecting Windows SDK version 10.0.18362.0 to target Windows 10.0.18363.
-- The CXX compiler identification is MSVC 19.25.28611.0
-- Check for working CXX compiler: C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.25.28610/bin/Hostx64/x64/cl.exe
-- Check for working CXX compiler: C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.25.28610/bin/Hostx64/x64/cl.exe - works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: C:/Work/EnvTest/build
Microsoft (R) Build Engine version 16.5.0+d4cbfca49 for .NET Framework
Copyright (C) Microsoft Corporation. All rights reserved.

  Checking Build System
  Dumping environment
  Generating file
  'TestCommand.bat' is not recognized as an internal or external command,
  operable program or batch file.
C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\MSBuild\Microsoft\VC\v160\Microsoft.CppCommon.targets(
231,5): error MSB6006: "cmd.exe" exited with code 1. [C:\Work\EnvTest\build\EnvTest.vcxproj]
```