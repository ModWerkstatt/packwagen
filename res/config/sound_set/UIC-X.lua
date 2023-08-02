local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/m_wagen/gw_roll_a.wav", 25.0,
		{
			{ 0.0 , 0.0 },
			{ 0.2 , 0.3 },
			{ 1.0 , 0.8 }  
		},
		{   
			{ 0.0, 0.4 },
			{ 1.0, 1.5 } 
		},
		"speed01")

soundsetutil.addTrackSqueal(data, "vehicle/m_wagen/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/m_wagen/ic_bremse.wav", 25.0, .5)

soundsetutil.addEvent(data, "openDoors", { "vehicle/m_wagen/tuer_auf.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "vehicle/m_wagen/tuer_zu.wav" }, 5.0)

return data

end
