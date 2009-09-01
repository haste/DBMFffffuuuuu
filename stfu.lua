ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", function(self, event, msg)
	return msg:sub(1, 5) == '<DBM>'
end)

ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_WARNING", function(self, event, msg)
	return msg:sub(1,3) == "***" and msg:sub(-3) == "***"
end)

local org = RaidNotice_AddMessage
function RaidNotice_AddMessage(noticeFrame, msg, colorInfo, ...)
	if(not (msg:sub(1,3) == "***" and msg:sub(-3) == "***")) then
		return org(noticeFrame, msg, colorInfo, ...)
	end
end
