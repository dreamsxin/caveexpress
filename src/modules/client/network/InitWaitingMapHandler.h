#pragma once

#include "network/IProtocolHandler.h"
#include "ui/windows/IUIMapWindow.h"
#include "ui/UI.h"
#include "service/ServiceProvider.h"

/**
 * @brief The server is done loading everything and now waits for the client to start the session.
 */
class InitWaitingMapHandler: public ClientProtocolHandler<InitWaitingMapMessage> {
private:
	ServiceProvider& _serviceProvider;
public:
	InitWaitingMapHandler (ServiceProvider& serviceProvider) :
			_serviceProvider(serviceProvider)
	{
	}

	void execute (const InitWaitingMapMessage* msg) override
	{
		IUIMapWindow* window = static_cast<IUIMapWindow*>(UI::get().getWindow(UI_WINDOW_MAP));
		window->initWaitingForPlayers(_serviceProvider.getNetwork().isServer());
	}
};
