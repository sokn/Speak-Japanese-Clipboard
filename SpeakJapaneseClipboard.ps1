# Load assembly for clipboard access
Add-Type -AssemblyName PresentationCore

# Get text from clipboard
$text = [Windows.Clipboard]::GetText()

# Proceed only if there's text in the clipboard
if ($text -and $text.Trim() -ne '') {
    # Create SAPI voice object
    $s = New-Object -ComObject SAPI.SpVoice
    
    # Select Japanese voice (Language ID 411 for Japanese)
    $ja = ($s.GetVoices("Language=411","") | Select-Object -First 1)
    if ($ja) { $s.Voice = $ja }
    
    # Set volume and rate
    $s.Volume = 100
    $s.Rate = 0
    
    # Speak the text
    $s.Speak($text)
}