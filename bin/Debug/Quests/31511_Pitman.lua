local Ret = 0;
local NPC = 31511;

if (EVENT == 100) then
	SelectMsg(UID, 3, -1, 9170, NPC, 2017, 400, 7345, 160, 2020, 201);
end

if (EVENT == 400) then
	SelectMsg(UID, 4, 2016, 9172, NPC, 22, 150, 23, 241);
end

if (EVENT == 150) then
	ITEMA = HowmuchItem(UID, 900000000);
	Check = isRoomForItem(UID, 389132000);
	if (ITEMA < 1000000) then
		SelectMsg(UID, 2, -1, 9181, NPC, 18, 1000);
	else
		if (Check == -1) then
			SelectMsg(UID, 2, -1, 832, NPC, 27, 241);
		else
			GoldLose(UID, 1000000)
			GiveItem(UID, 389132000, 1)
		end
	end
end

if (EVENT == 1000) then
	ShowMap(UID, 336);
end

if (EVENT == 160) then
	SelectMsg(UID, 2, -1, 9169, NPC, 10, 241);
end

if (EVENT == 201) then
	ORE = HowmuchItem(UID, 399210000);
	GOLDORE = HowmuchItem(UID, 399200000);
	if (ORE < 1 and GOLDORE < 1) then
		SelectMsg(UID, 2, -1, 9179, NPC, 10, 241);
	elseif (ORE > 0) then
		SelectMsg(UID, 2, -1, 9171, NPC, 7253, 202);
	elseif (GOLDORE > 0) then
		SelectMsg(UID, 2, -1, 9171, NPC, 7254, 203);
	elseif (ORE > 0 and GOLDORE > 0) then
		SelectMsg(UID, 2, -1, 9171, NPC, 7253, 202, 7254, 203);
	end
end

if (EVENT == 202) then
	--RunExchange(UID, 100) -- Mysterious Ore Item Exchange
	SelectMsg(UID, 2, -1, 9176, NPC, 10, 241);
end

if (EVENT == 203) then
	--RunExchange(UID, 100) -- Mysterious Gold Ore Item Exchange
	SelectMsg(UID, 2, -1, 9176, NPC, 10, 241);
end

if (EVENT == 241) then
	Ret = 1;
end