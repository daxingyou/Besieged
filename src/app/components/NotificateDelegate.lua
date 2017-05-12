--[[
	使用时需定义notifications方法，返回要接受的消息名字
]]
local delegate = {}

function delegate.add(instance, flag)
	if instance.notifications then
		local notificates = instance:notifications()
		for _, v in pairs(notificates) do
			game.NotificationManager.add(v, flag, function (...)
				if instance[v] and type(instance[v]) == "function" then
					instance[v](instance, ...)
				end
			end)
		end
	end
end

function delegate.remove( instance, flag )
	if instance.notifications then
		local notificates = instance:notifications()
		for _, v in pairs(notificates) do
			game.NotificationManager.erase(v, flag)
		end
	end
end

return delegate