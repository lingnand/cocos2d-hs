////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Label.hpp"
#include <2d/CCFont.h>
#include <2d/CCFontAtlas.h>
#include <2d/CCLabel.h>
#include <2d/CCSprite.h>
#include <base/ccTypes.h>
#include <math/CCGeometry.h>
#include <math/Vec2.h>
#include <renderer/CCTexture2D.h>
#include <string>

extern "C" {

void gendel__Font(cocos2d::Font const*self) {
delete self;
}

cocos2d::FontAtlas*genpop__Font_createFontAtlas(cocos2d::Font*self) {
return self->createFontAtlas();
}

int genpop__Font_getFontMaxHeight(cocos2d::Font*self) {
return self->getFontMaxHeight();
}

cocos2d::Ref const*gencast__Font__Ref(cocos2d::Font const*self) {
return self;
}

cocos2d::Font const*gencast__Ref__Font(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Font const*>(self);
}

cocos2d::FontAtlas*genpop__FontAtlas_new(cocos2d::Font*arg1_) {
cocos2d::Font&arg1 = *arg1_;
return new cocos2d::FontAtlas(arg1);
}

void gendel__FontAtlas(cocos2d::FontAtlas const*self) {
delete self;
}

void genpop__FontAtlas_addTexture(cocos2d::FontAtlas*self, cocos2d::Texture2D*arg1, int arg2) {
self->addTexture(arg1, arg2);
}

float genpop__FontAtlas_getLineHeight(cocos2d::FontAtlas*self) {
return self->getLineHeight();
}

void genpop__FontAtlas_setLineHeight(cocos2d::FontAtlas*self, float arg1) {
self->setLineHeight(arg1);
}

cocos2d::Texture2D*genpop__FontAtlas_getTexture(cocos2d::FontAtlas*self, int arg1) {
return self->getTexture(arg1);
}

cocos2d::Font const*genpop__FontAtlas_getFont(cocos2d::FontAtlas*self) {
return self->getFont();
}

void genpop__FontAtlas_purgeTexturesAtlas(cocos2d::FontAtlas*self) {
self->purgeTexturesAtlas();
}

void genpop__FontAtlas_setAntiAliasTexParameters(cocos2d::FontAtlas*self) {
self->setAntiAliasTexParameters();
}

void genpop__FontAtlas_setAliasTexParameters(cocos2d::FontAtlas*self) {
self->setAliasTexParameters();
}

cocos2d::Ref const*gencast__FontAtlas__Ref(cocos2d::FontAtlas const*self) {
return self;
}

cocos2d::FontAtlas const*gencast__Ref__FontAtlas(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::FontAtlas const*>(self);
}

void gendel__Label(cocos2d::Label const*self) {
delete self;
}

cocos2d::Label*genpop__Label_create() {
return cocos2d::Label::create();
}

cocos2d::Label*genpop__Label_createWithSystemFont(std::string const*arg1_, std::string const*arg2_, float arg3) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return cocos2d::Label::createWithSystemFont(arg1, arg2, arg3);
}

cocos2d::Label*genpop__Label_createWithSystemFontByDimensions(std::string const*arg1_, std::string const*arg2_, float arg3, cocos2d::Size const*arg4_) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
cocos2d::Size const&arg4 = *arg4_;
return cocos2d::Label::createWithSystemFont(arg1, arg2, arg3, arg4);
}

cocos2d::Label*genpop__Label_createWithSystemFontByDimensionsAndAlignments(std::string const*arg1_, std::string const*arg2_, float arg3, cocos2d::Size const*arg4_, cocos2d::TextHAlignment arg5, cocos2d::TextVAlignment arg6) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
cocos2d::Size const&arg4 = *arg4_;
return cocos2d::Label::createWithSystemFont(arg1, arg2, arg3, arg4, arg5, arg6);
}

cocos2d::Label*genpop__Label_createWithTTF(std::string const*arg1_, std::string const*arg2_, float arg3) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return cocos2d::Label::createWithTTF(arg1, arg2, arg3);
}

cocos2d::Label*genpop__Label_createWithTTFByDimensions(std::string const*arg1_, std::string const*arg2_, float arg3, cocos2d::Size const*arg4_) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
cocos2d::Size const&arg4 = *arg4_;
return cocos2d::Label::createWithTTF(arg1, arg2, arg3, arg4);
}

cocos2d::Label*genpop__Label_createWithTTFByDimensionsAndAlignments(std::string const*arg1_, std::string const*arg2_, float arg3, cocos2d::Size const*arg4_, cocos2d::TextHAlignment arg5, cocos2d::TextVAlignment arg6) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
cocos2d::Size const&arg4 = *arg4_;
return cocos2d::Label::createWithTTF(arg1, arg2, arg3, arg4, arg5, arg6);
}

cocos2d::Label*genpop__Label_createWithTTFConfig(cocos2d::TTFConfig const*arg1_, std::string const*arg2_, cocos2d::TextHAlignment arg3, int arg4) {
cocos2d::TTFConfig const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return cocos2d::Label::createWithTTF(arg1, arg2, arg3, arg4);
}

cocos2d::Label*genpop__Label_createWithBMFont(std::string const*arg1_, std::string const*arg2_, cocos2d::TextHAlignment arg3, int arg4, cocos2d::Vec2 const*arg5_) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
cocos2d::Vec2 const&arg5 = *arg5_;
return cocos2d::Label::createWithBMFont(arg1, arg2, arg3, arg4, arg5);
}

cocos2d::Label*genpop__Label_createWithCharMap(std::string const*arg1_, int arg2, int arg3, int arg4) {
std::string const&arg1 = *arg1_;
return cocos2d::Label::createWithCharMap(arg1, arg2, arg3, arg4);
}

cocos2d::Label*genpop__Label_createWithCharMapFromTexture(cocos2d::Texture2D*arg1, int arg2, int arg3, int arg4) {
return cocos2d::Label::createWithCharMap(arg1, arg2, arg3, arg4);
}

cocos2d::Label*genpop__Label_createWithCharMapFromPlist(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return cocos2d::Label::createWithCharMap(arg1);
}

bool genpop__Label_setTTFConfig(cocos2d::Label*self, cocos2d::TTFConfig const*arg1_) {
cocos2d::TTFConfig const&arg1 = *arg1_;
return self->setTTFConfig(arg1);
}

cocos2d::TTFConfig const*genpop__Label_getTTFConfig(cocos2d::Label*self) {
return &(self->getTTFConfig());
}

void genpop__Label_setBMFontFilePath(cocos2d::Label*self, std::string const*arg1_, cocos2d::Vec2 const*arg2_) {
std::string const&arg1 = *arg1_;
cocos2d::Vec2 const&arg2 = *arg2_;
self->setBMFontFilePath(arg1, arg2);
}

std::string const*genpop__Label_getBMFontFilePath(cocos2d::Label*self) {
return &(self->getBMFontFilePath());
}

void genpop__Label_setCharMap(cocos2d::Label*self, std::string const*arg1_, int arg2, int arg3, int arg4) {
std::string const&arg1 = *arg1_;
self->setCharMap(arg1, arg2, arg3, arg4);
}

void genpop__Label_setCharMapFromTexture(cocos2d::Label*self, cocos2d::Texture2D*arg1, int arg2, int arg3, int arg4) {
self->setCharMap(arg1, arg2, arg3, arg4);
}

void genpop__Label_setCharMapFromPlist(cocos2d::Label*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setCharMap(arg1);
}

void genpop__Label_setSystemFontName(cocos2d::Label*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setSystemFontName(arg1);
}

std::string const*genpop__Label_getSystemFontName(cocos2d::Label*self) {
return &(self->getSystemFontName());
}

void genpop__Label_setSystemFontSize(cocos2d::Label*self, float arg1) {
self->setSystemFontSize(arg1);
}

float genpop__Label_getSystemFontSize(cocos2d::Label*self) {
return self->getSystemFontSize();
}

void genpop__Label_requestSystemFontRefresh(cocos2d::Label*self) {
self->requestSystemFontRefresh();
}

void genpop__Label_setString(cocos2d::Label*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setString(arg1);
}

std::string const*genpop__Label_getString(cocos2d::Label*self) {
return &(self->getString());
}

int genpop__Label_getStringNumLines(cocos2d::Label*self) {
return self->getStringNumLines();
}

int genpop__Label_getStringLength(cocos2d::Label*self) {
return self->getStringLength();
}

void genpop__Label_setTextColor(cocos2d::Label*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->setTextColor(arg1);
}

cocos2d::Color4B const*genpop__Label_getTextColor(cocos2d::Label*self) {
return &(self->getTextColor());
}

void genpop__Label_enableShadow(cocos2d::Label*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableShadow(arg1);
}

void genpop__Label_enableShadowWithOffset(cocos2d::Label*self, cocos2d::Color4B const*arg1_, cocos2d::Size const*arg2_, int arg3) {
cocos2d::Color4B const&arg1 = *arg1_;
cocos2d::Size const&arg2 = *arg2_;
self->enableShadow(arg1, arg2, arg3);
}

void genpop__Label_enableOutline(cocos2d::Label*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableOutline(arg1);
}

void genpop__Label_enableOutlineWithSize(cocos2d::Label*self, cocos2d::Color4B const*arg1_, int arg2) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableOutline(arg1, arg2);
}

void genpop__Label_enableGlow(cocos2d::Label*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableGlow(arg1);
}

void genpop__Label_disableEffect(cocos2d::Label*self) {
self->disableEffect();
}

void genpop__Label_disableLabelEffect(cocos2d::Label*self, cocos2d::LabelEffect arg1) {
self->disableEffect(arg1);
}

cocos2d::TextHAlignment genpop__Label_getHorizontalAlignment(cocos2d::Label*self) {
return self->getHorizontalAlignment();
}

void genpop__Label_setHorizontalAlignment(cocos2d::Label*self, cocos2d::TextHAlignment arg1) {
self->setHorizontalAlignment(arg1);
}

cocos2d::TextVAlignment genpop__Label_getVerticalAlignment(cocos2d::Label*self) {
return self->getVerticalAlignment();
}

void genpop__Label_setVerticalAlignment(cocos2d::Label*self, cocos2d::TextVAlignment arg1) {
self->setVerticalAlignment(arg1);
}

void genpop__Label_setAlignment(cocos2d::Label*self, cocos2d::TextHAlignment arg1, cocos2d::TextVAlignment arg2) {
self->setAlignment(arg1, arg2);
}

void genpop__Label_setLineBreakWithoutSpace(cocos2d::Label*self, bool arg1) {
self->setLineBreakWithoutSpace(arg1);
}

void genpop__Label_setMaxLineWidth(cocos2d::Label*self, float arg1) {
self->setMaxLineWidth(arg1);
}

float genpop__Label_getMaxLineWidth(cocos2d::Label*self) {
return self->getMaxLineWidth();
}

float genpop__Label_getWidth(cocos2d::Label*self) {
return self->getWidth();
}

void genpop__Label_setWidth(cocos2d::Label*self, float arg1) {
self->setWidth(arg1);
}

float genpop__Label_getHeight(cocos2d::Label*self) {
return self->getHeight();
}

void genpop__Label_setHeight(cocos2d::Label*self, float arg1) {
self->setHeight(arg1);
}

cocos2d::Size const*genpop__Label_getDimensions(cocos2d::Label*self) {
return &(self->getDimensions());
}

void genpop__Label_setDimensions(cocos2d::Label*self, float arg1, float arg2) {
self->setDimensions(arg1, arg2);
}

void genpop__Label_updateContent(cocos2d::Label*self) {
self->updateContent();
}

cocos2d::Sprite*genpop__Label_getLetter(cocos2d::Label*self, int arg1) {
return self->getLetter(arg1);
}

bool genpop__Label_isClipMarginEnabled(cocos2d::Label*self) {
return self->isClipMarginEnabled();
}

void genpop__Label_setClipMarginEnabled(cocos2d::Label*self, bool arg1) {
self->setClipMarginEnabled(arg1);
}

float genpop__Label_getLineHeight(cocos2d::Label*self) {
return self->getLineHeight();
}

void genpop__Label_setLineHeight(cocos2d::Label*self, float arg1) {
self->setLineHeight(arg1);
}

float genpop__Label_getLineSpacing(cocos2d::Label*self) {
return self->getLineSpacing();
}

void genpop__Label_setLineSpacing(cocos2d::Label*self, float arg1) {
self->setLineSpacing(arg1);
}

float genpop__Label_getAdditionalKerning(cocos2d::Label*self) {
return self->getAdditionalKerning();
}

void genpop__Label_setAdditionalKerning(cocos2d::Label*self, float arg1) {
self->setAdditionalKerning(arg1);
}

cocos2d::FontAtlas*genpop__Label_getFontAtlas(cocos2d::Label*self) {
return self->getFontAtlas();
}

cocos2d::Node const*gencast__Label__Node(cocos2d::Label const*self) {
return self;
}

cocos2d::Ref const*gencast__Label__Ref(cocos2d::Label const*self) {
return self;
}

cocos2d::Label const*gencast__Node__Label(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::Label const*>(self);
}

cocos2d::Label const*gencast__Ref__Label(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Label const*>(self);
}

cocos2d::TTFConfig*genpop__TTFConfig_new(char const*arg1, float arg2) {
return new cocos2d::TTFConfig(arg1, arg2);
}

cocos2d::TTFConfig*genpop__TTFConfig_newWithGlyphCollection(char const*arg1, float arg2, cocos2d::GlyphCollection arg3, char const*arg4) {
return new cocos2d::TTFConfig(arg1, arg2, arg3, arg4);
}

cocos2d::TTFConfig*genpop__TTFConfig_newWithGlyphCollectionAndOutline(char const*arg1, float arg2, cocos2d::GlyphCollection arg3, char const*arg4, bool arg5, int arg6) {
return new cocos2d::TTFConfig(arg1, arg2, arg3, arg4, arg5, arg6);
}

void gendel__TTFConfig(cocos2d::TTFConfig const*self) {
delete self;
}

std::string const*genpop__TTFConfig_fontFilePath_get(cocos2d::TTFConfig const*self) {
return new std::string(self->fontFilePath);
}

void genpop__TTFConfig_fontFilePath_set(cocos2d::TTFConfig*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->fontFilePath = arg1;
}

float genpop__TTFConfig_fontSize_get(cocos2d::TTFConfig const*self) {
return self->fontSize;
}

void genpop__TTFConfig_fontSize_set(cocos2d::TTFConfig*self, float arg1) {
self->fontSize = arg1;
}

cocos2d::GlyphCollection genpop__TTFConfig_glyphs_get(cocos2d::TTFConfig const*self) {
return self->glyphs;
}

void genpop__TTFConfig_glyphs_set(cocos2d::TTFConfig*self, cocos2d::GlyphCollection arg1) {
self->glyphs = arg1;
}

char const*genpop__TTFConfig_customGlyphs_get(cocos2d::TTFConfig const*self) {
return self->customGlyphs;
}

void genpop__TTFConfig_customGlyphs_set(cocos2d::TTFConfig*self, char const*arg1) {
self->customGlyphs = arg1;
}

bool genpop__TTFConfig_distanceFieldEnabled_get(cocos2d::TTFConfig const*self) {
return self->distanceFieldEnabled;
}

void genpop__TTFConfig_distanceFieldEnabled_set(cocos2d::TTFConfig*self, bool arg1) {
self->distanceFieldEnabled = arg1;
}

int genpop__TTFConfig_outlineSize_get(cocos2d::TTFConfig const*self) {
return self->outlineSize;
}

void genpop__TTFConfig_outlineSize_set(cocos2d::TTFConfig*self, int arg1) {
self->outlineSize = arg1;
}

}  // extern "C"
