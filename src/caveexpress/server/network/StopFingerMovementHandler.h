#pragma once

#include "network/IProtocolHandler.h"
#include "caveexpress/server/map/Map.h"
#include "network/messages/FingerMovementMessage.h"

namespace caveexpress {

class StopFingerMovementHandler: public IServerProtocolHandler {
private:
	Map& _map;
public:
	StopFingerMovementHandler (Map& map) :
			_map(map)
	{
	}

	void execute (const ClientId& clientId, const IProtocolMessage& message) override
	{
		Player* player = _map.getPlayer(clientId);
		if (player == nullptr) {
			Log::error(LOG_GAMEIMPL, "movement for player with clientId %i failed", (int)clientId);
			return;
		}
		player->resetFingerAcceleration();
	}
};

}
