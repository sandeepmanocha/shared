# Author:  Bryan Cafferky      Date:  2013-11-29
# 
# Purpose:  Speaks the input...
#
#

function Invoke-udfSpeech([string] $speakit)
{ 
#  Fun using SAPI - the text to speech thing....    

   $speaker = New-Object -com SAPI.SpVoice

   $speaker.Speak($speakit, 1 ) | out-null

}

# Example Call:

Invoke-udfSpeech "Bryan is great?" 
