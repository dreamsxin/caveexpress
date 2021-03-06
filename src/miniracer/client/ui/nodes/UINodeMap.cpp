#include "UINodeMap.h"
#include "network/ProtocolHandlerRegistry.h"
#include "client/network/AddEntityHandler.h"
#include "client/network/InitDoneHandler.h"
#include "miniracer/client/MiniRacerClientMap.h"

namespace miniracer {

UINodeMap::UINodeMap (IFrontend *frontend, ServiceProvider& serviceProvider, CampaignManager& campaignManager, int x, int y, int width, int height, MiniRacerClientMap& map) :
		IUINodeMap(frontend, serviceProvider, campaignManager, x, y, width, height, map)
{
	ProtocolHandlerRegistry& r = ProtocolHandlerRegistry::get();
	r.registerClientHandler(::protocol::PROTO_ADDENTITY, new AddEntityHandler(_map));
	r.registerClientHandler(::protocol::PROTO_INITDONE, new InitDoneHandler(_map));
}

UINodeMap::~UINodeMap ()
{
	ProtocolHandlerRegistry& r = ProtocolHandlerRegistry::get();
	r.unregisterClientHandler(::protocol::PROTO_ADDENTITY);
	r.unregisterClientHandler(::protocol::PROTO_INITDONE);
}

}
