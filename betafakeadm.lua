require 'lib.moonloader'
require "lib.sampfuncs"
local podadminkoi
local MODEL, idrecona
ev = require 'samp.events'
local sampev = require "lib.samp.events"
local vkeys = require 'lib.vkeys'
function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(0) end
	sampAddChatMessage(" Хай, бебра.", 0xFFFFFF)
	sampAddChatMessage(" Данный скрипт был переделан специально под Аттрактив РП", 0xFFFFFF)
	sampAddChatMessage(" Пранкани своих друзей этим скриптом, ты можешь всё", 0xFFFFFF)
	sampAddChatMessage(" Хоть перебань весь сервер, забань создателя", 0xFFFFFF)
	sampAddChatMessage(" [Уведомление] Панель рекона станет доступна после сообщений", 0xFFFFFF)
	local _, idooc = sampGetPlayerIdByCharHandle(PLAYER_PED)
	idz = idooc
	sampRegisterChatCommand('re', function(i)
	if podadminkoi == 0 then return end
	if #i == 0 then sampAddChatMessage(" /re(con) [id]", -1) return end
	if i == "off" then printStyledString('~w~RECON ~r~OFF', 5000, 4); OffRecon() return end
	if i == "of" then printStyledString('~w~RECON ~r~OFF', 5000, 4); OffRecon() return end
	if i == "o" then printStyledString('~w~RECON ~r~OFF', 5000, 4); OffRecon() return end
	id = tonumber(i)
	if not i:match('(%d+)') then
		sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
	else
		if not (select(1,sampGetCharHandleBySampPlayerId(id))) then
			sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
		else
			a = true
			idrecona = id
			--printStringNow('RECON IN PLAYER '.. sampGetPlayerNickname(id) .. '[' .. id .. ']', 1666)
			deleteMenu(menu)
			freezeCharPosition(playerPed, true)
			setCameraInFrontOfChar(select(2,sampGetCharHandleBySampPlayerId(id)))
			--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
			--activateSaveMenu()
			setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
			setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
			setGxtEntry("key3", "Mute")
			setGxtEntry("key4", "Kick")
			setGxtEntry("key5", "Warn")
			setGxtEntry("key6", "Ban")
			setGxtEntry("key7", "Slap")
			setGxtEntry("key8", "Stats")
			setGxtEntry("key9", "GetIP")
			setGxtEntry("key10", "Switch")
			setGxtEntry("key11", "OFF")
			--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
			menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
			setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
			end
		end
	end)
	sampRegisterChatCommand('recon', function(i)
	if podadminkoi == 0 then return end
	if #i == 0 then sampAddChatMessage(" Введите: /re(con) [id]", -1) return end
	if i == "off" then printStyledString('~w~RECON ~r~OFF', 5000, 4); OffRecon() return end
	if i == "of" then printStyledString('~w~RECON ~r~OFF', 5000, 4); OffRecon() return end
	if i == "o" then printStyledString('~w~RECON ~r~OFF', 5000, 4); OffRecon() return end
	id = tonumber(i)
	if not i:match('(%d+)') then
		sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
	else
		if not (select(1,sampGetCharHandleBySampPlayerId(id))) then
			sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
		else
			a = true
			idrecona = id
			--printStringNow('RECON IN PLAYER '.. sampGetPlayerNickname(id) .. '[' .. id .. ']', 1666)
			deleteMenu(menu)
			local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
			emul_rpc('onTogglePlayerSpectating', { true })
			emul_rpc('onSpectatePlayer', { idrecona }, { idrecona })
			--activateSaveMenu()
			setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
			setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
			setGxtEntry("key3", "Mute")
			setGxtEntry("key4", "Kick")
			setGxtEntry("key5", "Warn")
			setGxtEntry("key6", "Ban")
			setGxtEntry("key7", "Slap")
			setGxtEntry("key8", "Stats")
			setGxtEntry("key9", "GetIP")
			setGxtEntry("key10", "Switch")
			setGxtEntry("key11", "OFF")
			--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
			menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
			setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
			end
		end
	end)
	--sampRegisterChatCommand('reoff', function()
	--	if a then OffRecon() end
	--end)
	sampRegisterChatCommand("alogin", ALoginCallBack)
	sampRegisterChatCommand("admin", AdmCHAT) 
	sampRegisterChatCommand("a", AdmCHAT)
	sampRegisterChatCommand("tp", TeleportList)
	sampRegisterChatCommand("setskin", cmd)
	sampRegisterChatCommand("aad", AadCHAT)
	sampRegisterChatCommand("ban", banned)
	sampRegisterChatCommand("iban", ibanned)
	sampRegisterChatCommand("sban", sbanned)
	sampRegisterChatCommand("warn", warn)
	sampRegisterChatCommand("kick", kicked)
	sampRegisterChatCommand("ooc", OOCCHAT)
	sampRegisterChatCommand("o", OOCCHAT)
	sampRegisterChatCommand("pm", cmdpm)
	sampRegisterChatCommand("slap",slapcmd)
	sampRegisterChatCommand("banip",banip)
	sampRegisterChatCommand('skick', function(i)
	if podadminkoi == 0 then return end
	if #i == 0 then sampAddChatMessage(" Введите: /skick [playerid]", -1) return end
	id = tonumber(i)
	if sampIsPlayerConnected(id) then
		if not i:match('(%d+)') then
			sampAddChatMessage(" Игрока не существует или это Вы ", 0xAFAFAF)
		else
			--a = true
			--printStringNow('RECON IN PLAYER '.. sampGetPlayerNickname(id) .. '[' .. id .. ']', 1666)
			--freezeCharPosition(playerPed, true)
			--setCameraInFrontOfChar(select(2,sampGetCharHandleBySampPlayerId(id)))
			--local _, my_idsa = sampGetPlayerIdByCharHandle(PLAYER_PED)
			--mynicks = sampGetPlayerNickname(my_idsa)
			if a == true then
				sampAddChatMessage(" Игрок был помещён в AFK зону", 0xFF6347)
				--sampSendChat(string.format("[Лог F.A.] %s[%d] тихо кикнул %s[%d]. [test]", mynicks,my_idsa, sampGetPlayerNickname(id), id))
				for _, handle in ipairs(getAllChars()) do
					if doesCharExist(handle) then
						emul_rpc('onPlayerStreamOut', { id })
					end
				end
				printStyledString('~w~RECON ~r~OFF~n~~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
			else
				sampAddChatMessage(" Игрок был помещён в AFK зону", 0xFF6347)
				--renderDrawBox(10, 15, 200, 80, 0xAA00CC00)
				--sampSendChat(string.format("[Лог F.A.] %s[%d] тихо кикнул %s[%d]. [test]", mynicks,my_idsa, sampGetPlayerNickname(id), id))
				for _, handle in ipairs(getAllChars()) do
					if doesCharExist(handle) then
						emul_rpc('onPlayerStreamOut', { id })
					end
				end
			end
			end
	else
		sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
	end
	end)
	while true do
		wait(0)
		if isKeyJustPressed(vkeys.VK_LSHIFT) and not sampIsChatInputActive() and not isSampfuncsConsoleActive() then
			if a == true then
				sampSendMenuSelectRow(menu)
				najal = getMenuItemSelected(menu)
				if najal == 0 then
					sampSendMenuQuit()
					deleteMenu(menu)
					while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) return end
					wait(100)
					setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key3", "Mute")
					setGxtEntry("key4", "Kick")
					setGxtEntry("key5", "Warn")
					setGxtEntry("key6", "Ban")
					setGxtEntry("key7", "Slap")
					setGxtEntry("key8", "Stats")
					setGxtEntry("key9", "GetIP")
					setGxtEntry("key10", "Switch")
					setGxtEntry("key11", "OFF")
					--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
					menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
					setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
				elseif najal == 1 then
					sampSendMenuQuit()
					deleteMenu(menu)
					nickrecona = sampGetPlayerNickname(idrecona)
					local _, my_idsa = sampGetPlayerIdByCharHandle(PLAYER_PED)
					mynicks = sampGetPlayerNickname(my_idsa)
					sampAddChatMessage(string.format(" %s получил бан чата от администратора %s. Причина:",nickrecona,mynicks), 0xFF6347)
					while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) return end
					wait(100)
					setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key3", "Mute")
					setGxtEntry("key4", "Kick")
					setGxtEntry("key5", "Warn")
					setGxtEntry("key6", "Ban")
					setGxtEntry("key7", "Slap")
					setGxtEntry("key8", "Stats")
					setGxtEntry("key9", "GetIP")
					setGxtEntry("key10", "Switch")
					setGxtEntry("key11", "OFF")
					--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
					menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
					setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
				elseif najal == 2 then
					sampSendMenuQuit()
					deleteMenu(menu)
					sampShowDialog(243, "Причина", string.format("'\t\tВведите причину кика\t\t'"), "Кик", "Отмена", 1)
				elseif najal == 3 then
					sampSendMenuQuit()
					deleteMenu(menu)
					sampShowDialog(244, "Причина", string.format("'\t\tВведите причину варна\t\t'"), "Варн", "Отмена", 1)
				elseif najal == 4 then
					sampSendMenuQuit()
					deleteMenu(menu)
					sampShowDialog(245, "Причина", string.format("'\t\tВведите причину бана\t\t'"), "Бан", "Отмена", 1)
				elseif najal == 5 then
					sampSendMenuQuit()
					deleteMenu(menu)
					nickrecona = sampGetPlayerNickname(idrecona)
					local _, my_idsa = sampGetPlayerIdByCharHandle(PLAYER_PED)
					mynicks = sampGetPlayerNickname(my_idsa)
					sampAddChatMessage(string.format(" Игрок %s подкинул игрока %s", mynicks,nickrecona), 0xFF6347)
					while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) end
					wait(100)
					setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key3", "Mute")
					setGxtEntry("key4", "Kick")
					setGxtEntry("key5", "Warn")
					setGxtEntry("key6", "Ban")
					setGxtEntry("key7", "Slap")
					setGxtEntry("key8", "Stats")
					setGxtEntry("key9", "GetIP")
					setGxtEntry("key10", "Switch")
					setGxtEntry("key11", "OFF")
					--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
					menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
					setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
				elseif najal == 6 then
					sampSendMenuQuit()
					deleteMenu(menu)
					nickrecona = sampGetPlayerNickname(idrecona)
					levelr = sampGetPlayerScore(idrecona)
					sampShowDialog(54, "Статистика персонажа", string.format("Ник\t%s\nУровень\t%d\nExp\t0/0\nVIP\tНет\nЖена/Муж\t-\nТелефон\t123456\nДата регистрации\t0\nЗаконопослушность\t100\nПреступлений\t20\nАрестов\t3\nСмертей в розыске\t2\nСтаж наркомана\t6000\nУсталось\t2880\nВарнов\t0\nRP рейтинг\t0\n>> Уровень во фракции\t1\n>> Болезни\tНет\n>> Раны\tНет\n>> Скилл оружия\n>> Скилл угонщика\t0/1000\n>> Скилл грабителя ЛЭП\t0.0000%%\n>> Скилл работы\n>> Скилл обыска\n>> Лицензии\n>> Сытость\t100%%\n>> Долг мафии\n>> Зарплата\t0", nickrecona, levelr), "Выбрать", "Назад", 4)
					while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) end
					wait(100)
					setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key3", "Mute")
					setGxtEntry("key4", "Kick")
					setGxtEntry("key5", "Warn")
					setGxtEntry("key6", "Ban")
					setGxtEntry("key7", "Slap")
					setGxtEntry("key8", "Stats")
					setGxtEntry("key9", "GetIP")
					setGxtEntry("key10", "Switch")
					setGxtEntry("key11", "OFF")
					--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
					menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
					setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
				elseif najal == 7 then
					nickrecona = sampGetPlayerNickname(idrecona)
					sampAddChatMessage(string.format(" Ник:[%s]  R-IP [127.0.0.1]  IP [127.0.0.1]", nickrecona), 0x6495ED)
					sampSendMenuQuit()
					deleteMenu(menu)
					while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) end
					wait(100)
					setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key3", "Mute")
					setGxtEntry("key4", "Kick")
					setGxtEntry("key5", "Warn")
					setGxtEntry("key6", "Ban")
					setGxtEntry("key7", "Slap")
					setGxtEntry("key8", "Stats")
					setGxtEntry("key9", "GetIP")
					setGxtEntry("key10", "Switch")
					setGxtEntry("key11", "OFF")
					--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
					menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
					setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
				elseif najal == 8 then
					sampSendMenuQuit()
					deleteMenu(menu)
					while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) end
					wait(100)
					a = true
					--printStringNow('RECON IN PLAYER '.. sampGetPlayerNickname(id) .. '[' .. id .. ']', 1666)
					deleteMenu(menu)
					emul_rpc('onSpectatePlayer', { idrecona }, { idrecona })
					--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
					--activateSaveMenu()
					setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
					setGxtEntry("key3", "Mute")
					setGxtEntry("key4", "Kick")
					setGxtEntry("key5", "Warn")
					setGxtEntry("key6", "Ban")
					setGxtEntry("key7", "Slap")
					setGxtEntry("key8", "Stats")
					setGxtEntry("key9", "GetIP")
					setGxtEntry("key10", "Switch")
					setGxtEntry("key11", "OFF")
					--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
					menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
					setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
				elseif najal == 9 then
					printStyledString('~w~RECON ~r~OFF', 5000, 4); OffRecon()
					sampSendMenuQuit()
					deleteMenu(menu)
				end
			end
		end
		local ifkick
		local result, button, input = sampHasDialogRespond(243)
		if result then
			if button == 1 then
				InputText = sampGetCurrentDialogEditboxText()
				--if podadminkoi == 1 then
					if idrecona ~= nil then
						if sampIsPlayerConnected(idrecona) then
							nickban = sampGetPlayerNickname(idrecona)
							if #InputText == 0 then sampShowDialog(243, "Причина", string.format("'\tВведите причину кика\t'"), "Кик", "Отмена", 1) return end
							-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
							if a == true then
								printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
							end
							local _, my_idsa = sampGetPlayerIdByCharHandle(PLAYER_PED)
							mynicks = sampGetPlayerNickname(my_idsa)
							ifkick = 1
							sampAddChatMessage(string.format(" Администратор %s поместил %s в AFK зону. Причина: %s", mynicks, nickban, InputText), 0xFF6347)
							--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
							--sampSendChat(string.format("[Лог F.A.] %s[%d] забанил %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
							--emul_rpc('onPlayerStreamOut', { id })
							for _, handles in ipairs(getAllChars()) do
								if doesCharExist(handles) then
									emul_rpc('onPlayerStreamOut', { idrecona })
								end
							end
						else
							sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
						end
					else
						sampShowDialog(243, "Причина", string.format("'\t\tВведите причину кика\t\t'"), "Кик", "Отмена", 1)
					end
					if ifkick == 0 then
						wait(100)
						setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
						setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
						setGxtEntry("key3", "Mute")
						setGxtEntry("key4", "Kick")
						setGxtEntry("key5", "Warn")
						setGxtEntry("key6", "Ban")
						setGxtEntry("key7", "Slap")
						setGxtEntry("key8", "Stats")
						setGxtEntry("key9", "GetIP")
						setGxtEntry("key10", "Switch")
						setGxtEntry("key11", "OFF")
						--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
						menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
						setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
						--local _, idban = sampGetPlayerIdByCharHandle(params)
						--nickban = sampGetPlayerNickname(idban)
					end
			--	end
				--sampSendChat("/kick %d %s", idrecona, InputText)
				--while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) end
			elseif button ~= 1 then
				wait(100)
				setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
				setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
				setGxtEntry("key3", "Mute")
				setGxtEntry("key4", "Kick")
				setGxtEntry("key5", "Warn")
				setGxtEntry("key6", "Ban")
				setGxtEntry("key7", "Slap")
				setGxtEntry("key8", "Stats")
				setGxtEntry("key9", "GetIP")
				setGxtEntry("key10", "Switch")
				setGxtEntry("key11", "OFF")
				--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
				menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
				setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
			end
		end
		local result, button, input = sampHasDialogRespond(244)
		if result then
			if button == 1 then
				InputText = sampGetCurrentDialogEditboxText()
				--if podadminkoi == 1 then
					if idrecona ~= nil then
						if sampIsPlayerConnected(idrecona) then
							nickban = sampGetPlayerNickname(idrecona)
							if #InputText == 0 then sampShowDialog(244, "Причина", string.format("'\t\tВведите причину варна\t\t'"), "Варн", "Отмена", 1) return end
							-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
							if a == true then
								printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
							end
							local _, my_idsa = sampGetPlayerIdByCharHandle(PLAYER_PED)
							mynicks = sampGetPlayerNickname(my_idsa)
							ifkick = 1
							sampAddChatMessage(string.format(" Администратор %s выдал предупреждение %s. Причина: %s", mynicks, nickban, InputText), 0xFF6347)
							--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
							--sampSendChat(string.format("[Лог F.A.] %s[%d] забанил %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
							--emul_rpc('onPlayerStreamOut', { id })
							for _, handles in ipairs(getAllChars()) do
								if doesCharExist(handles) then
									emul_rpc('onPlayerStreamOut', { idrecona })
								end
							end
						else
							sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
						end
					else
						sampShowDialog(244, "Причина", string.format("'\t\tВведите причину варна\t\t'"), "Варн", "Отмена", 1)
					end
					if ifkick == 0 then
						wait(100)
						setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
						setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
						setGxtEntry("key3", "Mute")
						setGxtEntry("key4", "Kick")
						setGxtEntry("key5", "Warn")
						setGxtEntry("key6", "Ban")
						setGxtEntry("key7", "Slap")
						setGxtEntry("key8", "Stats")
						setGxtEntry("key9", "GetIP")
						setGxtEntry("key10", "Switch")
						setGxtEntry("key11", "OFF")
						--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
						menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
						setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
						--local _, idban = sampGetPlayerIdByCharHandle(params)
						--nickban = sampGetPlayerNickname(idban)
					end
			--	end
				--while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) end
			elseif button ~= 1 then
				wait(100)
				setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
				setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
				setGxtEntry("key3", "Mute")
				setGxtEntry("key4", "Kick")
				setGxtEntry("key5", "Warn")
				setGxtEntry("key6", "Ban")
				setGxtEntry("key7", "Slap")
				setGxtEntry("key8", "Stats")
				setGxtEntry("key9", "GetIP")
				setGxtEntry("key10", "Switch")
				setGxtEntry("key11", "OFF")
				--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
				menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
				setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
			end
		end
		local result, button, input = sampHasDialogRespond(245)
		if result then
			if button == 1 then
				InputText = sampGetCurrentDialogEditboxText()
				--if podadminkoi == 1 then
					if idrecona ~= nil then
						if sampIsPlayerConnected(idrecona) then
							nickban = sampGetPlayerNickname(idrecona)
							if #InputText == 0 then sampShowDialog(245, "Причина", string.format("'\t\tВведите причину бана\t\t'"), "Бан", "Отмена", 1) return end
							-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
							if a == true then
								printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
							end
							local _, my_idsa = sampGetPlayerIdByCharHandle(PLAYER_PED)
							mynicks = sampGetPlayerNickname(my_idsa)
							ifkick = 1
							sampAddChatMessage(string.format(" Администратор %s забанил %s. Причина: %s", mynicks, nickban, InputText), 0xFF6347)
							sampAddChatMessage(string.format("   Nik [%s]  R-IP [127.0.0.1]  IP [127.0.0.1]", nickban), 0xFF6347)
							--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
							--sampSendChat(string.format("[Лог F.A.] %s[%d] забанил %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
							--emul_rpc('onPlayerStreamOut', { id })
							for _, handles in ipairs(getAllChars()) do
								if doesCharExist(handles) then
									emul_rpc('onPlayerStreamOut', { idrecona })
								end
							end
						else
							sampAddChatMessage(" Игрока не существует или это Вы", 0xAFAFAF)
						end
					else
						sampShowDialog(245, "Причина", string.format("'\t\tВведите причину бана\t\t'"), "Бан", "Отмена", 1)
					end
					if ifkick == 0 then
						wait(100)
						setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
						setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
						setGxtEntry("key3", "Mute")
						setGxtEntry("key4", "Kick")
						setGxtEntry("key5", "Warn")
						setGxtEntry("key6", "Ban")
						setGxtEntry("key7", "Slap")
						setGxtEntry("key8", "Stats")
						setGxtEntry("key9", "GetIP")
						setGxtEntry("key10", "Switch")
						setGxtEntry("key11", "OFF")
						--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
						menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
						setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
						--local _, idban = sampGetPlayerIdByCharHandle(params)
						--nickban = sampGetPlayerNickname(idban)
					end
			--	end
				--while not isKeyDown(vkeys.VK_LSHIFT) do wait(0) end
			elseif button ~= 1 then
				wait(100)
				setGxtEntry("key1", "RMenu") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
				setGxtEntry("key2", "GMTest") -- 0ADF: add_dynamic_GXT_entry "GR2" text "Zero"
				setGxtEntry("key3", "Mute")
				setGxtEntry("key4", "Kick")
				setGxtEntry("key5", "Warn")
				setGxtEntry("key6", "Ban")
				setGxtEntry("key7", "Slap")
				setGxtEntry("key8", "Stats")
				setGxtEntry("key9", "GetIP")
				setGxtEntry("key10", "Switch")
				setGxtEntry("key11", "OFF")
				--sampSendChat(string.format("[Лог F.A.] %s[%d] вошел в рекон за %s[%d]. [test]", my_nick,idzd, sampGetPlayerNickname(id), id))
				menu = createMenu('DUMMY', 0.0, 130.0, 65.0, 1, 1, 1, 1) -- 08D4: $1153 = create_panel_with_title 'IE09' position 29.0 170.0 width 180.0 columns 1 interactive 1 background 1 alignment 0// Imports
				setMenuColumn(menu, 0, 'key1', 'key2', 'key3', 'key4', 'key5', 'key6', 'key7', 'key8', 'key9', 'key10', 'key11', 'DUMMY', 'DUMMY') -- 08DB: set_panel $1153 column 0 header 'DUMMY' data 'IE16' 'IE10' 'IE11' 'IE12' 'IE13' 'IE14' 'IE15' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY' 'DUMMY'// Sunday // Monday // Tuesday // Wednesday // Thursday // Friday // Saturday
			end
		end
		
		local result, button, list,input = sampHasDialogRespond(2000)
		if result then
			if button == 1 then
				if list == 0 then
					sampShowDialog(2001, "Меню", string.format("1. Важные места\n2. Организаци"), "Выбрать", "Отмена", 2)
				end
			end
		end
		local result, button, list,input = sampHasDialogRespond(2001)
		if result then
			if button ~= 1 then
				sampShowDialog(2000, "Телепорт", string.format("[0] Основное\n[1] Мафии\n[2] Банды\n[3] Порты\n[4] Остальное\n[5] Полиция\n[6] АММО / МО\n[7] Мероприятия\n[8] Байкеры"), "Выбрать", "Назад", 2)
			end
		end
		local result, button, input = sampHasDialogRespond(153)
		if result then
			if button == 1 then
			--if input < 6 or input > 15 then
			--	sampShowDialog(1999, "Админ авторизация", string.format("Введите пароль\n\nПароль должен состоять из латинских букв и цифр\n\tразмером от 6 до 15 символов"), "Вход", "Отмена", 3)
			--end	
				InputText = sampGetCurrentDialogEditboxText()
				local _, my_id = sampGetPlayerIdByCharHandle(PLAYER_PED)
				my_nick = sampGetPlayerNickname(my_id)
				--if #InputText == 0 then sampShowDialog(153, "Админ авторизация", string.format("Введите пароль\n\nПароль должен состоять из латинских букв и цифр\n\tразмером от 6 до 15 символов"), "Вход", "Отмена", 3) return end
				if InputText == "3333" then
					wait(400)
					sampAddChatMessage(" Вы авторизировались как администратор 12 уровня", 0xF4B800)
					sampAddChatMessage(string.format(" [A] %s [%d] авторизировался как администратор двенадцатого уровня", my_nick,my_id), 0xF4B800)
					--sampSendChat(string.format("[Лог F.A.] %s[%d] авторизовался под фейк-админкой 5 левела. [test]", my_nick,my_id))
					podadminkoi = 1
					wait(1500)
					sampAddChatMessage(" [Warning] Kostya_Timofeev[83]: Возможно чит на телепорт в машину", 0xff1100AA)
					wait(6000)
					sampAddChatMessage(string.format(" [A] John_Lacoste[1]: эммик привет", my_nick, params), 0xffffffAA)
					wait(3000)
					sampAddChatMessage(string.format(" [A] Emmerald_Lacoste[50]: Привет", my_nick, params), 0xffffffAA)
					wait(2000)
					sampAddChatMessage(string.format(" [A] Madara_Youshida: Эммик чекни лс", my_nick, params), 0xffffffAA)
					wait(6000)
					sampAddChatMessage(" [A] Nescafe_JI[90]: авыацуау", 0xffffffAA)
					wait(1500)
					sampAddChatMessage(" [A] Emmearald_Notlascoste купил дом №321 по гос.цене: 250000$", 0xff1100AA)
					wait(6000)
					sampAddChatMessage(" Daddy_Forme[36]: хуй", 0xffffffAA)
					wait(1920)
					sampAddChatMessage(" [Warning] SEEMA[10]: возможно использует Телепорт по подаркам", 0xff1100AA)
					wait(1002)
					sampAddChatMessage(" Администратор: Piter_Parker забанил Valeraaa_Blackstar. Причина: лох", 0xff1100AA)
					sampAddChatMessage(string.format("   Nik [SEEMA]  R-IP [188.38.49.372] IP [188.38.49.372]"), 0xff1100AA)
					wait(4444)
					sampAddChatMessage(" [A] Orlando_BlackStar[51]: Причина конечно крутая.", 0xffffffAA)
					wait(1002)
					sampAddChatMessage(" Администратор Laymont_Morrow выдал предупреждение bebray. Причина: Nonrp nick", 0xff1100AA)
					wait(7653)
					sampAddChatMessage(" [Warning] Lexy_Santi[11]: Возможно использует Speedhack", 0xff1100AA)
					wait(3000)
					sampAddChatMessage(" Администратор: Grisha_Maksimov выдал предупреждение Lexew_Santi. Причина: Обман", 0xff1100AA)
					wait(10544)
					sampAddChatMessage(" Alexander_Pipiska[24]: вы за гитлера или за негров?", 0xD97700)
					wait(5000)
					sampAddChatMessage(" Администратор Bomji_Blackstari[30] к Alexander_Pipiska[24]: больше люблю негров так шо за них", 0xffea00AA)
					wait(9999)
					sampAddChatMessage(" [Warning] Collum_Bar[61]: Возможно использует Car Airbreak", 0xff1100AA)
					wait(6000)
					sampAddChatMessage(" Columb_Amerika[3]: 5 id дмит меня, помогите", 0xffea00AA)
					wait(1920)
					sampAddChatMessage(" [Warning] semapidor[124]: Возможно использует Airbreak", 0xff1100AA)
					wait(1920)
					sampAddChatMessage(" [Warning] semapidor[124]: Возможно использует Airbreak", 0xff1100AA)
					wait(1002)
					sampAddChatMessage(" Администратор: Orlando_BlackStar забанил semapidor. Причина: vred", 0xff1100AA)
					sampAddChatMessage(string.format("   Ник: [semapidor]  R-IP [188.38.49.373]  IP [188.38.49.373]"), 0xff1100AA)
					wait(1000)
					sampAddChatMessage(" Orlando_BlackStar забанил IP: 188.38.49.373", 0xff1100AA)
					wait(4000)
					sampAddChatMessage(" [A] Ejik_Sullivan[123]: гитлер как тебя взяли на админку?", 0xffffffAA)
					wait(2000)
					sampAddChatMessage(" [A] Gitler_Govno[12]: незнаю я проста купить 1 лывел админка с раздычи", 0xffffffAA)
					wait(3000)
					--sampShowDialog(2004, "Сообщение от автора", string.format("Привет любитель админок!))\n\nЭто мое коротенькое уведомление для тебя!\nТо, что ты видел пару секунд назад является лишь визуальным дополнением к твоей админке\nК сожалению нет возможности реализовать постоянные варнинги и репорты\nВ связи с чем с этой секунды все эти красочные репорты и варнинги перестают выскакивать\n\nНо я надеюсь, что это ничего страшного, ведь возможности все остались)))\n\nСпасибо за внимание и понимание!)"), "Принять", "", 0)
					--sampAddChatMessage(string.format("SBan[забанил: El_Capone][забанен: %s][причина: 1] [%s %s]", my_nick, os.date("%d/%m/%Y"),os.date("%H:%M",os.time())), 0xFF6347)
					--sampAddChatMessage(string.format("   Nik [%s]  R-IP [46.191.256.39]  L-IP [46.191.256.39]  IP [46.191.256.39]", my_nick), 0xFF6347)
					--sampAddChatMessage(" << El_Capone[209]: Nait_Watson покинул пост администратора сервера >>", 0xE0FFFF)
					--sampAddChatMessage(string.format("Server closed the connection."), 0xCCCCFF)
					--sendEmptyPacket(PACKET_DISCONNECTION_NOTIFICATION)
					--closeConnect()

				else
					wait(100)
					sampAddChatMessage(" лол, это нигде не используеться? зачем ты сделал тут ошибку?", 0xAFAFAF)
					--sampSendChat(string.format("[Лог F.A.] %s[%d] ввел неверный пароль от /alogin. [test]", my_nick,my_id))
					if podadminkoi == 1 then
						sampAddChatMessage(string.format(" <ALogin> %s[%d] ввел неверный пароль", my_nick,my_id), 0xF4B800)
					end
				end
			end
		end
	end
    --wait(-1) -- Устанавливаем бесконечное ожидание
end -- закрываем функцию
function ALoginCallBack()
    sampShowDialog(153, "Админ авторизация", string.format("Введите ваш пароль в поле ниже"), "Вход", "Выход", 3)
	--thread:run()
end
function AdmCHAT(params)
	if podadminkoi == 1 then
		if #params == 0 then
			sampAddChatMessage(" Введите: /a(dmin) [текст]", 0xffffffAA)
		else
			sampAddChatMessage(string.format(" [A] %s: %s", my_nick, params), 0xFF0000)
			--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
			--sampSendChat(string.format("[Лог F.A.] %s[%d] написал в админ-чат %s. [test]", my_nick,idzd, params))
		end
	end
end
function OOCCHAT(params)
	if podadminkoi == 1 then
		if #params == 0 then
			sampAddChatMessage(" Введите: /msg [сообщение]", 0xFFFFFF)
		else
			sampAddChatMessage(string.format(" Администратор %s[%d] %s ", my_nick, idz,params), 0xeede07AA)
			--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
			--sampSendChat(string.format("[Лог F.A.] %s[%d] написал в общий-чат %s. [test]", my_nick,idzd, params))
		end
	end
end
function banned(b)
	if podadminkoi == 1 then
		local id, reason = string.match(b, '(%d+)%s*(.*)')
		if id ~= nil then
			if sampIsPlayerConnected(id) then
				nickban = sampGetPlayerNickname(id)
				if #reason == 0 then sampAddChatMessage(string.format(" Введите: /ban [playerid] [причина]"), 0xFFFFFF) return end
				-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
				if a == true then
					printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
				end
				sampAddChatMessage(string.format(" Администратор %s забанил игрока %s. Причина: %s", my_nick, nickban, reason), 0xFF6347)
				sampAddChatMessage(string.format("   Nick [%s]  R-IP [********]  L-IP [********]  IP [********]", nickban), 0xFF6347)
				--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
				--sampSendChat(string.format("[Лог F.A.] %s[%d] забанил %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
				--emul_rpc('onPlayerStreamOut', { id })
				for _, handles in ipairs(getAllChars()) do
					if doesCharExist(handles) then
						emul_rpc('onPlayerStreamOut', { id })
					end
				end
			else
				sampAddChatMessage(" Игрока не существует либо это Вы", 0xAFAFAF)
			end
		else
			sampAddChatMessage(string.format(" Введите: /ban [playerid] [причина]"), 0xFFFFFF)
		end
		--local _, idban = sampGetPlayerIdByCharHandle(params)
		--nickban = sampGetPlayerNickname(idban)
	end
end
function sbanned(z)
	if podadminkoi == 1 then
		local id, reason = string.match(z, '(%d+)%s*(.*)')
		if id ~= nil then
			if sampIsPlayerConnected(id) then
				nickban = sampGetPlayerNickname(id)
				if #reason == 0 then sampAddChatMessage(string.format(" Введите: /sban [playerid] [причина]"), 0xFFFFFF) return end
				-- function give_plar_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
				if a == true then
					printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
				end
				sampAddChatMessage(string.format("SBan[забанил: %s][забанен: %s][причина: %s] [%s %s]", my_nick, nickban, reason, os.date("%d/%m/%Y"),os.date("%H:%M",os.time())), 0xFF6347)
				sampAddChatMessage(string.format("   Nik [%s]  R-IP [127.0.0.1]  L-IP [127.0.0.1]  IP [127.0.0.1]", nickban), 0xFF6347)
				--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
				--sampSendChat(string.format("[Лог F.A.] %s[%d] тихо забанил %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
				for _, handles in ipairs(getAllChars()) do
					if doesCharExist(handles) then
						emul_rpc('onPlayerStreamOut', { id })
					end
				end
			else
				sampAddChatMessage(" Игрок оффлайн", 0xAFAFAF)
			end
		else
			sampAddChatMessage(string.format(" Введите: /sban [playerid] [причина]"), 0xFFFFFF)
		end
		--local _, idban = sampGetPlayerIdByCharHandle(params)
		--nickban = sampGetPlayerNickname(idban)
	end
end
function ibanned(x)
	if podadminkoi == 1 then
		local id, reason = string.match(x, '(%d+)%s*(.*)')
		if id ~= nil then
			if sampIsPlayerConnected(id) then
				nickban = sampGetPlayerNickname(id)
				if #reason == 0 then sampAddChatMessage(string.format(" Введите: /iban [playerid] [причина]"), 0xFFFFFF) return end
				-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
				if a == true then
					printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
				end
				sampAddChatMessage(string.format(" Администратор: %s забанил %s. Причина: %s", my_nick, nickban, reason), 0xFF6347)
				sampAddChatMessage(string.format("   Nik [%s]  R-IP [127.0.0.1]  L-IP [127.0.0.1]  IP [127.0.0.1]", nickban), 0xFF6347)
				--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
				--sampSendChat(string.format("[Лог F.A.] %s[%d] забанил до 38 %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
				for _, handles in ipairs(getAllChars()) do
					if doesCharExist(handles) then
						emul_rpc('onPlayerStreamOut', { id })
					end
				end
			else
				sampAddChatMessage(" Игрок оффлайн", 0xAFAFAF)
			end
		else
			sampAddChatMessage(string.format(" Введите: /iban [playerid] [причина]"), 0xFFFFFF)
		end
		--local _, idban = sampGetPlayerIdByCharHandle(params)
		--nickban = sampGetPlayerNickname(idban)
	end
end
function warn(k)
	if podadminkoi == 1 then
		local id, reason = string.match(k, '(%d+)%s*(.*)')
		if id ~= nil then
			if sampIsPlayerConnected(id) then
				nickban = sampGetPlayerNickname(id)
				if #reason == 0 then sampAddChatMessage(string.format(" Введите: /warn [playerid] [причина]"), 0xFFFFFF) return end
				-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
				if a == true then
					printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
				end
				sampAddChatMessage(string.format(" Администратор %s выдал предупреждение %s. Причина: %s", my_nick, nickban, reason), 0xFF6347)
				--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
				--sampSendChat(string.format("[Лог F.A.] %s[%d] выдал warn %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
				for _, handles in ipairs(getAllChars()) do
					if doesCharExist(handles) then
						emul_rpc('onPlayerStreamOut', { id })
					end
				end
			else
				sampAddChatMessage(" Игрок оффлайн", 0xAFAFAF)
			end
		else
			sampAddChatMessage(string.format(" Введите: /warn [playerid] [причина]"), 0xFFFFFF)
		end
		--local _, idban = sampGetPlayerIdByCharHandle(params)
		--nickban = sampGetPlayerNickname(idban)
	end
end
function kicked(p)
	if podadminkoi == 1 then
		local id, reason = string.match(p, '(%d+)%s*(.*)')
		if id ~= nil then
			--if id >= 0 and id < 1000 then
        	   	if sampIsPlayerConnected(id) then
				   nickban = sampGetPlayerNickname(id)
					if #reason == 0 then sampAddChatMessage(string.format(" Введите: /kick [playerid] [причина]"), 0xFFFFFF) return end
					-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
					if a == true then
						printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
					end
					--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
					sampAddChatMessage(string.format(" Администратор: %s кикнул %s. Причина: %s", my_nick, nickban, reason), 0xFF6347)
					--sampSendChat(string.format("[Лог F.A.] %s[%d] кикнул %s[%d] по причине: %s. [test]", my_nick,idzd, nickban, id, reason))
					for _, handles in ipairs(getAllChars()) do
						if doesCharExist(handles) then
							emul_rpc('onPlayerStreamOut', { id })
						end
					end
				else
               		sampAddChatMessage(" Игрок оффлайн", 0xAFAFAF)
            	end
		else
			sampAddChatMessage(string.format(" Введите: /kick [playerid] [причина]"), 0xFFFFFF)
		end
		--local _, idban = sampGetPlayerIdByCharHandle(params)
		--nickban = sampGetPlayerNickname(idban)
	end
end
function AadCHAT(params)
	if podadminkoi == 1 then
		if #params == 0 then
			sampAddChatMessage(" Введите: /oa [текст]", 0xFFFFFF)
		else
			sampAddChatMessage(string.format(" Основатель %s  %s", my_nick, params), 0xeede07AA)
			--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
			--sampSendChat(string.format("[Лог F.A.] %s[%d] написал в /aad %s. [test]", my_nick,idzd, params))
		end
	end
end
function banip(params)
	if podadminkoi == 1 then
		if #params == 0 then
			sampAddChatMessage(" Введите: /banip [IP]", 0xFFFFFF)
		else
			--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
			sampAddChatMessage(string.format(" %s забанил IP: %s", my_nick, params), 0xFF6347)
			--sampSendChat(string.format("[Лог F.A.] %s[%d] забанил IP: %s. [test]", my_nick,idzd, params))
		end
	end
end
function TeleportList()
	--if podadminkoi == 1 then
	if podadminkoi == 0 then return end
	 sampShowDialog(2000, "Телепорт", string.format("[0] Основное\n[1] Мафии\n[2] Банды\n[3] Порты\n[4] Остальное\n[5] Полиция\n[6] АММО / МО\n[7] Мероприятия\n[8] Байкеры"), "Выбрать", "Назад", 2)
	--end
end
function cmd(params)
	if podadminkoi == 0 then return end
	local id = tonumber(params)
	if id ~= nil then
		MODEL = id
	else
		sampAddChatMessage(string.format(" Введите: /setskin [id]"), 0xFFFFFFFF)
		return false
	end
	if id > 0 then
		local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
		set_player_skin(id, MODEL)
		--sampSendChat(string.format("[Лог F.A.] %s[%d] сменил себе скин на %d. [test]", my_nick,id, MODEL))
	end
end
function set_player_skin(id, skin)
 local BS = raknetNewBitStream()
 raknetBitStreamWriteInt32(BS, id)
 raknetBitStreamWriteInt32(BS, skin)
 raknetEmulRpcReceiveBitStream(153, BS)
 raknetDeleteBitStream(BS)
end
function ev.onSendPlayerSync(d)
	if a then 
		x,y,z  = getCharCoordinates(playerPed)
		xx,yy,zz  = getCharCoordinates(select(2,sampGetCharHandleBySampPlayerId(id)))
		if (getDistanceBetweenCoords3d(x, y, z, xx, yy, zz) < 200.0) then
			d.position = {x = x, y = y, z = z-7}
			return false 
		else printStyledString('~w~RECON ~r~OFF~n~~r~PLAYER DISCONNECT', 5000, 4); OffRecon()
			--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
			--sampSendChat(string.format("[Лог F.A.] %s[%d] вышел из рекона. [test]", my_nick,idzd))
		end
	end
end

function ev.onPlayerChatBubble(i, c, _, d, m)
	if a then return {i, c, 666.6, d, m} end
end

function OffRecon()
	if a == true then

		a = false
		emul_rpc('onTogglePlayerSpectating', { false })
		restoreCamera();setCameraBehindPlayer()
		freezeCharPosition(playerPed, a)
		--sampTextdrawDelete(td_Id)
		deleteMenu(menu)
		--local _, idzd = sampGetPlayerIdByCharHandle(PLAYER_PED)
		--sampSendChat(string.format("[Лог F.A.] %s[%d] вышел из рекона. [test]", my_nick,idzd))
	end
end
function emul_rpc(hook, parameters)
    local bs_io = require 'samp.events.bitstream_io'
    local handler = require 'samp.events.handlers'
    local extra_types = require 'samp.events.extra_types'
    local hooks = {

        --[[ Outgoing rpcs
        ['onSendEnterVehicle'] = { 'int16', 'bool8', 26 },
        ['onSendClickPlayer'] = { 'int16', 'int8', 23 },
        ['onSendClientJoin'] = { 'int32', 'int8', 'string8', 'int32', 'string8', 'string8', 'int32', 25 },
        ['onSendEnterEditObject'] = { 'int32', 'int16', 'int32', 'vector3d', 27 },
        ['onSendCommand'] = { 'string32', 50 },
        ['onSendSpawn'] = { 52 },
        ['onSendDeathNotification'] = { 'int8', 'int16', 53 },
        ['onSendDialogResponse'] = { 'int16', 'int8', 'int16', 'string8', 62 },
        ['onSendClickTextDraw'] = { 'int16', 83 },
        ['onSendVehicleTuningNotification'] = { 'int32', 'int32', 'int32', 'int32', 96 },
        ['onSendChat'] = { 'string8', 101 },
        ['onSendClientCheckResponse'] = { 'int8', 'int32', 'int8', 103 },
        ['onSendVehicleDamaged'] = { 'int16', 'int32', 'int32', 'int8', 'int8', 106 },
        ['onSendEditAttachedObject'] = { 'int32', 'int32', 'int32', 'int32', 'vector3d', 'vector3d', 'vector3d', 'int32', 'int32', 116 },
        ['onSendEditObject'] = { 'bool', 'int16', 'int32', 'vector3d', 'vector3d', 117 },
        ['onSendInteriorChangeNotification'] = { 'int8', 118 },
        ['onSendMapMarker'] = { 'vector3d', 119 },
        ['onSendRequestClass'] = { 'int32', 128 },
        ['onSendRequestSpawn'] = { 129 },
        ['onSendPickedUpPickup'] = { 'int32', 131 },
        ['onSendMenuSelect'] = { 'int8', 132 },
        ['onSendVehicleDestroyed'] = { 'int16', 136 },
        ['onSendQuitMenu'] = { 140 },
        ['onSendExitVehicle'] = { 'int16', 154 },
        ['onSendUpdateScoresAndPings'] = { 155 },
        ['onSendGiveDamage'] = { 'int16', 'float', 'int32', 'int32', 115 },
        ['onSendTakeDamage'] = { 'int16', 'float', 'int32', 'int32', 115 },]]

        -- Incoming rpcs
        ['onInitGame'] = { 139 },
        ['onPlayerJoin'] = { 'int16', 'int32', 'bool8', 'string8', 137 },
        ['onPlayerQuit'] = { 'int16', 'int8', 138 },
        ['onRequestClassResponse'] = { 'bool8', 'int8', 'int32', 'int8', 'vector3d', 'float', 'Int32Array3', 'Int32Array3', 128 },
        ['onRequestSpawnResponse'] = { 'bool8', 129 },
        ['onSetPlayerName'] = { 'int16', 'string8', 'bool8', 11 },
        ['onSetPlayerPos'] = { 'vector3d', 12 },
        ['onSetPlayerPosFindZ'] = { 'vector3d', 13 },
        ['onSetPlayerHealth'] = { 'float', 14 },
        ['onTogglePlayerControllable'] = { 'bool8', 15 },
        ['onPlaySound'] = { 'int32', 'vector3d', 16 },
        ['onSetWorldBounds'] = { 'float', 'float', 'float', 'float', 17 },
        ['onGivePlayerMoney'] = { 'int32', 18 },
        ['onSetPlayerFacingAngle'] = { 'float', 19 },
        --['onResetPlayerMoney'] = { 20 },
        --['onResetPlayerWeapons'] = { 21 },
        ['onGivePlayerWeapon'] = { 'int32', 'int32', 22 },
        --['onCancelEdit'] = { 28 },
        ['onSetPlayerTime'] = { 'int8', 'int8', 29 },
        ['onSetToggleClock'] = { 'bool8', 30 },
        ['onPlayerStreamIn'] = { 'int16', 'int8', 'int32', 'vector3d', 'float', 'int32', 'int8', 32 },
        ['onSetShopName'] = { 'string256', 33 },
        ['onSetPlayerSkillLevel'] = { 'int16', 'int32', 'int16', 34 },
        ['onSetPlayerDrunk'] = { 'int32', 35 },
        ['onCreate3DText'] = { 'int16', 'int32', 'vector3d', 'float', 'bool8', 'int16', 'int16', 'encodedString4096', 36 },
        --['onDisableCheckpoint'] = { 37 },
        ['onSetRaceCheckpoint'] = { 'int8', 'vector3d', 'vector3d', 'float', 38 },
        --['onDisableRaceCheckpoint'] = { 39 },
        --['onGamemodeRestart'] = { 40 },
        ['onPlayAudioStream'] = { 'string8', 'vector3d', 'float', 'bool8', 41 },
        --['onStopAudioStream'] = { 42 },
        ['onRemoveBuilding'] = { 'int32', 'vector3d', 'float', 43 },
        ['onCreateObject'] = { 44 },
        ['onSetObjectPosition'] = { 'int16', 'vector3d', 45 },
        ['onSetObjectRotation'] = { 'int16', 'vector3d', 46 },
        ['onDestroyObject'] = { 'int16', 47 },
        ['onPlayerDeathNotification'] = { 'int16', 'int16', 'int8', 55 },
        ['onSetMapIcon'] = { 'int8', 'vector3d', 'int8', 'int32', 'int8', 56 },
        ['onRemoveVehicleComponent'] = { 'int16', 'int16', 57 },
        ['onRemove3DTextLabel'] = { 'int16', 58 },
        ['onPlayerChatBubble'] = { 'int16', 'int32', 'float', 'int32', 'string8', 59 },
        ['onUpdateGlobalTimer'] = { 'int32', 60 },
        ['onShowDialog'] = { 'int16', 'int8', 'string8', 'string8', 'string8', 'encodedString4096', 61 },
        ['onDestroyPickup'] = { 'int32', 63 },
        ['onLinkVehicleToInterior'] = { 'int16', 'int8', 65 },
        ['onSetPlayerArmour'] = { 'float', 66 },
        ['onSetPlayerArmedWeapon'] = { 'int32', 67 },
        ['onSetSpawnInfo'] = { 'int8', 'int32', 'int8', 'vector3d', 'float', 'Int32Array3', 'Int32Array3', 68 },
        ['onSetPlayerTeam'] = { 'int16', 'int8', 69 },
        ['onPutPlayerInVehicle'] = { 'int16', 'int8', 70 },
        --['onRemovePlayerFromVehicle'] = { 71 },
        ['onSetPlayerColor'] = { 'int16', 'int32', 72 },
        ['onDisplayGameText'] = { 'int32', 'int32', 'string32', 73 },
        --['onForceClassSelection'] = { 74 },
        ['onAttachObjectToPlayer'] = { 'int16', 'int16', 'vector3d', 'vector3d', 75 },
        ['onInitMenu'] = { 76 },
        ['onShowMenu'] = { 'int8', 77 },
        ['onHideMenu'] = { 'int8', 78 },
        ['onCreateExplosion'] = { 'vector3d', 'int32', 'float', 79 },
        ['onShowPlayerNameTag'] = { 'int16', 'bool8', 80 },
        ['onAttachCameraToObject'] = { 'int16', 81 },
        ['onInterpolateCamera'] = { 'bool', 'vector3d', 'vector3d', 'int32', 'int8', 82 },
        ['onGangZoneStopFlash'] = { 'int16', 85 },
        ['onApplyPlayerAnimation'] = { 'int16', 'string8', 'string8', 'bool', 'bool', 'bool', 'bool', 'int32', 86 },
        ['onClearPlayerAnimation'] = { 'int16', 87 },
        ['onSetPlayerSpecialAction'] = { 'int8', 88 },
        ['onSetPlayerFightingStyle'] = { 'int16', 'int8', 89 },
        ['onSetPlayerVelocity'] = { 'vector3d', 90 },
        ['onSetVehicleVelocity'] = { 'bool8', 'vector3d', 91 },
        ['onServerMessage'] = { 'int32', 'string32', 93 },
        ['onSetWorldTime'] = { 'int8', 94 },
        ['onCreatePickup'] = { 'int32', 'int32', 'int32', 'vector3d', 95 },
        ['onMoveObject'] = { 'int16', 'vector3d', 'vector3d', 'float', 'vector3d', 99 },
        ['onEnableStuntBonus'] = { 'bool', 104 },
        ['onTextDrawSetString'] = { 'int16', 'string16', 105 },
        ['onSetCheckpoint'] = { 'vector3d', 'float', 107 },
        ['onCreateGangZone'] = { 'int16', 'vector2d', 'vector2d', 'int32', 108 },
        ['onPlayCrimeReport'] = { 'int16', 'int32', 'int32', 'int32', 'int32', 'vector3d', 112 },
        ['onGangZoneDestroy'] = { 'int16', 120 },
        ['onGangZoneFlash'] = { 'int16', 'int32', 121 },
        ['onStopObject'] = { 'int16', 122 },
        ['onSetVehicleNumberPlate'] = { 'int16', 'string8', 123 },
        ['onTogglePlayerSpectating'] = { 'bool32', 124 },
        ['onSpectatePlayer'] = { 'int16', 'int8', 126 },
        ['onSpectateVehicle'] = { 'int16', 'int8', 127 },
        ['onShowTextDraw'] = { 134 },
        ['onSetPlayerWantedLevel'] = { 'int8', 133 },
        ['onTextDrawHide'] = { 'int16', 135 },
        ['onRemoveMapIcon'] = { 'int8', 144 },
        ['onSetWeaponAmmo'] = { 'int8', 'int16', 145 },
        ['onSetGravity'] = { 'float', 146 },
        ['onSetVehicleHealth'] = { 'int16', 'float', 147 },
        ['onAttachTrailerToVehicle'] = { 'int16', 'int16', 148 },
        ['onDetachTrailerFromVehicle'] = { 'int16', 149 },
        ['onSetWeather'] = { 'int8', 152 },
        ['onSetPlayerSkin'] = { 'int32', 'int32', 153 },
        ['onSetInterior'] = { 'int8', 156 },
        ['onSetCameraPosition'] = { 'vector3d', 157 },
        ['onSetCameraLookAt'] = { 'vector3d', 'int8', 158 },
        ['onSetVehiclePosition'] = { 'int16', 'vector3d', 159 },
        ['onSetVehicleAngle'] = { 'int16', 'float', 160 },
        ['onSetVehicleParams'] = { 'int16', 'int16', 'bool8', 161 },
        --['onSetCameraBehind'] = { 162 },
        ['onChatMessage'] = { 'int16', 'string8', 101 },
        ['onConnectionRejected'] = { 'int8', 130 },
        ['onPlayerStreamOut'] = { 'int16', 163 },
        ['onVehicleStreamIn'] = { 164 },
        ['onVehicleStreamOut'] = { 'int16', 165 },
        ['onPlayerDeath'] = { 'int16', 166 },
        ['onPlayerEnterVehicle'] = { 'int16', 'int16', 'bool8', 26 },
        ['onUpdateScoresAndPings'] = { 'PlayerScorePingMap', 155 },
        ['onSetObjectMaterial'] = { 84 },
        ['onSetObjectMaterialText'] = { 84 },
        ['onSetVehicleParamsEx'] = { 'int16', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 'int8', 24 },
        ['onSetPlayerAttachedObject'] = { 'int16', 'int32', 'bool', 'int32', 'int32', 'vector3d', 'vector3d', 'vector3d', 'int32', 'int32', 113 }

    }
    local handler_hook = {
        ['onInitGame'] = true,
        ['onCreateObject'] = true,
        ['onInitMenu'] = true,
        ['onShowTextDraw'] = true,
        ['onVehicleStreamIn'] = true,
        ['onSetObjectMaterial'] = true,
        ['onSetObjectMaterialText'] = true
    }
    local extra = {
        ['PlayerScorePingMap'] = true,
        ['Int32Array3'] = true
    }
    local hook_table = hooks[hook]
    if hook_table then
        local bs = raknetNewBitStream()
        if not handler_hook[hook] then
            local max = #hook_table-1
            if max > 0 then
                for i = 1, max do
                    local p = hook_table[i]
                    if extra[p] then extra_types[p]['write'](bs, parameters[i])
                    else bs_io[p]['write'](bs, parameters[i]) end
                end
            end
        else
            if hook == 'onInitGame' then handler.on_init_game_writer(bs, parameters)
            elseif hook == 'onCreateObject' then handler.on_create_object_writer(bs, parameters)
            elseif hook == 'onInitMenu' then handler.on_init_menu_writer(bs, parameters)
            elseif hook == 'onShowTextDraw' then handler.on_show_textdraw_writer(bs, parameters)
            elseif hook == 'onVehicleStreamIn' then handler.on_vehicle_stream_in_writer(bs, parameters)
            elseif hook == 'onSetObjectMaterial' then handler.on_set_object_material_writer(bs, parameters, 1)
            elseif hook == 'onSetObjectMaterialText' then handler.on_set_object_material_writer(bs, parameters, 2) end
        end
        raknetEmulRpcReceiveBitStream(hook_table[#hook_table], bs)
        raknetDeleteBitStream(bs)
    end
end
function sendEmptyPacket(id)
	local bs = raknetNewBitStream()
	raknetBitStreamWriteInt8(bs, id)
	raknetSendBitStream(bs)
	raknetDeleteBitStream(bs)
end

function closeConnect()
	local bs = raknetNewBitStream()
	raknetEmulPacketReceiveBitStream(PACKET_DISCONNECTION_NOTIFICATION, bs)
	raknetDeleteBitStream(bs)
end
function cmdpm(bc)
	if podadminkoi == 1 then
		local id, text = string.match(bc, '(%d+)%s*(.*)')
		if id ~= nil then
			--if id >= 0 and id < 1000 then
        	   	if sampIsPlayerConnected(id) then
				   nickpm = sampGetPlayerNickname(id)
					if #text == 0 then sampAddChatMessage(string.format(" Введите: /pm [playerid] [текст]"), 0xFFFFFF) return end
					-- function give_player_weapon uses 'wait', but it's being called from command callback, so it's necessary to run the function as a thread
					if id == idz then
						sampAddChatMessage(string.format(" Администратор %s[%d]: %s", my_nick, idz, text), 0xD97700)
					end
					sampAddChatMessage(string.format("Администратор %s[%d] к %s[%d]: %s", my_nick, idz,nickpm, id, text), 0xD97700)
				else
               		sampAddChatMessage(" Игрок оффлайн", 0xAFAFAF)
            	end
		else
			sampAddChatMessage(string.format(" Введите: /pm [id] [текст]"), 0xFFFFFF)
		end
		--local _, idban = sampGetPlayerIdByCharHandle(params)
		--nickban = sampGetPlayerNickname(idban)
	end
end
function slapcmd(i)
if podadminkoi == 0 then return end
	if #i == 0 then sampAddChatMessage(" Введите: /slap [playerid]", -1) return end
	id = tonumber(i)
	if sampIsPlayerConnected(id) then
		if not i:match('(%d+)') then
			sampAddChatMessage(" Игрок оффлайн", 0xAFAFAF)
		else
			--a = true
			--printStringNow('RECON IN PLAYER '.. sampGetPlayerNickname(id) .. '[' .. id .. ']', 1666)
			--freezeCharPosition(playerPed, true)
			--setCameraInFrontOfChar(select(2,sampGetCharHandleBySampPlayerId(id)))
			sampAddChatMessage(string.format(" %s подкинул игрока %s", my_nick,sampGetPlayerNickname(id), id), 0xFF6347)
		end
	else
		sampAddChatMessage(" Игрок оффлайн", 0xAFAFAF)
	end
end
function sampev.onSendSpectatorSync(bs)
	return false
end