------------------
-- CONFIG START --
------------------

-- Messages
startText = "Press ~g~E ~w~to start a ~g~Trash Route ~w~from ~g~Trash Services"
startTextSpecial = "Press ~g~E ~w~to start an ~g~Express Route ~w~from ~g~%s~w~"
pickupText = "Press ~g~E ~w~to pick up ~g~trash"
invalidVehicleText = "You need a ~g~a trash truck ~w~to do this"
tooLowTierText = "Express routes are reserved for ~g~Coaches ~w~only"
engineRunningText = "Fully ~r~STOP ~w~before picking up trash"
trash = 0
onscreen = false
payout = math.random(2,4)
xOutOfY = "~w~[~y~%i~w~/~y~%i~w~]"

vehicleFullMessage = "Your vehicle is ~r~FULL~w~"
continueMessage = "Continue the route " .. xOutOfY

startRouteMessage = "Complete the ~g~trash ~w~route"
jobDoneMessage = "Finished ~g~%s ~w~route"

-- Methods
engineNeedsToBeOff = true

-- Map Blips
job_blips = {
    {name = "Trash Service", x = -324.989288, y = -1522.159790},
}

-- Blip Settings
job_blip_settings = {
    start_blip = {id = 318, color = 22},
    destination_blip = {id = 365, color = 50},
    marker = {r = 0, g = 150, b = 255, a = 200},
    marker_special = {r = 255, g = 255, b = 0, a = 200},
}

-- Locations
trashboi = {
    {
        { name = "",x = -242.34, y = -1476.29, z=31.23}, { name = "",x = -240.99, y = -1474.13, z=31.2}, { name = "",x = -221.9, y = -1560.39, z =33.72},
        { name = "",x = -239.87, y = -1472.36, z=31.2}, { name = "",x = -191.33, y = -1377.01, z =30.97}, { name = "",x = -210.01, y = -1546.99, z =33.68},
        { name = "",x = -188.43, y = -1375.56, z =30.98}, { name = "",x = -185.93, y = -1374.3, z =30.98}, { name = "",x = -195.7, y = -1531.01, z =33.41},
        { name = "",x = -236.56, y = -1578.86, z =33.44}, { name = "",x = -108.36, y = -1603.81, z =31.48}, { name = "",x = -21.76, y = -1532.15, z =29.78},
        { name = "",x = -237.5, y = -1586.38, z =33.58}, { name = "",x = -10.38, y = -1540.25, z =29.18}, { name = "",x = -91.31, y = -1469.09, z =32.7},
        { name = "",x = -238.5, y = -1608.51, z =33.46}, { name = "",x = -47.58, y = -1510.63, z =30.8}, { name = "",x = -112.41, y = -1452.14, z =33.15},
        { name = "",x = -237.75, y = -1683.83, z =33.33}, { name = "",x = -163.79, y = -1664.05, z =32.81}, { name = "",x = -137.95, y = -1630.51, z =32.23},
        { name = "",x = -139.67, y = -1451.16, z =33.18}, { name = "",x = -169.72, y = -1410.86, z =30.63}, { name = "",x = -152.63, y = -1411.75, z =30.47},
        { name = "",x = -85.78, y = -1376.07, z =29.01}, { name = "",x = -86.5, y = -1434.01, z =30.78}, { name = "",x = -78.61, y = -1421.8, z =29.12},
        { name = "",x = -54.58, y = -1418.08, z =29.04}, { name = "",x = -30.79, y = -1418.55, z =29.03}, { name = "",x = -293.17, y = -1357.3, z =31.02},
        { name = "",x = -338.96, y = -1321.62, z =30.98}, { name = "",x = -327.81, y = -1357.73, z =31.01}, { name = "",x = -235.92, y = -1302.43, z =31.02},
        { name = "",x = -168.78, y = -1297.39, z =30.81}, { name = "",x = -178.96, y = -1286.84, z =31.02}, { name = "",x = -178.96, y = -1291.27, z =31.01},
        { name = "",x = -150.44, y = -1296.8, z =30.81}, { name = "",x = -90.8, y = -1299.03, z =28.94}, { name = "",x = -89.27, y = -1326.98, z =29.03},
        { name = "",x = -83.05, y = -1316.21, z =28.93}, { name = "",x = -70.82, y = -1315.51, z =28.87}, { name = "",x = -50.16, y = -1317.87, z =28.78},
        { name = "",x = -41.92, y = -1300.33, z =28.78}, { name = "",x = -42.13, y = -1286.67, z =28.84}, { name = "",x = -228.82, y = -1635.72, z =33.33},
        { name = "",x = 3.29, y = -1616.17, z =29.0}, { name = "",x = 94.87, y = -1527.05, z =28.98}, { name = "",x = 142.53, y = -1577.96, z =28.96},
        { name = "",x = 99.0, y = -1653.14, z =28.9}, { name = "",x = 95.92, y = -1691.69, z =28.79}, { name = "",x = 136.23, y = -1725.85, z =28.8},
        { name = "",x = 193.89, y = -1774.16, z =28.8}, { name = "",x = 252.34, y = -1822.75, z =26.43}, { name = "",x = 224.5, y = -1835.23, z =26.57},
        { name = "",x = 214.41, y = -1826.27, z =27.12}, { name = "",x = 195.59, y = -1810.0, z =28.2}, { name = "",x = 195.72, y = -1756.03, z =28.66},
        { name = "",x = 265.5, y = -1676.93, z =28.97}, { name = "",x = 429.83, y = -1547.79, z =28.86}, { name = "",x = 428.6, y = -1521.58, z =29.01},
        { name = "",x = 433.8, y = -1458.17, z =28.97}, { name = "",x = 380.64, y = -1272.23, z =32.11}, { name = "",x = 367.12, y = -1287.58, z =31.97},
        { name = "",x = 305.27, y = -1294.96, z =30.55}, { name = "",x = 192.83, y = -1320.5, z =28.93}, { name = "",x = 198.18, y = -1306.68, z =28.93},
        { name = "",x = -245.81, y = -1346.85, z =30.91}, { name = "",x = 51.83, y = -1399.49, z =29.11}, { name = "",x = 51.05, y = -1385.52, z =29.05},
        { name = "",x = -239.7, y = -1346.77, z =30.82}, { name = "",x = -138.27, y = -1361.23, z =29.02}, { name = "",x = -127.29, y = -1339.33, z =29.33},
        { name = "",x = -150.55, y = -1347.0, z =29.53}, { name = "",x = -15.05, y = -1388.81, z =29.09}, { name = "",x = 12.29, y = -1413.26, z =29.05},
        { name = "",x = 77.58, y = -1295.35, z =28.93}, { name = "",x = 85.86, y = -1308.71, z =28.91}, { name = "",x = 95.49, y = -1279.07, z =28.83},
        { name = "",x = 142.38, y = -1262.14, z =29.0}, { name = "",x = 147.52, y = -1287.19, z =28.92}, { name = "",x = 162.08, y = -1292.2, z =28.99},
        { name = "",x = 154.4, y = -1306.64, z =28.91}, { name = "",x = 137.74, y = -1311.01, z =28.78}, { name = "",x = 106.56, y = -1319.23, z =28.95},
        { name = "",x = 120.86, y = -1324.65, z =29.08}, { name = "",x = 135.46, y = -1368.12, z =28.91}, { name = "",x = 100.05, y = -1438.38, z =28.88},
        { name = "",x = 81.27, y = -1463.21, z =28.94}, { name = "",x = 43.29, y = -1483.72, z =28.93}, { name = "",x = 9.03, y = -1458.71, z =30.16},
        { name = "",x = -8.42, y = -1472.78, z =30.27}, { name = "",x = -34.8, y = -1468.93, z =31.02}, { name = "",x = -0.97, y = -1476.68, z =30.14},
        { name = "",x = -11.01, y = -1489.94, z =29.85}, { name = "",x = -36.77, y = -1497.4, z =30.64}, { name = "",x = -51.18, y = -1478.37, z =31.67},
        { name = "",x = -53.77, y = -1661.4, z =28.89}, { name = "",x = -34.03, y = -1699.18, z =28.92}, { name = "",x = -45.02, y = -1802.24, z =26.67},
        { name = "",x = 29.44, y = -1867.78, z =22.74}, { name = "",x = 39.78, y = -1880.38, z =22.03}, { name = "",x = 61.25, y = -1909.01, z =21.23},
        { name = "",x = 79.86, y = -1924.04, z =20.51}, { name = "",x = 97.27, y = -1946.69, z =20.41}, { name = "",x = 115.37, y = -1940.81, z =20.37},
        { name = "",x = 100.07, y = -1927.83, z =20.38}, { name = "",x = 84.62, y = -1918.0, z =20.5}, { name = "",x = 80.37, y = -1886.97, z =22.28},
        { name = "",x = 134.25, y = -1881.59, z =23.28}, { name = "",x = 191.27, y = -1910.12, z =22.79}, { name = "",x = 157.09, y = -1975.18, z =18.07},
        { name = "",x = 337.38, y = -1963.42, z =24.08}, { name = "",x = 304.08, y = -1999.62, z =20.48}, { name = "",x = 303.67, y = -2017.32, z =19.89},
        { name = "",x = 310.49, y = -2015.73, z =20.04}, { name = "",x = 336.75, y = -2037.19, z =20.98}, { name = "",x = 473.4, y = -1939.97, z =24.62},
        { name = "",x = 265.36, y = -2057.76, z =17.13}, { name = "",x = 284.42, y = -2093.98, z =16.45}, { name = "",x = 478.46, y = -1961.61, z =24.32},
        { name = "",x = 415.96, y = -2010.85, z =22.66}, { name = "",x = 451.36, y = -1908.41, z =24.54}, { name = "",x = 511.09, y = -1988.38, z =24.61},
        { name = "",x = 593.4, y = -1881.36, z =24.83}, { name = "",x = 214.13, y = -2013.05, z =18.54}, { name = "",x = 257.21, y = -1972.93, z =21.74},
        { name = "",x = 285.84, y = -1941.54, z =24.4}, { name = "",x = 300.4, y = -1926.74, z =25.23}, { name = "",x = 339.76, y = -1882.65, z =25.67},
        { name = "",x = 370.66, y = -1846.88, z =27.57}, { name = "",x = 387.23, y = -1834.36, z =27.78}, { name = "",x = 402.68, y = -1819.31, z =28.25},
        { name = "",x = 357.57, y = -1808.4, z =28.67}, { name = "",x = 392.34, y = -1746.14, z =28.9}, { name = "",x = 432.0, y = -1698.59, z =28.9},
        { name = "",x = 530.9, y = -1507.05, z =28.98}, { name = "",x = 379.8, y = -1112.33, z =29.14}, { name = "",x = 17.0, y = -1125.93, z =28.57},
        { name = "",x = -32.86, y = -1128.97, z =26.15}, { name = "",x = -66.91, y = -1130.53, z =25.43}, { name = "",x = -70.46, y = -1087.09, z =26.34},
        { name = "",x = -31.24, y = -1017.95, z =28.63}, { name = "",x = -14.01, y = -1024.5, z =28.67}, { name = "",x = 5.16, y = -1031.67, z =28.85},
        { name = "",x = 46.91, y = -1046.24, z =29.34}, { name = "",x = 114.37, y = -1051.56, z =28.92}, { name = "",x = 125.81, y = -1055.89, z =28.9},
        { name = "",x = 151.02, y = -1067.04, z =28.9}, { name = "",x = 166.89, y = -1073.82, z =28.91}, { name = "",x = 124.06, y = -1083.16, z =28.9},
        { name = "",x = 173.26, y = -1035.92, z =28.94},  { name = "",x = 305.39, y = -1037.66, z =28.86},  { name = "",x = 252.87, y = -986.29, z =28.95},
        { name = "",x = 313.35, y = -948.9, z =29.04}, { name = "",x = 339.07, y = -956.46, z =29.1}, { name = "",x = 492.73, y = -998.79, z =27.5},
        {name = "",x = 399.73, y = -913.01, z =29.0}, { name = "",x = 377.53, y = -843.38, z =28.96}, { name = "",x = 367.51, y = -833.46, z =29.11},
{ name = "",x = 397.46, y = -740.72, z =28.99}, { name = "",x = 399.43, y = -722.43, z =28.93}, { name = "",x = 424.8, y = -680.74, z =28.93},
{ name = "",x = 502.76, y = -724.98, z =24.52}, { name = "",x = 485.27, y = -1282.37, z =29.23}, { name = "",x = 860.36, y = -1566.36, z =30.02},
{ name = "",x = 869.47, y = -1573.01, z =30.34}, { name = "",x = 896.56, y = -1572.4, z =30.58}, { name = "",x = 933.97, y = -1573.3, z =30.15},
{ name = "",x = 817.7, y = -1629.58, z =30.82}, { name = "",x = 766.69, y = -1628.39, z =30.44}, { name = "",x = 719.71, y = -2022.56, z =29.01},
{ name = "",x = 725.94, y = -2086.56, z =29.07}, { name = "",x = 724.24, y = -2095.39, z =28.99}, { name = "",x = 153.75, y = -2476.27, z =5.69},
{ name = "",x = -406.52, y = -2817.35, z =5.71}, { name = "",x = -355.26, y = -2766.56, z =5.75}, { name = "",x = -338.74, y = -2780.48, z =4.72},
{ name = "",x = -378.25, y = -2733.37, z =5.75}, { name = "",x = -286.33, y = -2613.54, z =5.72}, { name = "",x = -140.16, y = -2641.66, z =5.73},
{ name = "",x = 510.5, y = -1702.76, z =28.89},  { name = "",x = 504.09, y = -1717.84, z =28.96},  { name = "",x = 494.36, y = -1744.84, z =28.39},
{ name = "",x = 488.16, y = -1767.31, z =28.18}, { name = "",x = 779.26, y = -1257.11, z =26.19}, { name = "",x = 727.19, y = -1256.29, z =25.99},
{ name = "",x = 781.59, y = -1091.13, z =28.32}, { name = "",x = 777.18, y = -1055.36, z =26.82}, { name = "",x = 792.54, y = -982.55, z =25.9},
{ name = "",x = 744.43, y = -979.3, z =24.44}, { name = "",x = 750.82, y = -984.78, z =24.8}, { name = "",x = 741.04, y = -986.38, z =24.38},
{ name = "",x = 726.35, y = -988.2, z =23.84}, { name = "",x = 698.82, y = -982.31, z =23.78}, { name = "",x = 785.88, y = -908.23, z =24.9},
{ name = "",x = 759.62, y = -881.39, z =24.77}, { name = "",x = 785.63, y = -803.75, z =25.97}, { name = "",x = 765.2, y = -736.17, z =27.26},
{ name = "",x = 764.7, y = -685.66, z =28.39}, {name = "",x = 410.24, y = -795.75, z =28.93}, {name = "",x = -1067.55, y = -1025.37, z =1.75},
{name = "",x = -1095.82, y = -1049.11, z =1.85}, {name = "",x = -1118.37, y = -1062.82, z =1.82}, {name = "",x = -1118.37, y = -1062.82, z =1.82},
{name = "",x = -1157.08, y = -1084.45, z =2.02}, {name = "",x = -1171.68, y = -1092.97, z =1.83}, {name = "",x = -1176.09, y = -1109.32, z =2.55},
{name = "",x = -1157.13, y = -1144.81, z =2.37}, {name = "",x = -1148.28, y = -1160.44, z =2.39}, {name = "",x = -1140.82, y = -1173.43, z =2.25},
{name = "",x = -1131.67, y = -1205.15, z =1.99}, {name = "",x = -1114.33, y = -1234.71, z =2.21}, {name = "",x = -1129.91, y = -1189.94, z =1.86},
{name = "",x = -1106.78, y = -1178.64, z =1.83}, {name = "",x = -1079.75, y = -1163.88, z =1.83}, {name = "",x = -1055.02, y = -1149.1, z =1.82},
{name = "",x = -1021.99, y = -1129.44, z =1.83}, {name = "",x = -997.59, y = -1115.8, z =1.82}, {name = "",x = -983.35, y = -1107.31, z =1.75},
{name = "",x = -971.73, y = -1100.71, z =1.84}, {name = "",x = -942.34, y = -1082.54, z =1.78}, {name = "",x = -928.48, y = -1074.71, z =1.83},
{name = "",x = -1014.4, y = -1001.98, z =1.81}, {name = "",x = -995.77, y = -991.07, z =1.77}, {name = "",x = -1193.62, y = -1075.6, z =1.87},
{name = "",x = -1197.1, y = -1066.63, z =1.85}, {name = "",x = -1202.37, y = -1051.22, z =1.86}, {name = "",x = -1239.68, y = -1034.1, z =8.12},
{name = "",x = -1216.84, y = -1036.15, z =8.01}, {name = "",x = -1214.24, y = -1052.08, z =8.05}, {name = "",x = -1203.31, y = -1077.54, z =8.0},
{name = "",x = -1257.51, y = -1170.66, z =6.56}, {name = "",x = -1258.27, y = -1281.32, z =3.65}, {name = "",x = -1238.51, y = -1358.52, z =3.65},
{name = "",x = -1196.67, y = -1370.02, z =4.2}, {name = "",x = -1145.3, y = -1377.74, z =4.71}, {name = "",x = -1204.12, y = -1482.99, z =4.09},
{name = "",x = -1054.94, y = -1605.45, z =4.14}, {name = "",x = -1043.21, y = -1596.18, z =4.41}, {name = "",x = -1027.31, y = -1586.13, z =4.9},
{name = "",x = -1031.77, y = -1563.22, z =4.84}, {name = "",x = -1081.38, y = -1492.91, z =4.83}, {name = "",x = -1093.92, y = -1501.34, z =4.54},
{name = "",x = -1054.6, y = -1569.03, z =4.44}, {name = "",x = -944.91, y = -1544.6, z =4.73}, {name = "",x = -1008.78, y = -1458.37, z =4.75},
{name = "",x = -1125.15, y = -1414.72, z =4.83},
    },
}

-- Job Start markers
job_starts = {
    {name = " Trash Route", x = -324.989288, y = -1522.159790, z = 26.264914, h = 177.721664, tier = 1, routes = trashboi},
}

-- Vehicles plus tiers
job_vehicles = {
    {name = "TRASH", tier = 1},
}

-- Localized names for peds
ped_names = {
    ["default"] = "Commuters",
    ["coach"] = "Passengers",
}

-- Payment multiplier for ped
ped_payment = {

}

-- Models peds can use (chosen randomly)
ped_models = {
    "ronin"
}
----------------
-- CONFIG END --
----------------

local debugMarkers = {}

RegisterNetEvent("gd:pos")
AddEventHandler("gd:pos", function(msg)
    local pos = GetEntityCoords(GetPlayerPed(-1))
    TriggerServerEvent("gd:pos", msg, {x = pos.x, y = pos.y, z = pos.z - 1})
    table.insert(debugMarkers, {name = "debug", x = pos.x, y = pos.y, z = pos.z - 1})
end)

RegisterNetEvent("onyx_garbagejob:startJob")
AddEventHandler("onyx_garbagejob:startJob",
    function(start, tier)
        startJob(start, tier)
    end
)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false,false)
end


RegisterNetEvent("onyx_garbagejob:stopjob")
AddEventHandler("onyx_garbagejob:stopjob", function(source)
    notify("Stopped the job for you")
        cancelJob()
        onscreen = false
end)

function drawMarker(x,y,z,s)
    local marker = job_blip_settings.marker
    if s or false then
        marker = job_blip_settings.marker_special
    end
    DrawMarker(1, x, y, z, 0,0,0,0,0,0,5.0,5.0,2.0,marker.r,marker.g,marker.b,marker.a,0,0,0,0)
end

local current_job = {}

function setNewDestination(pos)
--    if DoesBlipExist(current_job.blip) then RemoveBlip(current_job.blip) end
--    current_job.blip = AddBlipForCoord(pos.x, pos.y, pos.z)
--    setBlipName(current_job.blip, pos.name)
--    SetBlipRoute(current_job.blip, true)
end

function setBlipName(blip, name)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)
end

function getRandomLocation(tier)
    local loc = 0
    repeat
        loc = job_pickups[math.random(#job_pickups)]
    until loc.tier <= tier
    return loc
end

function generateBlipsFromRoute(route)
    for k,v in next, route do
        local blip = AddBlipForCoord(v.x, v.y, 0)
        SetBlipScale(blip, 0.75)
        SetBlipSprite(blip, job_blip_settings.destination_blip.id)
        SetBlipColour(blip, job_blip_settings.destination_blip.color)
        setBlipName(blip,v.name)
        v.blip = blip
    end
end

function table.clone(org)
  return {table.unpack(org)}
end


function startJob(start, tier)
    if isOnJob() then
        cancelJob()
    end
    current_job.previous = start
    current_job.start = start
    onscreen = true
    current_job.route = start.routes[math.random(#start.routes)]
    current_job.total_stops = #current_job.route
    generateBlipsFromRoute(current_job.route)
    current_job.cargo = payout
    if tier == 5 then
        current_job.cargo = payout
    end
    current_job.tier = tier
    current_job.fares = 0

    setNewDestination(current_job.marker)
    drawMessage(string.format(startRouteMessage))

end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if trash >= 100 then
            trash = 100
        end
        drawtxt(0.179,0.821,"~y~[~w~"..trash.."/100~y~]")
        drawtxt(0.179,0.842,"~y~On-route")
    end
end)
local colorr = 0 local colorg = 0 local colorb = 0


function drawtxt(x,y,text)
    if onscreen == true then
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0, 0.4)
    SetTextColour(colorr, colorg, colorb, 255)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x,y)
    end
end

function pickupJob(id)
    if trash <= 99 then
      local p = table.remove(current_job.route, id)
      local supply = math.random(p.supply or 3)
    local demand = math.random(p.demand or 5)
    trash = trash + math.random(2,4)
    print(supply)
    print(demand)
    RemoveBlip(p.blip)
    p.blip = nil
    if (#current_job.route > 0) then
        drawMessage(string.format(continueMessage, current_job.total_stops - #current_job.route, current_job.total_stops))
    else
        deliverJob()
    end
    else
        notify("Your garbage truck is full!")
    end
end



local durka = {
    {x = -316.795471, y = -1537.837036, z = 26.370762} -- Enter the coords of the maker here --
}

Citizen.CreateThread(function()
  for k in pairs(durka) do
  local blip = AddBlipForCoord(durka[k].x, durka[k].y, 0)
      SetBlipScale(blip, 0.75)
      SetBlipSprite(blip, 434)
      SetBlipColour(blip, 57)
      SetBlipAsShortRange(blip, true)
      setBlipName(blip, "Drop-Off Location")
    end
    while true do
        Citizen.Wait(0)
        for k in pairs(durka) do

            DrawMarker(1, durka[k].x, durka[k].y, durka[k].z, 0,0,0,0,0,0,5.0,5.0,2.0,0, 0, 255, 200, 0, 0, 0, 0)
              local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
               local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, durka[k].x, durka[k].y, durka[k].z)

            if dist <= 4 then
               drawText("Press ~g~E~w~ to drop off ~g~trash")
                if IsControlJustPressed(1,51) then
                    TriggerServerEvent("givemoneyfortrash", trash)
                    trash = 0
                end
            end
        end
    end
end)




function deliverJob()
    drawMessage(string.format(jobDoneMessage))
    cancelJob()
end

function isOnJob()
    return (next(current_job) ~= nil)
end

function cancelJob()
    -- Remove all blips
    if next(current_job.route) ~= nil then
        for k,v in next, current_job.route do
            if DoesBlipExist(v.blip) then
                RemoveBlip(v.blip)
            end
        end
    end

    -- Make peds exit vehicle and fuck off
    current_job = {}
end

function drawText(text)
    Citizen.InvokeNative(0xB87A37EEB7FAA67D,"STRING")
    AddTextComponentString(text)
    Citizen.InvokeNative(0x9D77056A530643F6, 500, true)
end

function drawMessage(text)
    Citizen.InvokeNative(0xB87A37EEB7FAA67D,"STRING")
    AddTextComponentString(text)
    Citizen.InvokeNative(0x9D77056A530643F6, 2000, false)
end

function isInValidVehicle()
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    local validVehicle = false
    for k,v in next, job_vehicles do
        if GetEntityModel(veh) == GetHashKey(v.name) then validVehicle = true break end
    end
    return validVehicle
end

function promptJob(location)
    local validVehicle = isInValidVehicle()
    local tier = location.tier
    if validVehicle then
        if getCurrentTier() >= tier then
            if tier == 3 then
                drawText(string.format(startTextSpecial, location.name))
            else
                drawText(string.format(startText, location.name))
            end
            if isEPressed() then
                TriggerServerEvent("onyx_garbagejob:tryStartJob", location, tier)
                return
            end
        else
            drawText(tooLowTierText)
        end
    else
        drawText(invalidVehicleText)
    end
end

function nearMarker(x, y, z)
    local p = GetEntityCoords(GetPlayerPed(-1))
    local zDist = math.abs(z - p.z)
    return (GetDistanceBetweenCoords(x, y, z, p.x, p.y, p.z) < 7 and zDist < 4)
end

function isEPressed()
    return IsControlJustPressed(0, 38)
end

function getCurrentTier()
    local tier = 0
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
    if veh then
        for k,v in next, job_vehicles do
             if GetEntityModel(veh) == GetHashKey(v.name) then tier = v.tier break end
        end
    end
    return tier
end


Citizen.CreateThread(function()
  for k,v in next, job_blips do
    local blip = AddBlipForCoord(v.x, v.y, 0)
    SetBlipSprite(blip, job_blip_settings.start_blip.id)
    SetBlipColour(blip, job_blip_settings.start_blip.color)
    SetBlipAsShortRange(blip, true)
    setBlipName(blip, v.name)
  end
    while true do
        Citizen.Wait(1)
        if not isOnJob() then
            -- NOT ON JOB
            local p = GetEntityCoords(GetPlayerPed(-1))
            for k,v in next, job_starts do
                drawMarker(v.x, v.y, v.z, v.tier > 2)
                if nearMarker(v.x, v.y, v.z) then
                    promptJob(v, getCurrentTier())
                end
            end
            for k,v in next, debugMarkers do
                drawMarker(v.x, v.y, v.z)
            end
        else

            -- ON JOB
            for k,v in next, current_job.route do
                local marker = v
                local mop = "Trash"
                local p = GetEntityCoords(GetPlayerPed(-1))
                local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
                local dist = Vdist(p.x, p.y, p.z, marker.x, marker.y, marker.z)
                if dist <= 50 then
                    drawMarker(marker.x, marker.y, marker.z)
                    if nearMarker(marker.x, marker.y, marker.z) and isInValidVehicle() and getCurrentTier() >= current_job.tier then
                        if GetEntitySpeed(veh) > 0.1 and engineNeedsToBeOff then
                            drawText(string.format(engineRunningText))
                        else
                            drawText(string.format(pickupText, mop, v.name))
                            if isEPressed() then
                                pickupJob(k)
                            end
                        end
                    end
                end
            end
        end
    end
end)
