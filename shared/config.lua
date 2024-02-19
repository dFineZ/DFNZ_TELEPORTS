Config = {}

-- set this to true when you set new teleports, so you can see the target space 
Config.Debug = false

-- if you set this to true it will only work if you use my webhook script or you use your own function buy you need to enter it by yourself
Config.EnableWebhook = true
Config.WebhookURL = ''

-- sets the icon Color for all target options
Config.IconColor = '#ff6000'

-- How to create a new Teleport:
-- Get your enter Coords and put it in the enter vec3 
-- Then take your heading and put it in the rotation
-- size is how big the target space is (mine should work for the most doors)
-- label is the text that stands in the target and progbar
-- if you want to use a pin to enter then you need to set needPin = true and enter your pin
-- if you want to use a job then you neew to set needJob = true and enter the job

Config.Teleports = {
    -- Weed Lab
    {enter = vec3(-758.9729, -209.4896, 37.2712), rotation = 297.5624, size = vec3(1.5, 1.0, 2.5), exit = vec3(1066.3608, -3183.3491, -40.1637), label = 'Enter Weedfarm', needPin = true, pin = '97420', needJob = false, job = nil },
    {enter = vec3(1066.3608, -3183.3491, -39.1637), rotation = 266.4222, size = vec3(1.5, 1.0, 2.5), exit = vec3(-758.9729, -209.4896, 36.2712), label = 'Leave Weedfarm', needPin = false, pin = nil, needJob = false, job = nil },
    -- Coke Lab 
    {enter = vec3(1980.4160, 3049.8054, 50.4318), rotation = 318.8588, size = vec3(1.5, 1.0, 2.5), exit = vec3(1088.7531, -3187.5186, -39.9935), label = 'Enter Cokelab', needPin = true, pin = '22563', needJob = false, job = nil },
    {enter = vec3(1088.7531, -3187.5186, -38.9935), rotation = 347.5127, size = vec3(1.5, 1.0, 2.5), exit = vec3(1980.4160, 3049.8054, 49.4318), label = 'Leave Cokelab', needPin = false, pin = nil, needJob = false, job = nil },
    -- Meth Lab
    {enter = vec3(-321.3618, 6302.5835, 36.6851), rotation = 129.0045, size = vec3(1.5, 1.0, 2.5), exit = vec3(996.8275, -3200.6877, -37.3938), label = 'Enter Methlab', needPin = true, pin = '64625', needJob = false, job = nil },
    {enter = vec3(996.8275, -3200.6877, -36.3938), rotation = 82.6162, size = vec3(1.5, 1.0, 2.5), exit = vec3(-321.3618, 6302.5835, 35.6851), label = 'Leave Methlab', needPin = false, pin = nil, needJob = false, job = nil },
    -- Moneywash
    {enter = vec3(206.5617, -1851.4781, 27.4812), rotation = 323.7055, size = vec3(1.5, 1.0, 2.5), exit = vec3(1138.1024, -3199.1726, -40.6657), label = 'Enter Moneywash', needPin = true, pin = '57732', needJob = false, job = nil },
    {enter = vec3(1138.1024, -3199.1726, -39.6657), rotation = 176.8764, size = vec3(1.5, 1.0, 2.5), exit = vec3(206.5617, -1851.4781, 26.4812), label = 'Leave Moneywash', needPin = false, pin = nil, needJob = false, job = nil },
}