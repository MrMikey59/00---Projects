@ECHO OFF
REM This removes the System Update files that are no longer necessary.
Dism.exe /online /Cleanup-Image /AnalyzeComponentStore
ECHO Run: "Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase" if recommended.
ECHO Run: "Dism.exe /online /Cleanup-Image /SPSuperseded" if SP reduction is required.
Pause 
