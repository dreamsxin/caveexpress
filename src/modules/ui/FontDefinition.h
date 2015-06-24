#pragma once

#include "common/Pointers.h"
#include "common/NonCopyable.h"
#include <map>
#include <string>
#include <vector>
#include <stdint.h>

class FontChar {
private:
	std::string character;
	int width;
	int x;
	int y;
	int w;
	int h;
	int ox;
	int oy;
	float widthFactor;
	float heightFactor;
public:
	FontChar (const std::string& _character, int _width, int _x, int _y, int _w, int _h, int _ox, int _oy) :
			character(_character), width(_width), x(_x), y(_y), w(_w), h(_h), ox(_ox), oy(_oy), widthFactor(1.0f), heightFactor(
					1.0f)
	{
	}
	inline void setWidthFactor (float _widthFactor)
	{
		widthFactor = _widthFactor;
	}
	inline void setHeightFactor (float _heightFactor)
	{
		heightFactor = _heightFactor;
	}
	inline const std::string& getCharacter () const
	{
		return character;
	}
	inline int getWidth () const
	{
		const float nwidth = width * widthFactor;
		return nwidth + 0.5f;
	}
	inline int getX () const
	{
		const float nx = x * widthFactor;
		return nx;
	}
	inline int getY () const
	{
		const float ny = y * heightFactor;
		return ny;
	}
	inline int getW () const
	{
		const float nw = w * widthFactor;
		return nw + 0.5f;
	}
	inline int getH () const
	{
		const float nh = h * heightFactor;
		return nh + 0.5f;
	}
	inline int getOX () const
	{
		const float nox = ox * widthFactor;
		return nox;
	}
	inline int getOY () const
	{
		const float noy = oy * heightFactor;
		return noy;
	}
};

class FontDef {
private:
	std::map<std::string, FontChar*> _fontCharMap;
public:
	FontDef (const std::string& _id, int _height, int _metricsHeight, int _metricsAscender, int _metricsDescender) :
			id(_id), textureWidth(0), textureHeight(0), textureName(""), height(_height), metricsHeight(_metricsHeight), metricsAscender(
					_metricsAscender), metricsDescender(_metricsDescender), _heightFactor(1.0f), _widthFactor(1.0f)
	{
	}

	FontDef &operator= (const FontDef &r)
	{
		return *this;
	}

	// the id if the fontdef
	const std::string id;
	int textureWidth;
	int textureHeight;
	std::string textureName;

private:
	int height;
	int metricsHeight;
	int metricsAscender;
	int metricsDescender;

	float _heightFactor;
	float _widthFactor;

public:

	inline int getHeight () const
	{
		const float newHeight = this->height * _heightFactor;
		return newHeight + 0.5f;
	}

	inline int getMetricsHeight () const
	{
		return metricsHeight * _heightFactor;
	}
	inline int getMetricsAscender () const
	{
		return metricsAscender * _heightFactor;
	}
	inline int getMetricsDescender () const
	{
		return metricsDescender * _heightFactor;
	}

	std::vector<FontChar> fontChars;

	const FontChar* getFontChar (char character);

	void updateChars (int textureWidth, int textureHeight);
};

typedef SharedPtr<FontDef> FontDefPtr;
typedef std::map<std::string, FontDefPtr> FontDefMap;
typedef FontDefMap::const_iterator FontDefMapConstIter;

class FontDefinition {
private:
	FontDefMap _fontDefs;
public:
	FontDefinition();

	FontDefPtr getFontDefinition (const std::string& fontName) const;

	FontDefMapConstIter begin () const
	{
		return _fontDefs.begin();
	}

	FontDefMapConstIter end () const
	{
		return _fontDefs.end();
	}

	virtual ~FontDefinition() {}
};
