Citizen.CreateThread(function()
	local pos = {-74.61, -818.97, 326.18} -- Maze Bank
	
	local delay = 800

    local asset1 = "proj_indep_firework"
    RequestNamedPtfxAsset(asset1)
    while not HasNamedPtfxAssetLoaded(asset1) do
        Citizen.Wait(1)
    end
    local asset2 = "proj_indep_firework_v2"
    RequestNamedPtfxAsset(asset2)
	while not HasNamedPtfxAssetLoaded(asset2) do
        Citizen.Wait(1)
    end
	local asset3 = "scr_indep_fireworks"
    RequestNamedPtfxAsset(asset3)
	while not HasNamedPtfxAssetLoaded(asset3) do
        Citizen.Wait(1)
    end

    while true do

        Citizen.Wait(delay)
        UseParticleFxAssetNextCall(asset1)
        local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_air_burst", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(100, 150), 0.0, 0.0, 0.0, 2.0, false, false, false, false)

		Citizen.Wait(delay)
		UseParticleFxAssetNextCall(asset2)
        local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_spiral_burst_rwb", pos[1] + math.random(-200, 200), pos[2] + math.random(-200, 200), pos[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)

		Citizen.Wait(delay)
		UseParticleFxAssetNextCall(asset2)
        local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_repeat_burst_rwb", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)

		Citizen.Wait(delay)
		UseParticleFxAssetNextCall(asset3)
        local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(50, 100), 0.0, 0.0, 0.0, 5.0, false, false, false, false)

		Citizen.Wait(delay)
		UseParticleFxAssetNextCall(asset3)
        local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_shotburst", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)

		Citizen.Wait(delay)
		UseParticleFxAssetNextCall(asset3)
        local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", pos[1], pos[2], pos[3], 0.0, 0.0, 0.0, 5.0, false, false, false, false)
	end
end)
