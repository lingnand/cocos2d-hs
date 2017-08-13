////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Layer.hpp"
#include <2d/CCLayer.h>
#include <base/ccTypes.h>
#include <cstdint>
#include <math/Vec2.h>

extern "C" {

void gendel__Layer(cocos2d::Layer const*self) {
delete self;
}

cocos2d::Layer*genpop__Layer_create() {
return cocos2d::Layer::create();
}

cocos2d::Node const*gencast__Layer__Node(cocos2d::Layer const*self) {
return self;
}

cocos2d::Ref const*gencast__Layer__Ref(cocos2d::Layer const*self) {
return self;
}

cocos2d::Layer const*gencast__Node__Layer(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::Layer const*>(self);
}

cocos2d::Layer const*gencast__Ref__Layer(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Layer const*>(self);
}

void gendel__LayerColor(cocos2d::LayerColor const*self) {
delete self;
}

cocos2d::LayerColor*genpop__LayerColor_create() {
return cocos2d::LayerColor::create();
}

cocos2d::LayerColor*genpop__LayerColor_createWithColorAndSize(cocos2d::Color4B const*arg1_, float arg2, float arg3) {
cocos2d::Color4B const&arg1 = *arg1_;
return cocos2d::LayerColor::create(arg1, arg2, arg3);
}

cocos2d::LayerColor*genpop__LayerColor_createWithColor(cocos2d::Color4B const*arg1_) {
cocos2d::Color4B const&arg1 = *arg1_;
return cocos2d::LayerColor::create(arg1);
}

void genpop__LayerColor_changeWidth(cocos2d::LayerColor*self, float arg1) {
self->changeWidth(arg1);
}

void genpop__LayerColor_changeHeight(cocos2d::LayerColor*self, float arg1) {
self->changeHeight(arg1);
}

void genpop__LayerColor_changeWidthAndHeight(cocos2d::LayerColor*self, float arg1, float arg2) {
self->changeWidthAndHeight(arg1, arg2);
}

cocos2d::Layer const*gencast__LayerColor__Layer(cocos2d::LayerColor const*self) {
return self;
}

cocos2d::Node const*gencast__LayerColor__Node(cocos2d::LayerColor const*self) {
return self;
}

cocos2d::Ref const*gencast__LayerColor__Ref(cocos2d::LayerColor const*self) {
return self;
}

cocos2d::LayerColor const*gencast__Layer__LayerColor(cocos2d::Layer const*self) {
return dynamic_cast<cocos2d::LayerColor const*>(self);
}

cocos2d::LayerColor const*gencast__Node__LayerColor(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::LayerColor const*>(self);
}

cocos2d::LayerColor const*gencast__Ref__LayerColor(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::LayerColor const*>(self);
}

void gendel__LayerGradient(cocos2d::LayerGradient const*self) {
delete self;
}

cocos2d::LayerGradient*genpop__LayerGradient_create() {
return cocos2d::LayerGradient::create();
}

cocos2d::LayerGradient*genpop__LayerGradient_createWithStartEndColor(cocos2d::Color4B const*arg1_, cocos2d::Color4B const*arg2_) {
cocos2d::Color4B const&arg1 = *arg1_;
cocos2d::Color4B const&arg2 = *arg2_;
return cocos2d::LayerGradient::create(arg1, arg2);
}

cocos2d::LayerGradient*genpop__LayerGradient_createWithStartEndColorAndDirection(cocos2d::Color4B const*arg1_, cocos2d::Color4B const*arg2_, cocos2d::Vec2 const*arg3_) {
cocos2d::Color4B const&arg1 = *arg1_;
cocos2d::Color4B const&arg2 = *arg2_;
cocos2d::Vec2 const&arg3 = *arg3_;
return cocos2d::LayerGradient::create(arg1, arg2, arg3);
}

bool genpop__LayerGradient_isCompressedInterpolation(cocos2d::LayerGradient*self) {
return self->isCompressedInterpolation();
}

void genpop__LayerGradient_setCompressedInterpolation(cocos2d::LayerGradient*self, bool arg1) {
self->setCompressedInterpolation(arg1);
}

cocos2d::Color3B const*genpop__LayerGradient_getStartColor(cocos2d::LayerGradient*self) {
return &(self->getStartColor());
}

void genpop__LayerGradient_setStartColor(cocos2d::LayerGradient*self, cocos2d::Color3B const*arg1_) {
cocos2d::Color3B const&arg1 = *arg1_;
self->setStartColor(arg1);
}

cocos2d::Color3B const*genpop__LayerGradient_getEndColor(cocos2d::LayerGradient*self) {
return &(self->getEndColor());
}

void genpop__LayerGradient_setEndColor(cocos2d::LayerGradient*self, cocos2d::Color3B const*arg1_) {
cocos2d::Color3B const&arg1 = *arg1_;
self->setEndColor(arg1);
}

uint8_t genpop__LayerGradient_getStartOpacity(cocos2d::LayerGradient*self) {
return self->getStartOpacity();
}

void genpop__LayerGradient_setStartOpacity(cocos2d::LayerGradient*self, uint8_t arg1) {
self->setStartOpacity(arg1);
}

uint8_t genpop__LayerGradient_getEndOpacity(cocos2d::LayerGradient*self) {
return self->getEndOpacity();
}

void genpop__LayerGradient_setEndOpacity(cocos2d::LayerGradient*self, uint8_t arg1) {
self->setEndOpacity(arg1);
}

cocos2d::Vec2 const*genpop__LayerGradient_getVector(cocos2d::LayerGradient*self) {
return &(self->getVector());
}

void genpop__LayerGradient_setVector(cocos2d::LayerGradient*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setVector(arg1);
}

cocos2d::LayerColor const*gencast__LayerGradient__LayerColor(cocos2d::LayerGradient const*self) {
return self;
}

cocos2d::Layer const*gencast__LayerGradient__Layer(cocos2d::LayerGradient const*self) {
return self;
}

cocos2d::Node const*gencast__LayerGradient__Node(cocos2d::LayerGradient const*self) {
return self;
}

cocos2d::Ref const*gencast__LayerGradient__Ref(cocos2d::LayerGradient const*self) {
return self;
}

cocos2d::LayerGradient const*gencast__LayerColor__LayerGradient(cocos2d::LayerColor const*self) {
return dynamic_cast<cocos2d::LayerGradient const*>(self);
}

cocos2d::LayerGradient const*gencast__Layer__LayerGradient(cocos2d::Layer const*self) {
return dynamic_cast<cocos2d::LayerGradient const*>(self);
}

cocos2d::LayerGradient const*gencast__Node__LayerGradient(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::LayerGradient const*>(self);
}

cocos2d::LayerGradient const*gencast__Ref__LayerGradient(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::LayerGradient const*>(self);
}

void gendel__LayerMultiplex(cocos2d::LayerMultiplex const*self) {
delete self;
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_create() {
return cocos2d::LayerMultiplex::create();
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayer(cocos2d::Layer*arg1) {
return cocos2d::LayerMultiplex::createWithLayer(arg1);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers2(cocos2d::Layer*arg1, cocos2d::Layer*arg2) {
return cocos2d::LayerMultiplex::create(arg1, arg2);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers3(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers4(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3, cocos2d::Layer*arg4) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3, arg4);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers5(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3, cocos2d::Layer*arg4, cocos2d::Layer*arg5) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3, arg4, arg5);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers6(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3, cocos2d::Layer*arg4, cocos2d::Layer*arg5, cocos2d::Layer*arg6) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3, arg4, arg5, arg6);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers7(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3, cocos2d::Layer*arg4, cocos2d::Layer*arg5, cocos2d::Layer*arg6, cocos2d::Layer*arg7) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers8(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3, cocos2d::Layer*arg4, cocos2d::Layer*arg5, cocos2d::Layer*arg6, cocos2d::Layer*arg7, cocos2d::Layer*arg8) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers9(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3, cocos2d::Layer*arg4, cocos2d::Layer*arg5, cocos2d::Layer*arg6, cocos2d::Layer*arg7, cocos2d::Layer*arg8, cocos2d::Layer*arg9) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

cocos2d::LayerMultiplex*genpop__LayerMultiplex_createWithLayers10(cocos2d::Layer*arg1, cocos2d::Layer*arg2, cocos2d::Layer*arg3, cocos2d::Layer*arg4, cocos2d::Layer*arg5, cocos2d::Layer*arg6, cocos2d::Layer*arg7, cocos2d::Layer*arg8, cocos2d::Layer*arg9, cocos2d::Layer*arg10) {
return cocos2d::LayerMultiplex::create(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
}

void genpop__LayerMultiplex_addLayer(cocos2d::LayerMultiplex*self, cocos2d::Layer*arg1) {
self->addLayer(arg1);
}

void genpop__LayerMultiplex_switchTo(cocos2d::LayerMultiplex*self, int arg1) {
self->switchTo(arg1);
}

void genpop__LayerMultiplex_switchToAndReleaseMe(cocos2d::LayerMultiplex*self, int arg1) {
self->switchToAndReleaseMe(arg1);
}

cocos2d::Layer const*gencast__LayerMultiplex__Layer(cocos2d::LayerMultiplex const*self) {
return self;
}

cocos2d::Node const*gencast__LayerMultiplex__Node(cocos2d::LayerMultiplex const*self) {
return self;
}

cocos2d::Ref const*gencast__LayerMultiplex__Ref(cocos2d::LayerMultiplex const*self) {
return self;
}

cocos2d::LayerMultiplex const*gencast__Layer__LayerMultiplex(cocos2d::Layer const*self) {
return dynamic_cast<cocos2d::LayerMultiplex const*>(self);
}

cocos2d::LayerMultiplex const*gencast__Node__LayerMultiplex(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::LayerMultiplex const*>(self);
}

cocos2d::LayerMultiplex const*gencast__Ref__LayerMultiplex(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::LayerMultiplex const*>(self);
}

}  // extern "C"
