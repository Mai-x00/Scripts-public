Add-Type -AssemblyName presentationCore
$filepath = "$(Get-Location)\sound.wav"

$wmplayer = New-Object System.Windows.Media.MediaPlayer
$wmplayer.Open($filepath)

while (!$wmplayer.NaturalDuration.HasTimeSpan) {
    Start-Sleep(0.1)
}
$duration = $wmplayer.NaturalDuration.TimeSpan.Seconds

$wmplayer.Play()

while ($true) {
    Start-Sleep ($duration + 0.2)
    $wmplayer.Stop()
    $wmplayer.Play()
}
