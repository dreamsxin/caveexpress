#pragma once

#include "client/entities/ClientEntity.h"

class ClientNPC: public ClientEntity {
private:
	uint32_t _speechBubbleDelay;

	ClientNPC(const EntityType& type, uint16_t id, const Animation& animation, float x, float y, float sizeX, float sizeY,
			const SoundMapping& soundMapping, EntityAlignment align);
public:
	class Factory: public IClientEntityFactory {
		ClientEntityPtr create(const ClientEntityFactoryContext *ctx) const;
	};
	static Factory FACTORY;

	virtual ~ClientNPC();

	void setTargetCave(uint8_t caveNumber, short delay);

	// ClientEntity
	void changeState(uint8_t state) override;
	bool update(uint32_t deltaTime, bool lerpPos) override;
};

typedef ClientNPC* ClientNPCPtr;