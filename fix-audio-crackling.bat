echo off

powershell -Command "$Process = Get-Process audiodg; $Process.ProcessorAffinity=1"