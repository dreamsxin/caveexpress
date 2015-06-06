#pragma once

#include "network/IProtocolHandler.h"
#include "caveexpress/shared/network/messages/AnnounceTargetCaveMessage.h"
#include "client/ClientMap.h"

class AnnounceTargetCaveHandler: public IClientProtocolHandler {
private:
	CaveExpressClientMap& _map;
public:
	AnnounceTargetCaveHandler(CaveExpressClientMap& map) :
			_map(map) {
	}

	void execute(const IProtocolMessage& message) override
	{
		const AnnounceTargetCaveMessage *msg = static_cast<const AnnounceTargetCaveMessage*>(&message);
		const uint16_t id = msg->getNpcId();
		const uint16_t delay = msg->getDelay();
		const uint8_t caveNumber = msg->getCaveNumber();
		ClientEntityPtr entity = _map.getEntity(id);
		if (entity && EntityTypes::isNpcCave(entity->getType())) {
			ClientNPC* npc = static_cast<ClientNPC*>(entity.get());
			npc->setTargetCave(caveNumber, delay);
		}
	}
};
