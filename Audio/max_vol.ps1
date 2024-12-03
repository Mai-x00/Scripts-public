$obj = new-object -com wscript.shell
while ($true) {
    Start-Sleep -Milliseconds 1     # Just so your PC is still usable >;)
    $obj.SendKeys([char]175)
}
