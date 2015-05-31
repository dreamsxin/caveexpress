#pragma once

#include "common/network/IProtocolHandler.h"
#include "common/network/messages/UpdatePointsMessage.h"
#include "client/ui/UI.h"
#include "client/ui/nodes/UINodePoint.h"
#include "client/ui/windows/IUIMapWindow.h"

class UpdatePointsHandler: public IClientProtocolHandler {
public:
	void execute (const IProtocolMessage& message) override
	{
		const UpdatePointsMessage *msg = static_cast<const UpdatePointsMessage*>(&message);
		const uint16_t points = msg->getPoints();
		UINodePoint* node = UI::get().getNode<UINodePoint>(UI_WINDOW_MAP, UINODE_POINTS);
		if (!node)
			return;
		node->increasePoints(points);
		node->flash();
	}
};