
local BaseView = class("BaseView")

function BaseView.ctor( ... )

end

function BaseView:destroy( ... )
	game.LayerManager.removeLayout(self.__cname)
end

function BaseView:notifications( ... )
	return {

	}
end

function BaseView:onEnter( ... )
	
end

function BaseView:onExit( ... )
	
end

function BaseView:init( csb )
	print("BaseView init "..self.__cname)
	self._mainLayer = game.UIManager.loadCSB("ui/"..csb..".csb")
	self._mainLayer:onNodeEvent("enter", function ( ... )
		game.NotificateDelegate.add(self, self.__cname)
		if self.onEnter then
			self:onEnter()
		end
	end)
	self._mainLayer:onNodeEvent("exit", function ( ... )
		game.NotificateDelegate.remove(self, self.__cname)
		if self.onExit then
			self:onExit()
		end
	end)

	game.LayerManager.addLayout(self._mainLayer, self.__cname)
end

function BaseView:binding( widget, callbackName )
	if widget then
		widget:addClickEventListener(function ( ... )
			self[callbackName](self, ...)
		end)
	end
end

return BaseView