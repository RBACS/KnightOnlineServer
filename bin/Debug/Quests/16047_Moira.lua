local Ret = 0;
local NPC = 16047;

if (EVENT == 240) then
	QuestNum = SearchQuest(UID, NPC);
	if (QuestNum == 0) then
		SelectMsg(UID, 2, -1, 4030, NPC, 10, 241);
	elseif (QuestNum > 1 and  QuestNum < 100) then
		NpcMsg(UID, 4031, NPC)
	else
		EVENT = QuestNum
	end
end

if (EVENT == 241) then
	Ret = 1;
end

local savenum = 402 ;

if (EVENT == 280) then
	ItemA = HowmuchItem(UID, 379156000);
	ItemB = HowmuchItem(UID, 379155000);
	if (ItemA == 0 and ItemB == 0) then
		SelectMsg(UID, 2, savenum, 4032, NPC, 10, 241);
	elseif (ItemA > 0 and  ItemB == 0) then 
		EVENT = 282
	elseif (ItemB > 0 and ItemA == 0) then
		EVENT = 283
	else 
		SelectMsg(UID, 2, savenum, 4035, NPC, 4007, 282, 4008, 283);
	end
end

if (EVENT == 282) then
	SelectMsg(UID, 4, savenum, 4034, NPC, 4006, 284, 27, 241);
end

if (EVENT == 283) then
	SelectMsg(UID, 4, 403, 4033, NPC, 4006, 285, 27, 241);
end

if (EVENT == 284) then
	Check = CheckExchange(UID, 410)
	if (Check) then   
		Roll = RollDice(UID, 20) 
		found = Roll + 409
		RunExchange(UID, found);		 
	else
		Ret = 1; 
	end  
end

if (EVENT == 285) then
	Check = CheckExchange(UID, 430)
	if (Check) then   
		Roll = RollDice(UID, 20) 
		found = Roll + 429
		RunExchange(UID, found);		 
	else
		Ret = 1; 
	end  
end

local savenum = 409 ;

if (EVENT == 300) then
	ItemA = HowmuchItem(UID, 379106000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4142, NPC, 10, 241);
	else
		SelectMsg(UID, 2, savenum, 4141, NPC, 4006, 301, 4076, 241);
	end
end

if (EVENT == 301) then
	Check = CheckExchange(UID, 2001)
	if (Check) then
		Roll = RollDice(UID, 60) 
		found = Roll + 2000
		RunExchange(UID, found);	
	else
		Ret = 1; 
	end  
end

local savenum = 448;

if (EVENT == 400) then
	ItemA = HowmuchItem(UID, 379095000);
	if (ItemA == 0) then
		SelectMsg(UID, 2, savenum, 4664, NPC, 10, 241);
	else
		SelectMsg(UID, 4, savenum, 4665, NPC, 4006, 401, 27, 241);
	end
end

if (EVENT == 401) then
	Check = CheckExchange(UID, 2070)
	if (Check) then   
		Roll = RollDice(UID, 20) 
		found = Roll + 2069
		RunExchange(UID, found);		 
	else
		Ret = 1; 
	end  
end