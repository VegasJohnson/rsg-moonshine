local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent("rsg-moonshine:server:upgrade")
AddEventHandler('rsg-moonshine:server:upgrade', function(v, amount)
local src = source
local Player = RSGCore.Functions.GetPlayer(src)
local MoonUpl = Player.PlayerData.metadata["moonup"]
    if MoonUpl == 5 then
        TriggerClientEvent('RSGCore:Notify', src, ('Your Still LvL Is Maxed'), 'error')
    else
        Player.Functions.RemoveItem(v, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[v], "remove")
        Upgrade()
    end
end)

function Exploite()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
    local currentDate = os.date("*t")
    if currentDate.day == 31 then
        currentDate.day = 30
    end
	TriggerEvent('rsg-log:server:CreateLog', 'exploit', 'Moonshine Items  ', 'red', firstname..' '..lastname..' Items Not In Inventory')
end

function Upgrade()
local src = source
local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.SetMetaData("moonrep", Player.PlayerData.metadata["moonrep"] + 1)
    Player.Functions.SetMetaData("moonup", Player.PlayerData.metadata["moonup"] + 1)
end

RegisterServerEvent("rsg-moonshine:server:producelow")
AddEventHandler('rsg-moonshine:server:producelow', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- add items
    Player.Functions.AddItem('moonshine', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['moonshine'], "add")
    Player.Functions.SetMetaData("moonrep", Player.PlayerData.metadata["moonrep"] + 1)
end)

RegisterServerEvent("rsg-moonshine:server:takeproducelow")
AddEventHandler('rsg-moonshine:server:takeproducelow', function()
local src = source
local Player = RSGCore.Functions.GetPlayer(src)
Player.Functions.RemoveItem('hops', 2)
TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['hops'], "remove")
Player.Functions.RemoveItem('water', 2)
TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['water'], "remove")
Player.Functions.RemoveItem('alcohol', 2)
TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['alcohol'], "remove")
end)

RegisterServerEvent("rsg-moonshine:server:producelvl2")
AddEventHandler('rsg-moonshine:server:producelvl2', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- add items
    Player.Functions.AddItem('moonshine20', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['moonshine20'], "add")
    Player.Functions.SetMetaData("moonrep", Player.PlayerData.metadata["moonrep"] + 1)
end)

RegisterServerEvent("rsg-moonshine:server:takeproducelvl2")
AddEventHandler('rsg-moonshine:server:takeproducelvl2', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('hops', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['hops'], "remove")
    Player.Functions.RemoveItem('water', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['water'], "remove")
    Player.Functions.RemoveItem('alcohol', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['alcohol'], "remove")
end)

RegisterServerEvent("rsg-moonshine:server:producelvl3")
AddEventHandler('rsg-moonshine:server:producelvl3', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- add items
    Player.Functions.AddItem('moonshine30', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['moonshine30'], "add")
    Player.Functions.SetMetaData("moonrep", Player.PlayerData.metadata["moonrep"] + 1)
end)

RegisterServerEvent("rsg-moonshine:server:takeproducelvl3")
AddEventHandler('rsg-moonshine:server:takeproducelvl3', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('hops', 7)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['hops'], "remove")
    Player.Functions.RemoveItem('water', 7)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['water'], "remove")
    Player.Functions.RemoveItem('alcohol', 7)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['alcohol'], "remove")
end)

RegisterServerEvent("rsg-moonshine:server:producelvl4")
AddEventHandler('rsg-moonshine:server:producelvl4', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- add items
    Player.Functions.AddItem('moonshine50', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['moonshine50'], "add")
    Player.Functions.SetMetaData("moonrep", Player.PlayerData.metadata["moonrep"] + 1)
end)

RegisterServerEvent("rsg-moonshine:server:takeproducelvl4")
AddEventHandler('rsg-moonshine:server:takeproducelvl4', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('hops', 10)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['hops'], "remove")
    Player.Functions.RemoveItem('water', 10)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['water'], "remove")
    Player.Functions.RemoveItem('alcohol', 10)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['alcohol'], "remove")
end)

RegisterServerEvent("rsg-moonshine:server:producelvl5")
AddEventHandler('rsg-moonshine:server:producelvl5', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- add items
    Player.Functions.AddItem('moonshine80', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['moonshine80'], "add")
    Player.Functions.SetMetaData("moonrep", Player.PlayerData.metadata["moonrep"] + 1)
end)

RegisterServerEvent("rsg-moonshine:server:takeproducelvl5")
AddEventHandler('rsg-moonshine:server:takeproducelvl5', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('hops', 15)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['hops'], "remove")
    Player.Functions.RemoveItem('water', 15)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['water'], "remove")
    Player.Functions.RemoveItem('alcohol', 15)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['alcohol'], "remove")
end)

RegisterServerEvent("rsg-moonshine:server:producelvl6")
AddEventHandler('rsg-moonshine:server:producelvl6', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    -- add items
    Player.Functions.AddItem('moonshine100', 5)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['moonshine100'], "add")
    Player.Functions.SetMetaData("moonrep", Player.PlayerData.metadata["moonrep"] + 1)
end)

RegisterServerEvent("rsg-moonshine:server:takeproducelvl6")
AddEventHandler('rsg-moonshine:server:takeproducelvl6', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('hops', 20)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['hops'], "remove")
    Player.Functions.RemoveItem('water', 20)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['water'], "remove")
    Player.Functions.RemoveItem('alcohol', 20)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['alcohol'], "remove")
end)

RSGCore.Commands.Add('moonrep', ('Display Moon Crafting LvL'), {}, false, function(source)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local Moonrep = Player.PlayerData.metadata['moonrep']
    TriggerClientEvent('RSGCore:Notify', src, ('Your Moon Rep Is ')..Moonrep, 'primary')
end)