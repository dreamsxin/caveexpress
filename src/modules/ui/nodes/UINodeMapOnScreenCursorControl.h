#pragma once

#include "ui/nodes/UINode.h"
#include "common/Direction.h"
#include "client/IMapControl.h"

class ClientMap;
class IUINodeMap;

// UI node that implements player controls via on screen hud elements
class UINodeMapOnScreenCursorControl: public UINode, public IMapControl {
private:
	ClientMap &_map;

	UINodeButton *_left;
	UINodeButton *_right;
	UINodeButton *_down;
	UINodeButton *_up;

public:
	UINodeMapOnScreenCursorControl (IFrontend *frontend, IUINodeMap *mapNode);
	virtual ~UINodeMapOnScreenCursorControl ();

	void hide () override { setVisible(false); }
	void show () override { setVisible(true); }

	// IMapControl
	bool isPressed () const override
	{
		return false;
	}

	// UINode
	bool isActive () const override;
};
