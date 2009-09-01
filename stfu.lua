ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", function(self, event, msg)
	return msg:sub(1, 5) == '<DBM>'
end)

