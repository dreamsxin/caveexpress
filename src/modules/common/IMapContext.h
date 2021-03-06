#pragma once

#include "common/IMap.h"
#include "common/ThemeType.h"
#include "common/MapSettings.h"
#include "common/MapTileDefinition.h"
#include "common/EmitterDefinition.h"
#include <string>
#include <vector>
#include <map>

class IMapContext {
protected:
	IMap::StartPositions _startPositions;
	IMap::SettingsMap _settings;
	std::string _name;
	std::string _title;
	const ThemeType* _theme;
	std::vector<MapTileDefinition> _definitions;
	std::vector<EmitterDefinition> _emitters;

	inline void resetTiles () {
		// keep settings and name
		_definitions.clear();
		_emitters.clear();
	}

public:
	IMapContext (const std::string &name) :
			_name(name), _theme(&ThemeTypes::ROCK)
	{
	}
	virtual ~IMapContext ()
	{
	}

	/**
	 * @brief Loads the map context with the name, theme, settings, emitters and tiles.
	 * @param[in] skipErrors if @c true, the load process should also continue if some previous step failed.
	 */
	virtual bool load (bool skipErrors) = 0;
	/**
	 * @brief Some contexts can save their current state into a file.
	 * @return @c false if there was an error
	 */
	virtual bool save () const = 0;

	// called whenever a new map was loaded
	virtual void onMapLoaded () {}

	const ThemeType& getTheme () const
	{
		return *_theme;
	}

	inline const std::string& getName () const
	{
		return _name;
	}

	inline const std::string& getTitle () const
	{
		return _title;
	}

	inline const IMap::SettingsMap& getSettings () const
	{
		return _settings;
	}

	inline const IMap::StartPositions& getStartPositions () const
	{
		return _startPositions;
	}

	inline const std::vector<MapTileDefinition>& getMapTileDefinitions () const
	{
		return _definitions;
	}

	inline const std::vector<EmitterDefinition>& getEmitterDefinitions () const
	{
		return _emitters;
	}

	inline void setSettings (const IMap::SettingsMap& settings)
	{
		_settings = settings;
	}

	inline void setStartPositions (const IMap::StartPositions& startPositions)
	{
		_startPositions = startPositions;
	}

	inline void setMapTileDefinitions (const std::vector<MapTileDefinition>& definitions)
	{
		_definitions = definitions;
	}

	inline void setEmitterDefinitions (const std::vector<EmitterDefinition>& emitters)
	{
		_emitters = emitters;
	}

	// shown in the game
	inline void setTitle (const std::string& title)
	{
		_title = title;
	}

	// e.g. the name or id of the map - can be used e.g. as a filename
	inline void setName (const std::string& name)
	{
		_name = name;
	}

	bool isLocationValid (gridCoord x, gridCoord y)
	{
		if (x + 0.000001f < 0.0f || y + 0.000001f < 0.0f)
			return false;
		const float mapWidth = string::toFloat(_settings[msn::WIDTH]);
		const float mapHeight = string::toFloat(_settings[msn::HEIGHT]);
		if (x > mapWidth + 0.000001f || y > mapHeight + 0.000001f)
			return false;
		return true;
	}
};

typedef std::shared_ptr<IMapContext> MapContextPtr;
