////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Widget.hpp"
#include <2d/CCNode.h>
#include <2d/CCProtectedNode.h>
#include <base/CCRef.h>
#include <base/ccTypes.h>
#include <cstddef>
#include <cstdint>
#include <math/CCGeometry.h>
#include <math/Vec2.h>
#include <memory>
#include <string>
#include <ui/UIButton.h>
#include <ui/UIHelper.h>
#include <ui/UILayout.h>
#include <ui/UIText.h>
#include <ui/UIWidget.h>

extern "C" {

void gendel__Button(cocos2d::ui::Button const*self) {
delete self;
}

cocos2d::ui::Button*genpop__Button_create() {
return cocos2d::ui::Button::create();
}

cocos2d::ui::Button*genpop__Button_createWithImages(std::string const*arg1_, std::string const*arg2_, std::string const*arg3_, cocos2d::ui::Widget::TextureResType arg4) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
std::string const&arg3 = *arg3_;
return cocos2d::ui::Button::create(arg1, arg2, arg3, arg4);
}

void genpop__Button_loadTextures(cocos2d::ui::Button*self, std::string const*arg1_, std::string const*arg2_, std::string const*arg3_, cocos2d::ui::Widget::TextureResType arg4) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
std::string const&arg3 = *arg3_;
self->loadTextures(arg1, arg2, arg3, arg4);
}

void genpop__Button_setCapInsets(cocos2d::ui::Button*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
self->setCapInsets(arg1);
}

bool genpop__Button_isScale9Enabled(cocos2d::ui::Button*self) {
return self->isScale9Enabled();
}

void genpop__Button_setScale9Enabled(cocos2d::ui::Button*self, bool arg1) {
self->setScale9Enabled(arg1);
}

void genpop__Button_setPressedActionEnabled(cocos2d::ui::Button*self, bool arg1) {
self->setPressedActionEnabled(arg1);
}

void genpop__Button_setTitleText(cocos2d::ui::Button*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setTitleText(arg1);
}

std::string const*genpop__Button_getTitleText(cocos2d::ui::Button*self) {
return new std::string(self->getTitleText());
}

void genpop__Button_setTitleColor(cocos2d::ui::Button*self, cocos2d::Color3B const*arg1_) {
cocos2d::Color3B const&arg1 = *arg1_;
self->setTitleColor(arg1);
}

cocos2d::Color3B const*genpop__Button_getTitleColor(cocos2d::ui::Button*self) {
return new cocos2d::Color3B(self->getTitleColor());
}

void genpop__Button_setTitleFontSize(cocos2d::ui::Button*self, float arg1) {
self->setTitleFontSize(arg1);
}

float genpop__Button_getTitleFontSize(cocos2d::ui::Button*self) {
return self->getTitleFontSize();
}

void genpop__Button_setTitleFontName(cocos2d::ui::Button*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setTitleFontName(arg1);
}

std::string const*genpop__Button_getTitleFontName(cocos2d::ui::Button*self) {
return new std::string(self->getTitleFontName());
}

void genpop__Button_setTitleHorizontalAlignment(cocos2d::ui::Button*self, cocos2d::TextHAlignment arg1) {
self->setTitleAlignment(arg1);
}

void genpop__Button_setTitleAlignment(cocos2d::ui::Button*self, cocos2d::TextHAlignment arg1, cocos2d::TextVAlignment arg2) {
self->setTitleAlignment(arg1, arg2);
}

void genpop__Button_setZoomScale(cocos2d::ui::Button*self, float arg1) {
self->setZoomScale(arg1);
}

float genpop__Button_getZoomScale(cocos2d::ui::Button*self) {
return self->getZoomScale();
}

cocos2d::ui::Widget const*gencast__Button__Widget(cocos2d::ui::Button const*self) {
return self;
}

cocos2d::ProtectedNode const*gencast__Button__ProtectedNode(cocos2d::ui::Button const*self) {
return self;
}

cocos2d::Node const*gencast__Button__Node(cocos2d::ui::Button const*self) {
return self;
}

cocos2d::Ref const*gencast__Button__Ref(cocos2d::ui::Button const*self) {
return self;
}

cocos2d::ui::Button const*gencast__Widget__Button(cocos2d::ui::Widget const*self) {
return dynamic_cast<cocos2d::ui::Button const*>(self);
}

cocos2d::ui::Button const*gencast__ProtectedNode__Button(cocos2d::ProtectedNode const*self) {
return dynamic_cast<cocos2d::ui::Button const*>(self);
}

cocos2d::ui::Button const*gencast__Node__Button(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::ui::Button const*>(self);
}

cocos2d::ui::Button const*gencast__Ref__Button(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::ui::Button const*>(self);
}

void gendel__Layout(cocos2d::ui::Layout const*self) {
delete self;
}

cocos2d::ui::Layout*genpop__Layout_create() {
return cocos2d::ui::Layout::create();
}

void genpop__Layout_setBackGroundImage(cocos2d::ui::Layout*self, std::string const*arg1_, cocos2d::ui::Widget::TextureResType arg2) {
std::string const&arg1 = *arg1_;
self->setBackGroundImage(arg1, arg2);
}

void genpop__Layout_setBackGroundImageCapInsets(cocos2d::ui::Layout*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
self->setBackGroundImageCapInsets(arg1);
}

cocos2d::Rect const*genpop__Layout_getBackGroundImageCapInsets(cocos2d::ui::Layout*self) {
return &(self->getBackGroundImageCapInsets());
}

void genpop__Layout_setBackGroundColorType(cocos2d::ui::Layout*self, cocos2d::ui::Layout::BackGroundColorType arg1) {
self->setBackGroundColorType(arg1);
}

cocos2d::ui::Layout::BackGroundColorType genpop__Layout_getBackGroundColorType(cocos2d::ui::Layout*self) {
return self->getBackGroundColorType();
}

void genpop__Layout_setBackGroundImageScale9Enabled(cocos2d::ui::Layout*self, bool arg1) {
self->setBackGroundImageScale9Enabled(arg1);
}

bool genpop__Layout_isBackGroundImageScale9Enabled(cocos2d::ui::Layout*self) {
return self->isBackGroundImageScale9Enabled();
}

void genpop__Layout_setBackGroundColor(cocos2d::ui::Layout*self, cocos2d::Color3B const*arg1_) {
cocos2d::Color3B const&arg1 = *arg1_;
self->setBackGroundColor(arg1);
}

cocos2d::Color3B const*genpop__Layout_getBackGroundColor(cocos2d::ui::Layout*self) {
return &(self->getBackGroundColor());
}

void genpop__Layout_setBackGroundGradientColor(cocos2d::ui::Layout*self, cocos2d::Color3B const*arg1_, cocos2d::Color3B const*arg2_) {
cocos2d::Color3B const&arg1 = *arg1_;
cocos2d::Color3B const&arg2 = *arg2_;
self->setBackGroundColor(arg1, arg2);
}

cocos2d::Color3B const*genpop__Layout_getBackGroundStartColor(cocos2d::ui::Layout*self) {
return &(self->getBackGroundStartColor());
}

cocos2d::Color3B const*genpop__Layout_getBackGroundEndColor(cocos2d::ui::Layout*self) {
return &(self->getBackGroundEndColor());
}

void genpop__Layout_setBackGroundColorOpacity(cocos2d::ui::Layout*self, uint8_t arg1) {
self->setBackGroundColorOpacity(arg1);
}

uint8_t genpop__Layout_getBackGroundColorOpacity(cocos2d::ui::Layout*self) {
return self->getBackGroundColorOpacity();
}

void genpop__Layout_setBackGroundColorVector(cocos2d::ui::Layout*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setBackGroundColorVector(arg1);
}

cocos2d::Vec2 const*genpop__Layout_getBackGroundColorVector(cocos2d::ui::Layout*self) {
return &(self->getBackGroundColorVector());
}

void genpop__Layout_setBackGroundImageColor(cocos2d::ui::Layout*self, cocos2d::Color3B const*arg1_) {
cocos2d::Color3B const&arg1 = *arg1_;
self->setBackGroundImageColor(arg1);
}

void genpop__Layout_setBackGroundImageOpacity(cocos2d::ui::Layout*self, uint8_t arg1) {
self->setBackGroundImageOpacity(arg1);
}

cocos2d::Color3B const*genpop__Layout_getBackGroundImageColor(cocos2d::ui::Layout*self) {
return &(self->getBackGroundImageColor());
}

uint8_t genpop__Layout_getBackGroundImageOpacity(cocos2d::ui::Layout*self) {
return self->getBackGroundImageOpacity();
}

void genpop__Layout_removeBackGroundImage(cocos2d::ui::Layout*self) {
self->removeBackGroundImage();
}

cocos2d::Size const*genpop__Layout_getBackGroundImageTextureSize(cocos2d::ui::Layout*self) {
return &(self->getBackGroundImageTextureSize());
}

void genpop__Layout_setClippingEnabled(cocos2d::ui::Layout*self, bool arg1) {
self->setClippingEnabled(arg1);
}

void genpop__Layout_setClippingType(cocos2d::ui::Layout*self, cocos2d::ui::Layout::ClippingType arg1) {
self->setClippingType(arg1);
}

cocos2d::ui::Layout::ClippingType genpop__Layout_getClippingType(cocos2d::ui::Layout*self) {
return self->getClippingType();
}

bool genpop__Layout_isClippingEnabled(cocos2d::ui::Layout*self) {
return self->isClippingEnabled();
}

void genpop__Layout_setLayoutType(cocos2d::ui::Layout*self, cocos2d::ui::Layout::Type arg1) {
self->setLayoutType(arg1);
}

cocos2d::ui::Layout::Type genpop__Layout_getLayoutType(cocos2d::ui::Layout*self) {
return self->getLayoutType();
}

void genpop__Layout_forceDoLayout(cocos2d::ui::Layout*self) {
self->forceDoLayout();
}

void genpop__Layout_requestDoLayout(cocos2d::ui::Layout*self) {
self->requestDoLayout();
}

bool genpop__Layout_isLoopFocus(cocos2d::ui::Layout*self) {
return self->isLoopFocus();
}

void genpop__Layout_setLoopFocus(cocos2d::ui::Layout*self, bool arg1) {
self->setLoopFocus(arg1);
}

void genpop__Layout_setPassFocusToChild(cocos2d::ui::Layout*self, bool arg1) {
self->setPassFocusToChild(arg1);
}

bool genpop__Layout_isPassFocusToChild(cocos2d::ui::Layout*self) {
return self->isPassFocusToChild();
}

cocos2d::ui::Widget const*gencast__Layout__Widget(cocos2d::ui::Layout const*self) {
return self;
}

cocos2d::ProtectedNode const*gencast__Layout__ProtectedNode(cocos2d::ui::Layout const*self) {
return self;
}

cocos2d::Node const*gencast__Layout__Node(cocos2d::ui::Layout const*self) {
return self;
}

cocos2d::Ref const*gencast__Layout__Ref(cocos2d::ui::Layout const*self) {
return self;
}

cocos2d::ui::Layout const*gencast__Widget__Layout(cocos2d::ui::Widget const*self) {
return dynamic_cast<cocos2d::ui::Layout const*>(self);
}

cocos2d::ui::Layout const*gencast__ProtectedNode__Layout(cocos2d::ProtectedNode const*self) {
return dynamic_cast<cocos2d::ui::Layout const*>(self);
}

cocos2d::ui::Layout const*gencast__Node__Layout(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::ui::Layout const*>(self);
}

cocos2d::ui::Layout const*gencast__Ref__Layout(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::ui::Layout const*>(self);
}

void gendel__ProtectedNode(cocos2d::ProtectedNode const*self) {
delete self;
}

cocos2d::ProtectedNode*genpop__ProtectedNode_create() {
return cocos2d::ProtectedNode::create();
}

void genpop__ProtectedNode_addProtectedChild(cocos2d::ProtectedNode*self, cocos2d::Node*arg1) {
self->addProtectedChild(arg1);
}

void genpop__ProtectedNode_addProtectedChildWithLocalZOrder(cocos2d::ProtectedNode*self, cocos2d::Node*arg1, int arg2) {
self->addProtectedChild(arg1, arg2);
}

void genpop__ProtectedNode_addProtectedChildWithLocalZOrderAndTag(cocos2d::ProtectedNode*self, cocos2d::Node*arg1, int arg2, int arg3) {
self->addProtectedChild(arg1, arg2, arg3);
}

cocos2d::Node*genpop__ProtectedNode_getProtectedChildByTag(cocos2d::ProtectedNode*self, int arg1) {
return self->getProtectedChildByTag(arg1);
}

void genpop__ProtectedNode_removeProtectedChild(cocos2d::ProtectedNode*self, cocos2d::Node*arg1) {
self->removeProtectedChild(arg1);
}

void genpop__ProtectedNode_removeProtectedChildWithCleanup(cocos2d::ProtectedNode*self, cocos2d::Node*arg1, bool arg2) {
self->removeProtectedChild(arg1, arg2);
}

void genpop__ProtectedNode_removeProtectedChildByTag(cocos2d::ProtectedNode*self, int arg1) {
self->removeProtectedChildByTag(arg1);
}

void genpop__ProtectedNode_removeProtectedChildByTagWithCleanup(cocos2d::ProtectedNode*self, int arg1, bool arg2) {
self->removeProtectedChildByTag(arg1, arg2);
}

void genpop__ProtectedNode_removeAllProtectedChildren(cocos2d::ProtectedNode*self) {
self->removeAllProtectedChildren();
}

void genpop__ProtectedNode_removeAllProtectedChildrenWithCleanup(cocos2d::ProtectedNode*self, bool arg1) {
self->removeAllProtectedChildrenWithCleanup(arg1);
}

void genpop__ProtectedNode_reorderProtectedChild(cocos2d::ProtectedNode*self, cocos2d::Node*arg1, int arg2) {
self->reorderProtectedChild(arg1, arg2);
}

void genpop__ProtectedNode_sortAllProtectedChildren(cocos2d::ProtectedNode*self) {
self->sortAllProtectedChildren();
}

cocos2d::Node const*gencast__ProtectedNode__Node(cocos2d::ProtectedNode const*self) {
return self;
}

cocos2d::Ref const*gencast__ProtectedNode__Ref(cocos2d::ProtectedNode const*self) {
return self;
}

cocos2d::ProtectedNode const*gencast__Node__ProtectedNode(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::ProtectedNode const*>(self);
}

cocos2d::ProtectedNode const*gencast__Ref__ProtectedNode(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::ProtectedNode const*>(self);
}

void gendel__Text(cocos2d::ui::Text const*self) {
delete self;
}

cocos2d::ui::Text*genpop__Text_create() {
return cocos2d::ui::Text::create();
}

cocos2d::ui::Text*genpop__Text_createWithText(std::string const*arg1_, std::string const*arg2_, float arg3) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return cocos2d::ui::Text::create(arg1, arg2, arg3);
}

std::string const*genpop__Text_getString(cocos2d::ui::Text*self) {
return &(self->getString());
}

void genpop__Text_setString(cocos2d::ui::Text*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setString(arg1);
}

ssize_t genpop__Text_getStringLength(cocos2d::ui::Text*self) {
return self->getStringLength();
}

void genpop__Text_setFontSize(cocos2d::ui::Text*self, float arg1) {
self->setFontSize(arg1);
}

float genpop__Text_getFontSize(cocos2d::ui::Text*self) {
return self->getFontSize();
}

void genpop__Text_setFontName(cocos2d::ui::Text*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setFontName(arg1);
}

std::string const*genpop__Text_getFontName(cocos2d::ui::Text*self) {
return &(self->getFontName());
}

cocos2d::ui::Text::Type genpop__Text_getType(cocos2d::ui::Text*self) {
return self->getType();
}

void genpop__Text_setTouchScaleChangeEnabled(cocos2d::ui::Text*self, bool arg1) {
self->setTouchScaleChangeEnabled(arg1);
}

bool genpop__Text_isTouchScaleChangeEnabled(cocos2d::ui::Text*self) {
return self->isTouchScaleChangeEnabled();
}

void genpop__Text_setTextAreaSize(cocos2d::ui::Text*self, cocos2d::Size const*arg1_) {
cocos2d::Size const&arg1 = *arg1_;
self->setTextAreaSize(arg1);
}

cocos2d::Size const*genpop__Text_getTextAreaSize(cocos2d::ui::Text*self) {
return &(self->getTextAreaSize());
}

void genpop__Text_setTextHorizontalAlignment(cocos2d::ui::Text*self, cocos2d::TextHAlignment arg1) {
self->setTextHorizontalAlignment(arg1);
}

cocos2d::TextHAlignment genpop__Text_getTextHorizontalAlignment(cocos2d::ui::Text*self) {
return self->getTextHorizontalAlignment();
}

void genpop__Text_setTextVerticalAlignment(cocos2d::ui::Text*self, cocos2d::TextVAlignment arg1) {
self->setTextVerticalAlignment(arg1);
}

cocos2d::TextVAlignment genpop__Text_getTextVerticalAlignment(cocos2d::ui::Text*self) {
return self->getTextVerticalAlignment();
}

void genpop__Text_setTextColor(cocos2d::ui::Text*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->setTextColor(arg1);
}

cocos2d::Color4B const*genpop__Text_getTextColor(cocos2d::ui::Text*self) {
return &(self->getTextColor());
}

void genpop__Text_enableShadow(cocos2d::ui::Text*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableShadow(arg1);
}

void genpop__Text_enableShadowWithOffset(cocos2d::ui::Text*self, cocos2d::Color4B const*arg1_, cocos2d::Size const*arg2_, int arg3) {
cocos2d::Color4B const&arg1 = *arg1_;
cocos2d::Size const&arg2 = *arg2_;
self->enableShadow(arg1, arg2, arg3);
}

void genpop__Text_enableOutline(cocos2d::ui::Text*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableOutline(arg1);
}

void genpop__Text_enableOutlineWithSize(cocos2d::ui::Text*self, cocos2d::Color4B const*arg1_, int arg2) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableOutline(arg1, arg2);
}

void genpop__Text_enableGlow(cocos2d::ui::Text*self, cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
self->enableGlow(arg1);
}

void genpop__Text_disableEffect(cocos2d::ui::Text*self) {
self->disableEffect();
}

void genpop__Text_disableLabelEffect(cocos2d::ui::Text*self, cocos2d::LabelEffect arg1) {
self->disableEffect(arg1);
}

cocos2d::ui::Widget const*gencast__Text__Widget(cocos2d::ui::Text const*self) {
return self;
}

cocos2d::ProtectedNode const*gencast__Text__ProtectedNode(cocos2d::ui::Text const*self) {
return self;
}

cocos2d::Node const*gencast__Text__Node(cocos2d::ui::Text const*self) {
return self;
}

cocos2d::Ref const*gencast__Text__Ref(cocos2d::ui::Text const*self) {
return self;
}

cocos2d::ui::Text const*gencast__Widget__Text(cocos2d::ui::Widget const*self) {
return dynamic_cast<cocos2d::ui::Text const*>(self);
}

cocos2d::ui::Text const*gencast__ProtectedNode__Text(cocos2d::ProtectedNode const*self) {
return dynamic_cast<cocos2d::ui::Text const*>(self);
}

cocos2d::ui::Text const*gencast__Node__Text(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::ui::Text const*>(self);
}

cocos2d::ui::Text const*gencast__Ref__Text(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::ui::Text const*>(self);
}

void gendel__UiHelper(cocos2d::ui::Helper const*self) {
delete self;
}

cocos2d::ui::Widget*genpop__UiHelper_seekWidgetByTag(cocos2d::ui::Widget*arg1, int arg2) {
return cocos2d::ui::Helper::seekWidgetByTag(arg1, arg2);
}

cocos2d::ui::Widget*genpop__UiHelper_seekWidgetByName(cocos2d::ui::Widget*arg1, std::string const*arg2_) {
std::string const&arg2 = *arg2_;
return cocos2d::ui::Helper::seekWidgetByName(arg1, arg2);
}

cocos2d::ui::Widget*genpop__UiHelper_seekActionWidgetByActionTag(cocos2d::ui::Widget*arg1, int arg2) {
return cocos2d::ui::Helper::seekActionWidgetByActionTag(arg1, arg2);
}

void genpop__UiHelper_doLayout(cocos2d::Node*arg1) {
cocos2d::ui::Helper::doLayout(arg1);
}

void genpop__UiHelper_changeLayoutSystemActiveState(bool arg1) {
cocos2d::ui::Helper::changeLayoutSystemActiveState(arg1);
}

cocos2d::Rect const*genpop__UiHelper_restrictCapInsetRect(cocos2d::Rect const*arg1_, cocos2d::Size const*arg2_) {
cocos2d::Rect const&arg1 = *arg1_;
cocos2d::Size const&arg2 = *arg2_;
return new cocos2d::Rect(cocos2d::ui::Helper::restrictCapInsetRect(arg1, arg2));
}

cocos2d::Rect const*genpop__UiHelper_convertBoundingBoxToScreen(cocos2d::Node*arg1) {
return new cocos2d::Rect(cocos2d::ui::Helper::convertBoundingBoxToScreen(arg1));
}

void gendel__Widget(cocos2d::ui::Widget const*self) {
delete self;
}

cocos2d::ui::Widget*genpop__Widget_create() {
return cocos2d::ui::Widget::create();
}

bool genpop__Widget_isEnabled(cocos2d::ui::Widget*self) {
return self->isEnabled();
}

void genpop__Widget_setEnabled(cocos2d::ui::Widget*self, bool arg1) {
self->setEnabled(arg1);
}

bool genpop__Widget_isBright(cocos2d::ui::Widget*self) {
return self->isBright();
}

void genpop__Widget_setBright(cocos2d::ui::Widget*self, bool arg1) {
self->setBright(arg1);
}

void genpop__Widget_setBrightStyle(cocos2d::ui::Widget*self, cocos2d::ui::Widget::BrightStyle arg1) {
self->setBrightStyle(arg1);
}

bool genpop__Widget_isTouchEnabled(cocos2d::ui::Widget*self) {
return self->isTouchEnabled();
}

void genpop__Widget_setTouchEnabled(cocos2d::ui::Widget*self, bool arg1) {
self->setTouchEnabled(arg1);
}

bool genpop__Widget_isHighlighted(cocos2d::ui::Widget*self) {
return self->isHighlighted();
}

void genpop__Widget_setHighlighted(cocos2d::ui::Widget*self, bool arg1) {
self->setHighlighted(arg1);
}

float genpop__Widget_getLeftBoundary(cocos2d::ui::Widget*self) {
return self->getLeftBoundary();
}

float genpop__Widget_getBottomBoundary(cocos2d::ui::Widget*self) {
return self->getBottomBoundary();
}

float genpop__Widget_getRightBoundary(cocos2d::ui::Widget*self) {
return self->getRightBoundary();
}

float genpop__Widget_getTopBoundary(cocos2d::ui::Widget*self) {
return self->getTopBoundary();
}

void genpop__Widget_addTouchEventListener(cocos2d::ui::Widget*self, WidgetTouchCallback_impl*arg1_) {
WidgetTouchCallback arg1(arg1_);
self->addTouchEventListener(arg1);
}

void genpop__Widget_addClickEventListener(cocos2d::ui::Widget*self, WidgetClickCallback_impl*arg1_) {
WidgetClickCallback arg1(arg1_);
self->addClickEventListener(arg1);
}

void genpop__Widget_addCCSEventListener(cocos2d::ui::Widget*self, WidgetEventCallback_impl*arg1_) {
WidgetEventCallback arg1(arg1_);
self->addCCSEventListener(arg1);
}

void genpop__Widget_setPositionPercent(cocos2d::ui::Widget*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setPositionPercent(arg1);
}

cocos2d::Vec2 const*genpop__Widget_getPositionPercent(cocos2d::ui::Widget*self) {
return &(self->getPositionPercent());
}

void genpop__Widget_setPositionType(cocos2d::ui::Widget*self, cocos2d::ui::Widget::PositionType arg1) {
self->setPositionType(arg1);
}

cocos2d::ui::Widget::PositionType genpop__Widget_getPositionType(cocos2d::ui::Widget*self) {
return self->getPositionType();
}

bool genpop__Widget_isFlippedX(cocos2d::ui::Widget*self) {
return self->isFlippedX();
}

void genpop__Widget_setFlippedX(cocos2d::ui::Widget*self, bool arg1) {
self->setFlippedX(arg1);
}

bool genpop__Widget_isFlippedY(cocos2d::ui::Widget*self) {
return self->isFlippedY();
}

void genpop__Widget_setFlippedY(cocos2d::ui::Widget*self, bool arg1) {
self->setFlippedY(arg1);
}

bool genpop__Widget_isClippingParentContainsPoint(cocos2d::ui::Widget*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return self->isClippingParentContainsPoint(arg1);
}

cocos2d::Vec2 const*genpop__Widget_getTouchBeganPosition(cocos2d::ui::Widget*self) {
return &(self->getTouchBeganPosition());
}

cocos2d::Vec2 const*genpop__Widget_getTouchMovePosition(cocos2d::ui::Widget*self) {
return &(self->getTouchMovePosition());
}

cocos2d::Vec2 const*genpop__Widget_getTouchEndPosition(cocos2d::ui::Widget*self) {
return &(self->getTouchEndPosition());
}

void genpop__Widget_setSizePercent(cocos2d::ui::Widget*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setSizePercent(arg1);
}

void genpop__Widget_setSizeType(cocos2d::ui::Widget*self, cocos2d::ui::Widget::SizeType arg1) {
self->setSizeType(arg1);
}

cocos2d::ui::Widget::SizeType genpop__Widget_getSizeType(cocos2d::ui::Widget*self) {
return self->getSizeType();
}

cocos2d::Size const*genpop__Widget_getCustomSize(cocos2d::ui::Widget*self) {
return &(self->getCustomSize());
}

cocos2d::Size const*genpop__Widget_getLayoutSize(cocos2d::ui::Widget*self) {
return &(self->getLayoutSize());
}

cocos2d::Vec2 const*genpop__Widget_getSizePercent(cocos2d::ui::Widget*self) {
return &(self->getSizePercent());
}

bool genpop__Widget_isIgnoreContentAdaptWithSize(cocos2d::ui::Widget*self) {
return self->isIgnoreContentAdaptWithSize();
}

void genpop__Widget_ignoreContentAdaptWithSize(cocos2d::ui::Widget*self, bool arg1) {
self->ignoreContentAdaptWithSize(arg1);
}

cocos2d::Vec2 const*genpop__Widget_getWorldPosition(cocos2d::ui::Widget*self) {
return new cocos2d::Vec2(self->getWorldPosition());
}

int genpop__Widget_getActionTag(cocos2d::ui::Widget*self) {
return self->getActionTag();
}

void genpop__Widget_setActionTag(cocos2d::ui::Widget*self, int arg1) {
self->setActionTag(arg1);
}

bool genpop__Widget_isPropagateTouchEvents(cocos2d::ui::Widget*self) {
return self->isPropagateTouchEvents();
}

void genpop__Widget_setPropagateTouchEvents(cocos2d::ui::Widget*self, bool arg1) {
self->setPropagateTouchEvents(arg1);
}

bool genpop__Widget_isSwallowTouches(cocos2d::ui::Widget*self) {
return self->isSwallowTouches();
}

void genpop__Widget_setSwallowTouches(cocos2d::ui::Widget*self, bool arg1) {
self->setSwallowTouches(arg1);
}

bool genpop__Widget_isFocused(cocos2d::ui::Widget*self) {
return self->isFocused();
}

void genpop__Widget_setFocused(cocos2d::ui::Widget*self, bool arg1) {
self->setFocused(arg1);
}

bool genpop__Widget_isFocusEnabled(cocos2d::ui::Widget*self) {
return self->isFocusEnabled();
}

void genpop__Widget_setFocusEnabled(cocos2d::ui::Widget*self, bool arg1) {
self->setFocusEnabled(arg1);
}

cocos2d::ui::Widget*genpop__Widget_findNextFocusedWidget(cocos2d::ui::Widget*self, cocos2d::ui::Widget::FocusDirection arg1, cocos2d::ui::Widget*arg2) {
return self->findNextFocusedWidget(arg1, arg2);
}

void genpop__Widget_requestFocus(cocos2d::ui::Widget*self) {
self->requestFocus();
}

cocos2d::ui::Widget*genpop__Widget_getCurrentFocusedWidget(cocos2d::ui::Widget*self) {
return self->getCurrentFocusedWidget();
}

void genpop__Widget_enableDpadNavigation(cocos2d::ui::Widget*self, bool arg1) {
self->enableDpadNavigation(arg1);
}

bool genpop__Widget_isUnifySizeEnabled(cocos2d::ui::Widget*self) {
return self->isUnifySizeEnabled();
}

void genpop__Widget_setUnifySizeEnabled(cocos2d::ui::Widget*self, bool arg1) {
self->setUnifySizeEnabled(arg1);
}

std::string const*genpop__Widget_getCallbackName(cocos2d::ui::Widget*self) {
return &(self->getCallbackName());
}

void genpop__Widget_setCallbackName(cocos2d::ui::Widget*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setCallbackName(arg1);
}

std::string const*genpop__Widget_getCallbackType(cocos2d::ui::Widget*self) {
return &(self->getCallbackType());
}

void genpop__Widget_setCallbackType(cocos2d::ui::Widget*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setCallbackType(arg1);
}

bool genpop__Widget_isLayoutComponentEnabled(cocos2d::ui::Widget*self) {
return self->isLayoutComponentEnabled();
}

void genpop__Widget_setLayoutComponentEnabled(cocos2d::ui::Widget*self, bool arg1) {
self->setLayoutComponentEnabled(arg1);
}

cocos2d::ProtectedNode const*gencast__Widget__ProtectedNode(cocos2d::ui::Widget const*self) {
return self;
}

cocos2d::Node const*gencast__Widget__Node(cocos2d::ui::Widget const*self) {
return self;
}

cocos2d::Ref const*gencast__Widget__Ref(cocos2d::ui::Widget const*self) {
return self;
}

cocos2d::ui::Widget const*gencast__ProtectedNode__Widget(cocos2d::ProtectedNode const*self) {
return dynamic_cast<cocos2d::ui::Widget const*>(self);
}

cocos2d::ui::Widget const*gencast__Node__Widget(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::ui::Widget const*>(self);
}

cocos2d::ui::Widget const*gencast__Ref__Widget(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::ui::Widget const*>(self);
}

WidgetClickCallback_impl::WidgetClickCallback_impl(void(*f)(cocos2d::Ref*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

WidgetClickCallback_impl::~WidgetClickCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void WidgetClickCallback_impl::operator()(cocos2d::Ref*arg1) {
f_(arg1);
}

void WidgetClickCallback::operator()(cocos2d::Ref*arg1) {
(*impl_)(arg1);
}

WidgetClickCallback_impl*genpop__WidgetClickCallback(void(*f)(cocos2d::Ref*), void(*release)(void(*)()), bool releaseRelease) {
return new WidgetClickCallback_impl(f, release, releaseRelease);
}

WidgetEventCallback_impl::WidgetEventCallback_impl(void(*f)(cocos2d::Ref*, int), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

WidgetEventCallback_impl::~WidgetEventCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void WidgetEventCallback_impl::operator()(cocos2d::Ref*arg1, int arg2) {
f_(arg1, arg2);
}

void WidgetEventCallback::operator()(cocos2d::Ref*arg1, int arg2) {
(*impl_)(arg1, arg2);
}

WidgetEventCallback_impl*genpop__WidgetEventCallback(void(*f)(cocos2d::Ref*, int), void(*release)(void(*)()), bool releaseRelease) {
return new WidgetEventCallback_impl(f, release, releaseRelease);
}

WidgetTouchCallback_impl::WidgetTouchCallback_impl(void(*f)(cocos2d::Ref*, cocos2d::ui::Widget::TouchEventType), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

WidgetTouchCallback_impl::~WidgetTouchCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void WidgetTouchCallback_impl::operator()(cocos2d::Ref*arg1, cocos2d::ui::Widget::TouchEventType arg2) {
f_(arg1, arg2);
}

void WidgetTouchCallback::operator()(cocos2d::Ref*arg1, cocos2d::ui::Widget::TouchEventType arg2) {
(*impl_)(arg1, arg2);
}

WidgetTouchCallback_impl*genpop__WidgetTouchCallback(void(*f)(cocos2d::Ref*, cocos2d::ui::Widget::TouchEventType), void(*release)(void(*)()), bool releaseRelease) {
return new WidgetTouchCallback_impl(f, release, releaseRelease);
}

}  // extern "C"
