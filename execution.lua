local plr = game:GetService("Players").LocalPlayer
local targetName = "" -- blank quotes ("") defaults to your car, must be a username if you want to change who's car you want to tune (!ONLY WORKS FOR YOU/CLIENT-SIDED!)  
if targetName == "" then targetName = plr.Name end
local car = workspace.SessionVehicles:FindFirstChild(targetName .. "-Car")
if not car then
    warn("Car not spawned or wrong game!")
    return
end
-- modify what you want to change, that you find from dump, i provided what i change/think is most important
local tuning = require(car:FindFirstChild("A-Chassis Tune"))
tuning.AutoUpdate = true
tuning.IdleRPM = 3500
tuning.PeakRPM = 13500 -- unsure if needed when setting electric redline, keep it just incase
tuning.Config = "AWD" -- RWD, AWD or FWD configurations
tuning.TransModes = {"Auto", "Semi"} -- Transmission (seperate using commas (,) values: Auto, Semi, Manual)
tuning.Ratios = {4, 0, 1.1, 0.6} -- high values have low top speed, but fast acceleration, while low values have high speed, slower acceleration and, sometimes, high instability
if not tuning.Electric then
    tuning.Torque = 2300
    tuning.Horsepower = 2750
    tuning.Redline = 13500
    tuning.Turbochargers = 15 -- comment using "--" before "tuning." if you dont have turbos, keep uncommented/remove "--" if you have turbo(s) and want to change it
    -- tuning.Superchargers = 3 -- keep value under 5, sounds weird above, supercharged cars have highly sensitive gear ratios, uncomment before "tuning." if you have supercharger(s) and want change, if not, keep "--"
end

if tuning.Electric then
    local electricStats = {
        E_Horsepower = 2900,
        E_Torque = 3500,
        E_Redline = 20000
    }

    for stat, value in pairs(electricStats) do
        tuning[stat] = value
    end
end
print("\nConfigured and developed by 753eml,\na.k.a. @exuberant_piglet_52746.\nHold on tight to your steering wheel!")
