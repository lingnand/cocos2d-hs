////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Sprite.hpp"
#include <2d/CCSprite.h>
#include <2d/CCSpriteFrame.h>
#include <cstddef>
#include <math/CCGeometry.h>
#include <math/Vec2.h>
#include <renderer/CCTexture2D.h>
#include <string>

extern "C" {

void gendel__Sprite(cocos2d::Sprite const*self) {
delete self;
}

cocos2d::Sprite*genpop__Sprite_create() {
return cocos2d::Sprite::create();
}

cocos2d::Sprite*genpop__Sprite_createWithFilename(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return cocos2d::Sprite::create(arg1);
}

cocos2d::Sprite*genpop__Sprite_createWithFilenameAndRect(std::string const*arg1_, cocos2d::Rect const*arg2_) {
std::string const&arg1 = *arg1_;
cocos2d::Rect const&arg2 = *arg2_;
return cocos2d::Sprite::create(arg1, arg2);
}

cocos2d::Sprite*genpop__Sprite_createWithTexture(cocos2d::Texture2D*arg1) {
return cocos2d::Sprite::createWithTexture(arg1);
}

cocos2d::Sprite*genpop__Sprite_createWithTextureAndRect(cocos2d::Texture2D*arg1, cocos2d::Rect const*arg2_) {
cocos2d::Rect const&arg2 = *arg2_;
return cocos2d::Sprite::createWithTexture(arg1, arg2);
}

cocos2d::Sprite*genpop__Sprite_createWithSpriteFrame(cocos2d::SpriteFrame*arg1) {
return cocos2d::Sprite::createWithSpriteFrame(arg1);
}

cocos2d::Sprite*genpop__Sprite_createWithSpriteFrameName(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return cocos2d::Sprite::createWithSpriteFrameName(arg1);
}

void genpop__Sprite_setTexture(cocos2d::Sprite*self, cocos2d::Texture2D*arg1) {
self->setTexture(arg1);
}

void genpop__Sprite_setTextureWithFilename(cocos2d::Sprite*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setTexture(arg1);
}

cocos2d::Texture2D*genpop__Sprite_getTexture(cocos2d::Sprite*self) {
return self->getTexture();
}

void genpop__Sprite_setTextureRect(cocos2d::Sprite*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
self->setTextureRect(arg1);
}

void genpop__Sprite_setVertexRect(cocos2d::Sprite*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
self->setVertexRect(arg1);
}

void genpop__Sprite_setSpriteFrame(cocos2d::Sprite*self, cocos2d::SpriteFrame*arg1) {
self->setSpriteFrame(arg1);
}

void genpop__Sprite_setSpriteFrameWithName(cocos2d::Sprite*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setSpriteFrame(arg1);
}

cocos2d::SpriteFrame*genpop__Sprite_getSpriteFrame(cocos2d::Sprite*self) {
return self->getSpriteFrame();
}

void genpop__Sprite_setDisplayFrameWithAnimationName(cocos2d::Sprite*self, std::string const*arg1_, ssize_t arg2) {
std::string const&arg1 = *arg1_;
self->setDisplayFrameWithAnimationName(arg1, arg2);
}

cocos2d::Rect const*genpop__Sprite_getTextureRect(cocos2d::Sprite*self) {
return &(self->getTextureRect());
}

cocos2d::Vec2 const*genpop__Sprite_getOffsetPosition(cocos2d::Sprite*self) {
return &(self->getOffsetPosition());
}

bool genpop__Sprite_isFlippedX(cocos2d::Sprite*self) {
return self->isFlippedX();
}

void genpop__Sprite_setFlippedX(cocos2d::Sprite*self, bool arg1) {
self->setFlippedX(arg1);
}

bool genpop__Sprite_isFlippedY(cocos2d::Sprite*self) {
return self->isFlippedY();
}

void genpop__Sprite_setFlippedY(cocos2d::Sprite*self, bool arg1) {
self->setFlippedY(arg1);
}

cocos2d::Node const*gencast__Sprite__Node(cocos2d::Sprite const*self) {
return self;
}

cocos2d::Ref const*gencast__Sprite__Ref(cocos2d::Sprite const*self) {
return self;
}

cocos2d::Sprite const*gencast__Node__Sprite(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::Sprite const*>(self);
}

cocos2d::Sprite const*gencast__Ref__Sprite(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Sprite const*>(self);
}

void gendel__SpriteFrame(cocos2d::SpriteFrame const*self) {
delete self;
}

cocos2d::SpriteFrame*genpop__SpriteFrame_create(std::string const*arg1_, cocos2d::Rect const*arg2_) {
std::string const&arg1 = *arg1_;
cocos2d::Rect const&arg2 = *arg2_;
return cocos2d::SpriteFrame::create(arg1, arg2);
}

cocos2d::SpriteFrame*genpop__SpriteFrame_createWithTexture(cocos2d::Texture2D*arg1, cocos2d::Rect const*arg2_) {
cocos2d::Rect const&arg2 = *arg2_;
return cocos2d::SpriteFrame::createWithTexture(arg1, arg2);
}

cocos2d::Rect const*genpop__SpriteFrame_getRectInPixels(cocos2d::SpriteFrame*self) {
return &(self->getRectInPixels());
}

void genpop__SpriteFrame_setRectInPixels(cocos2d::SpriteFrame*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
self->setRectInPixels(arg1);
}

bool genpop__SpriteFrame_isRotated(cocos2d::SpriteFrame*self) {
return self->isRotated();
}

void genpop__SpriteFrame_setRotated(cocos2d::SpriteFrame*self, bool arg1) {
self->setRotated(arg1);
}

cocos2d::Rect const*genpop__SpriteFrame_getRect(cocos2d::SpriteFrame*self) {
return &(self->getRect());
}

void genpop__SpriteFrame_setRect(cocos2d::SpriteFrame*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
self->setRect(arg1);
}

cocos2d::Vec2 const*genpop__SpriteFrame_getOffsetInPixels(cocos2d::SpriteFrame*self) {
return &(self->getOffsetInPixels());
}

void genpop__SpriteFrame_setOffsetInPixels(cocos2d::SpriteFrame*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setOffsetInPixels(arg1);
}

cocos2d::Size const*genpop__SpriteFrame_getOriginalSizeInPixels(cocos2d::SpriteFrame*self) {
return &(self->getOriginalSizeInPixels());
}

void genpop__SpriteFrame_setOriginalSizeInPixels(cocos2d::SpriteFrame*self, cocos2d::Size const*arg1_) {
cocos2d::Size const&arg1 = *arg1_;
self->setOriginalSizeInPixels(arg1);
}

cocos2d::Size const*genpop__SpriteFrame_getOriginalSize(cocos2d::SpriteFrame*self) {
return &(self->getOriginalSize());
}

void genpop__SpriteFrame_setOriginalSize(cocos2d::SpriteFrame*self, cocos2d::Size const*arg1_) {
cocos2d::Size const&arg1 = *arg1_;
self->setOriginalSize(arg1);
}

cocos2d::Texture2D*genpop__SpriteFrame_getTexture(cocos2d::SpriteFrame*self) {
return self->getTexture();
}

void genpop__SpriteFrame_setTexture(cocos2d::SpriteFrame*self, cocos2d::Texture2D*arg1) {
self->setTexture(arg1);
}

cocos2d::Vec2 const*genpop__SpriteFrame_getOffset(cocos2d::SpriteFrame*self) {
return &(self->getOffset());
}

void genpop__SpriteFrame_setOffset(cocos2d::SpriteFrame*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setOffset(arg1);
}

cocos2d::Ref const*gencast__SpriteFrame__Ref(cocos2d::SpriteFrame const*self) {
return self;
}

cocos2d::SpriteFrame const*gencast__Ref__SpriteFrame(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::SpriteFrame const*>(self);
}

}  // extern "C"
