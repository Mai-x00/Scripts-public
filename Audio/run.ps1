Add-Type -AssemblyName presentationCore
$filepath = "$(Get-Location)\sound.wav"

$wmplayer = New-Object System.Windows.Media.MediaPlayer
$wmplayer.Open($filepath)

while (!$wmplayer.NaturalDuration.HasTimeSpan) {
    Start-Sleep(0.1)
}
$duration = $wmplayer.NaturalDuration.TimeSpan.Seconds

$max_vol = {
    $obj = new-object -com wscript.shell
    while ($true) {
        Start-Sleep -Milliseconds 1     # Just so your PC is still usable ;)
        $obj.SendKeys([char]175)
    }
}
# Start Max Volume
#Start-Job -ScriptBlock $max_vol
Start-Process powershell.exe -WindowStyle Hidden $max_vol

$wmplayer.Play()

while ($true) {
    Start-Sleep ($duration + 0.2)
    $wmplayer.Stop()
    $wmplayer.Play()
}