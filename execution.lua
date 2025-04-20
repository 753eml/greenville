local sessionvehicles = workspace:FindFirstChild("SessionVehicles")
local car = sessionvehicles:FindFirstChild("LoLV2CarContent-Car") -- replace with your username, keep -Car in place
if not car then
    warn("Not found!")
    return
end

local tuning = require(car:FindFirstChild("A-Chassis Tune"))

-- (self-explanitory)
tuning.AutoUpdate = true
tuning.IdleRPM = 3500
tuning.Redline = 13500
tuning.PeakRPM = 13500
tuning.Torque = 2300
tuning.Horsepower = 2750
tuning.Config = "AWD" -- drivetrain
tuning.TransModes = {"Auto", "Semi"} -- seperate with "," to place multiple
tuning.Ratios = {4, 0, 1.1, 0.6}

tuning.Turbochargers = 15
-- tuning.Superchargers = 3
-- Electric stuff
-- tuning.E_Horsepower = 2900
-- tuning.E_Torque = 3500
-- tuning.E_Redline = 20000

local ECU = "If You see this, the car You chose was sped up (client-sided)."
print(ECU)
