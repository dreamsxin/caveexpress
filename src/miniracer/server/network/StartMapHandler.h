#pragma once

#include "network/IProtocolHandler.h"
#include "miniracer/server/map/Map.h"

namespace miniracer {

class StartMapHandler: public IServerProtocolHandler {
private:
	Map& _map;
public:
	StartMapHandler (Map& map) :
			_map(map)
	{
	}

	void execute (const ClientId& clientId, const IProtocolMessage& message) override
	{
		if (!_map.isReadyToStart()) {
			_map.sendMessage(clientId, "Not enough players yet");
			return;
		}
		_map.startMap();
	}
};

}
