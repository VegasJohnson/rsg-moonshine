local RSGCore = exports['rsg-core']:GetCoreObject()
local upgrade = {name = "aplank"}
local upgrade2 = {name = "moonbarrel"}
local upgrade3 = {name = "bplank"}
local upgrade4 = {name = "moonshinekit"}
local upgrade5 = {name = "cplank"}
local shine = false
local moonshineloc = vector3 (-1791.6759, -385.1646, 157.1222)

Citizen.CreateThread(function()
	exports['rsg-core']:createPrompt('enter moonshine', vector3(-1796.7863, -388.5422, 160.2646), RSGCore.Shared.Keybinds['ENTER'], 'Enter', {
		type = 'client',
		event = 'rsg-travel:client:moonin',
		args = {},
	})
end)
Citizen.CreateThread(function()
	exports['rsg-core']:createPrompt('exit moonshine', vector3(-1790.4934, -390.1815, 157.1236), RSGCore.Shared.Keybinds['ENTER'], 'Exit', {
		type = 'client',
		event = 'rsg-travel:client:moonout',
		args = {},
	})
end)

--- Strawberry Store ---
RegisterNetEvent("rsg-travel:client:moonin")
AddEventHandler("rsg-travel:client:moonin", function()
	local player = PlayerPedId()
	DoScreenFadeOut(500)
		Wait(1000)
		Citizen.InvokeNative(0x203BEFFDBE12E96A, PlayerPedId(), -1790.4934, -390.1815, 157.1236, 25.7368)
		SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
		DoScreenFadeIn(1800)
end)

RegisterNetEvent("rsg-travel:client:moonout")
AddEventHandler("rsg-travel:client:moonout", function()
	DoScreenFadeOut(500)
		Wait(1000)
		Citizen.InvokeNative(0x203BEFFDBE12E96A, PlayerPedId(), -1797.0391, -388.0196, 160.2386, 17.9098)
		DoScreenFadeIn(1800)
end)

---------------

Citizen.CreateThread(function()
    local shinel = vector3(-1791.6759, -385.1646, 157.1222)
        exports['rsg-core']:createPrompt('shineprompt', shinel, RSGCore.Shared.Keybinds['J'], 'Use Still', {
            type = 'client',
            event = 'rsg-moonshine:client:menu',
            args = {},
        })
end)
Citizen.CreateThread(function() -- Manzita
    local shinel = vector3(-1869.8180, -1727.5262, 85.9575)
        exports['rsg-core']:createPrompt('shinepromptM', shinel, RSGCore.Shared.Keybinds['J'], 'Use Still', {
            type = 'client',
            event = 'rsg-moonshine:client:menu',
            args = {},
        })
end)
Citizen.CreateThread(function() -- Lem
    local shinel = vector3(1794.5652, -818.9028, 189.3015)
        exports['rsg-core']:createPrompt('shinepromptL', shinel, RSGCore.Shared.Keybinds['J'], 'Use Still', {
            type = 'client',
            event = 'rsg-moonshine:client:menu',
            args = {},
        })
end)
Citizen.CreateThread(function() -- Cattail
    local shinel = vector3(-1095.3082, 715.0479, 80.9363)
        exports['rsg-core']:createPrompt('shinepromptC', shinel, RSGCore.Shared.Keybinds['J'], 'Use Still', {
            type = 'client',
            event = 'rsg-moonshine:client:menu',
            args = {},
        })
end)
Citizen.CreateThread(function() -- New Aus
    local shinel = vector3(-2774.6995, -3040.7910, -11.9982)
        exports['rsg-core']:createPrompt('shinepromptA', shinel, RSGCore.Shared.Keybinds['J'], 'Use Still', {
            type = 'client',
            event = 'rsg-moonshine:client:menu',
            args = {},
        })
end)
Citizen.CreateThread(function() -- New Han
    local shinel = vector3(1635.3336, 828.9156, 121.6442)
        exports['rsg-core']:createPrompt('shinepromptH', shinel, RSGCore.Shared.Keybinds['J'], 'Use Still', {
            type = 'client',
            event = 'rsg-moonshine:client:menu',
            args = {},
        })
end)
RegisterNetEvent('rsg-moonshine:client:menu', function()
	if not shine then
		exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true,
			},
			{
				header = "UpGrade Shine LvL",
				txt = '',
				params = {
					event = 'rsg-moonshine:client:upgrade',
					isServer = false,
				}
			},
            {
				header = "Produce Moonshine",
				txt = '',
				params = {
					event = 'rsg-moonshine:client:produce',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
	end
end)

RegisterNetEvent('rsg-moonshine:client:upgrade')
AddEventHandler('rsg-moonshine:client:upgrade', function()
    local MoonRep = RSGCore.Functions.GetPlayerData().metadata.moonrep
    local MoonUp = RSGCore.Functions.GetPlayerData().metadata.moonup
    if MoonRep == 100  then --Set MoonUp value
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
			{
				header = "UpGrade Shine LvL",
				txt = 'Upgrade to LvL 1',
				params = {
					event = 'rsg-moonshine:client:upgradelvl1',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonRep == 300 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
			{
				header = "UpGrade Shine LvL",
				txt = 'Upgrade to LvL 2',
				params = {
					event = 'rsg-moonshine:client:upgradelvl2',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonRep == 600 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
			{
				header = "UpGrade Shine LvL",
				txt = 'Upgrade to LvL 3',
				params = {
					event = 'rsg-moonshine:client:upgradelvl3',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonRep == 1000 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
			{
				header = "UpGrade Shine LvL",
				txt = 'Upgrade to LvL 4',
				params = {
					event = 'rsg-moonshine:client:upgradelvl4',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonRep == 1400 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
			{
				header = "UpGrade Shine LvL",
				txt = 'Upgrade to LvL 5',
				params = {
					event = 'rsg-moonshine:client:upgradelvl5',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
end)

RegisterNetEvent('rsg-moonshine:client:upgradelvl1')
AddEventHandler('rsg-moonshine:client:upgradelvl1', function()
for k, v in pairs (upgrade) do
    local hasitem = RSGCore.Functions.HasItem(v, 5)
        if hasitem then
            TriggerServerEvent("rsg-moonshine:server:upgrade", v, 5) return
        else
            RSGCore.Functions.Notify('Need 5 Low Grade Planks', 'error')
        end
    end
end)
RegisterNetEvent('rsg-moonshine:client:upgradelvl2')
AddEventHandler('rsg-moonshine:client:upgradelvl2', function()
for k, v in pairs (upgrade2) do
    local hasitem = RSGCore.Functions.HasItem(v, 10)
        if hasitem then
            TriggerServerEvent("rsg-moonshine:server:upgrade", v, 10) return
        else
            RSGCore.Functions.Notify('Need 10 MoonBarrels', 'error')
        end
    end 
end)
RegisterNetEvent('rsg-moonshine:client:upgradelvl3')
AddEventHandler('rsg-moonshine:client:upgradelvl3', function()
    for k, v in pairs (upgrade3) do
        local hasitem = RSGCore.Functions.HasItem(v, 15)
            if hasitem then
                TriggerServerEvent("rsg-moonshine:server:upgrade", v, 15) return
            else
                RSGCore.Functions.Notify('Need 15 Mid Grade Planks', 'error')
            end
        end
end)
RegisterNetEvent('rsg-moonshine:client:upgradelvl4')
AddEventHandler('rsg-moonshine:client:upgradelvl4', function()
    for k, v in pairs (upgrade4) do
        local hasitem = RSGCore.Functions.HasItem(v, 20)
            if hasitem then
                TriggerServerEvent("rsg-moonshine:server:upgrade", v, 20) return
            else
                RSGCore.Functions.Notify('Need 20 Moonshine Kits', 'error')
            end
        end
end)
RegisterNetEvent('rsg-moonshine:client:upgradelvl5')
AddEventHandler('rsg-moonshine:client:upgradelvl5', function()
    for k, v in pairs (upgrade5) do
        local hasitem = RSGCore.Functions.HasItem(v, 30)
            if hasitem then
                TriggerServerEvent("rsg-moonshine:server:upgrade", v, 30) return
            else
                RSGCore.Functions.Notify('Need 30 High Grade Planks', 'error')
            end
        end
end)

RegisterNetEvent('rsg-moonshine:client:produce')
AddEventHandler('rsg-moonshine:client:produce', function()
    local MoonRep = RSGCore.Functions.GetPlayerData().metadata.moonrep
    local MoonUp = RSGCore.Functions.GetPlayerData().metadata.moonup
    if MoonUp == 0 and MoonRep == 100 then
        RSGCore.Functions.Notify('Upgrade Your Still LvL', 'error')
    end
    if MoonUp == 0 and MoonRep < 100 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
            {
				header = "Produce Low Grade Moonshine",
				txt = '2 X = hops, water, alcohol',
				params = {
					event = 'rsg-moonshine:client:producelow',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonUp == 1 and MoonRep == 300 then
        RSGCore.Functions.Notify('Upgrade Your Still LvL', 'error')
    end
    if MoonUp == 1 and MoonRep >= 101 and MoonRep < 300 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
            {
				header = "Produce 20% Grade Moonshine",
				txt = '5 X = hops, water, alcohol',
				params = {
					event = 'rsg-moonshine:client:producelvl2',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonUp == 2 and MoonRep == 600 then
        RSGCore.Functions.Notify('Upgrade Your Still LvL', 'error')
    end
    if MoonUp == 2 and MoonRep >= 301 and MoonRep < 600 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
            {
				header = "Produce 30% Grade Moonshine",
				txt = '7 X = hops, water, alcohol',
				params = {
					event = 'rsg-moonshine:client:producelvl3',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonUp == 3 and MoonRep == 1000 then
        RSGCore.Functions.Notify('Upgrade Your Still LvL', 'error')
    end
    if MoonUp == 3 and MoonRep >= 601 and MoonRep < 1000 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
            {
				header = "Produce 50% Grade Moonshine",
				txt = '10 X = hops, water, alcohol',
				params = {
					event = 'rsg-moonshine:client:producelvl4',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonUp == 4 and MoonRep == 1400 then
        RSGCore.Functions.Notify('Upgrade Your Still LvL', 'error')
    end
    if MoonUp == 4 and MoonRep >= 1001 and MoonRep < 1400 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true, 
			},
            {
				header = "Produce 80% Grade Moonshine",
				txt = '15 X = hops, water, alcohol',
				params = {
					event = 'rsg-moonshine:client:producelvl5',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
    if MoonUp == 5 and MoonRep > 1400 then
        exports['rsg-menu']:openMenu({
			{
				header = "| Shine Menu |",
				txt = "Lets Shine !!!",
				isMenuHeader = true,
			},
            {
				header = "Produce 99% Grade Moonshine",
				txt = '20 X = hops, water, alcohol',
				params = {
					event = 'rsg-moonshine:client:producelvl6',
					isServer = false,
				}
			},
			{
				header = "Close Menu",
				txt = '',
				params = {
					event = 'rsg-menu:closeMenu',
				}
			},
		})
    end
end)

function Exploit()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
    local currentDate = os.date("*t")
    if currentDate.day == 31 then
        currentDate.day = 30
    end
TriggerServerEvent('rsg-log:server:CreateLog', 'exploit', 'Moonshine Items  ', 'red', firstname..' '..lastname..' Items Not In Inventory')
end

RegisterNetEvent("rsg-moonshine:client:producelow", function()
    local produce = {name = "hops",name ="water",name ="alcohol"}
    for k, v in pairs (produce) do
        local hasitem = RSGCore.Functions.HasItem('hops', 2)
        local hasitem1 = RSGCore.Functions.HasItem('water', 2)
        local hasitem2 = RSGCore.Functions.HasItem('alcohol', 2)
        if hasitem and hasitem1 and hasitem2 then
            TriggerServerEvent("rsg-moonshine:server:takeproducelow")
            RSGCore.Functions.Progressbar('craft-moon', ('Brewing..'), 300000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
            }, {}, {}, {}, function() -- Done
                TriggerServerEvent("rsg-moonshine:server:producelow")
            end) return
        else
            RSGCore.Functions.Notify('Not Enough Items', 'error')
        end
    end
end)

RegisterNetEvent("rsg-moonshine:client:producelvl2", function()
    local produce = {name = "hops",name ="water",name ="alcohol"}
    for k, v in pairs (produce) do
        local hasitem = RSGCore.Functions.HasItem('hops', 5)
        local hasitem1 = RSGCore.Functions.HasItem('water', 5)
        local hasitem2 = RSGCore.Functions.HasItem('alcohol', 5)
        if hasitem and hasitem1 and hasitem2 then
            TriggerServerEvent("rsg-moonshine:server:takeproducelvl2")
            RSGCore.Functions.Progressbar('craft-moon', ('Brewing..'), 300000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
            }, {}, {}, {}, function() -- Done
                TriggerServerEvent("rsg-moonshine:server:producelvl2")
        end) return
        else
            RSGCore.Functions.Notify('Not Enough Items', 'error')
        end
    end
end)

RegisterNetEvent("rsg-moonshine:client:producelvl3", function()
    local produce = {name = "hops",name ="water",name ="alcohol"}
    for k, v in pairs (produce) do
        local hasitem = RSGCore.Functions.HasItem('hops', 7)
        local hasitem1 = RSGCore.Functions.HasItem('water', 7)
        local hasitem2 = RSGCore.Functions.HasItem('alcohol', 7)
        if hasitem and hasitem1 and hasitem2 then
            TriggerServerEvent("rsg-moonshine:server:takeproducelvl3")
            RSGCore.Functions.Progressbar('craft-moon', ('Brewing..'), 300000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
            }, {}, {}, {}, function() -- Done
                    TriggerServerEvent("rsg-moonshine:server:producelvl3")
        end) return
        else
            RSGCore.Functions.Notify('Not Enough Items', 'error')
        end
    end
end)

RegisterNetEvent("rsg-moonshine:client:producelvl4", function()
    local produce = {name = "hops",name ="water",name ="alcohol"}
    for k, v in pairs (produce) do
        local hasitem = RSGCore.Functions.HasItem('hops', 10)
        local hasitem1 = RSGCore.Functions.HasItem('water', 10)
        local hasitem2 = RSGCore.Functions.HasItem('alcohol', 10)
        if hasitem and hasitem1 and hasitem2 then
            TriggerServerEvent("rsg-moonshine:server:takeproducelvl4")
            RSGCore.Functions.Progressbar('craft-moon', ('Brewing..'), 300000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
            }, {}, {}, {}, function() -- Done
                TriggerServerEvent("rsg-moonshine:server:producelvl4")
        end) return
        else
            RSGCore.Functions.Notify('Not Enough Items', 'error')
        end
    end
end)

RegisterNetEvent("rsg-moonshine:client:producelvl5", function()
    local produce = {name = "hops",name ="water",name ="alcohol"}
    for k, v in pairs (produce) do
        local hasitem = RSGCore.Functions.HasItem('hops', 15)
        local hasitem1 = RSGCore.Functions.HasItem('water', 15)
        local hasitem2 = RSGCore.Functions.HasItem('alcohol', 15)
        if hasitem and hasitem1 and hasitem2 then
            TriggerServerEvent("rsg-moonshine:server:takeproducelvl5")
            RSGCore.Functions.Progressbar('craft-moon', ('Brewing..'), 300000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
            }, {}, {}, {}, function() -- Done
                TriggerServerEvent("rsg-moonshine:server:producelvl5")
        end) return
        else
            RSGCore.Functions.Notify('Not Enough Items', 'error')
        end
    end
end)

RegisterNetEvent("rsg-moonshine:client:producelvl6", function()
    local produce = {name = "hops",name ="water",name ="alcohol"}
    for k, v in pairs (produce) do
        local hasitem = RSGCore.Functions.HasItem('hops', 20)
        local hasitem1 = RSGCore.Functions.HasItem('water', 20)
        local hasitem2 = RSGCore.Functions.HasItem('alcohol', 20)
        if hasitem and hasitem1 and hasitem2 then
            TriggerServerEvent("rsg-moonshine:server:takeproducelvl6")
            RSGCore.Functions.Progressbar('craft-moon', ('Brewing..'), 300000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
            }, {}, {}, {}, function() -- Done
                TriggerServerEvent("rsg-moonshine:server:producelvl6")
        end) return
        else
            RSGCore.Functions.Notify('Not Enough Items', 'error')
        end
    end
end)




