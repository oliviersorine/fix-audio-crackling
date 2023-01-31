# Fix audio crackling in discord

## Description
If you or you're friend experience audio crackling in discord when you talk, the cause can be the process "audiodg.exe".

I personnally experience audio crackling in discord using voicemeeter for sound routing and during heavy gaming, using this script solves the problem.

## Code explication
> echo off

Use to make the script quiet, no message will be print to a user

> powershell -Command "$Process = Get-Process audiodg; $Process.ProcessorAffinity=1"

> powershell

The windows scripting language

> -Command

Precises to powershell we when to execute the following command

> $Process = Get-Process audiodg;

Find the process named audiodg and assign to the variable Process

> $Process.ProcessorAffinity=1

Change de CPU (Central Processing Unit) affinity, in this case, I want the process to be processed only on 1 CPU core, the first one.

The value of ProcessorAffinity is a bitmask where each bit correspond to a CPU core (logical core). So if you want to assign the process to another core use one of the value below.

|Core|Bitmask|
|---|---|
|1|1|
|2|2|
|3|4|
|4|8|
|5|16|
|6|32|
|7|64|
|8|128|
|9|256|
|10|512|
|11|1024|
|12|2048|
|13|4096|
|14|8192|
|15|16834|
|16|32768|