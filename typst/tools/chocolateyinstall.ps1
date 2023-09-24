﻿$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = 'typst'
    fileFullPath64 = "$toolsDir\typst-x86_64-pc-windows-msvc.zip"
    destination    = $toolsDir
}
Get-ChocolateyUnzip @packageArgs

# Don't need zip file anymore
Remove-Item $toolsDir\*.zip -ea 0 -force
