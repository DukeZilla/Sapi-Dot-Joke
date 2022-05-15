set shell = wscript.createobject("wscript.shell")
on error resume next

dim r
randomize
r = int(rnd*5) + 1
select case r

    case 1
	shell.run "HomoAD.vbs"
	
	case 2
	shell.run "HamiltonAD.vbs"

	case 3
	shell.run "PlanetFitnessAD.vbs"

	case 4
	shell.run "TacoBellAD.vbs"
	
	case 5
	shell.run "BlockingAdsAd.vbs"
	
end select
wscript.quit