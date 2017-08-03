////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Common.hpp"
#include "Node.hpp"
#include <2d/CCNode.h>
#include <base/CCRef.h>
#include <base/ccTypes.h>
#include <cstddef>
#include <cstdint>
#include <math/CCAffineTransform.h>
#include <math/CCGeometry.h>
#include <math/Vec2.h>
#include <string>

extern "C" {

void gendel__Node(cocos2d::Node const*self) {
delete self;
}

cocos2d::Node*genpop__Node_create() {
return cocos2d::Node::create();
}

int genpop__Node_getLocalZOrder(cocos2d::Node*self) {
return self->getLocalZOrder();
}

void genpop__Node_setLocalZOrder(cocos2d::Node*self, int arg1) {
self->setLocalZOrder(arg1);
}

float genpop__Node_getGlobalZOrder(cocos2d::Node*self) {
return self->getGlobalZOrder();
}

void genpop__Node_setGlobalZOrder(cocos2d::Node*self, float arg1) {
self->setGlobalZOrder(arg1);
}

float genpop__Node_getScaleX(cocos2d::Node*self) {
return self->getScaleX();
}

void genpop__Node_setScaleX(cocos2d::Node*self, float arg1) {
self->setScaleX(arg1);
}

float genpop__Node_getScaleY(cocos2d::Node*self) {
return self->getScaleY();
}

void genpop__Node_setScaleY(cocos2d::Node*self, float arg1) {
self->setScaleY(arg1);
}

float genpop__Node_getScaleZ(cocos2d::Node*self) {
return self->getScaleZ();
}

void genpop__Node_setScaleZ(cocos2d::Node*self, float arg1) {
self->setScaleZ(arg1);
}

float genpop__Node_getScale(cocos2d::Node*self) {
return self->getScale();
}

void genpop__Node_setScale(cocos2d::Node*self, float arg1) {
self->setScale(arg1);
}

void genpop__Node_setScaleXY(cocos2d::Node*self, float arg1, float arg2) {
self->setScale(arg1, arg2);
}

cocos2d::Vec2 const*genpop__Node_getPosition(cocos2d::Node*self) {
return &(self->getPosition());
}

void genpop__Node_setPosition(cocos2d::Node*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setPosition(arg1);
}

float genpop__Node_getPositionX(cocos2d::Node*self) {
return self->getPositionX();
}

void genpop__Node_setPositionX(cocos2d::Node*self, float arg1) {
self->setPositionX(arg1);
}

float genpop__Node_getPositionY(cocos2d::Node*self) {
return self->getPositionY();
}

void genpop__Node_setPositionY(cocos2d::Node*self, float arg1) {
self->setPositionY(arg1);
}

cocos2d::Vec2 const*genpop__Node_getNormalizedPosition(cocos2d::Node*self) {
return &(self->getNormalizedPosition());
}

void genpop__Node_setNormalizedPosition(cocos2d::Node*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setNormalizedPosition(arg1);
}

float genpop__Node_getPositionZ(cocos2d::Node*self) {
return self->getPositionZ();
}

void genpop__Node_setPositionZ(cocos2d::Node*self, float arg1) {
self->setPositionZ(arg1);
}

float genpop__Node_getSkewX(cocos2d::Node*self) {
return self->getSkewX();
}

void genpop__Node_setSkewX(cocos2d::Node*self, float arg1) {
self->setSkewX(arg1);
}

float genpop__Node_getSkewY(cocos2d::Node*self) {
return self->getSkewY();
}

void genpop__Node_setSkewY(cocos2d::Node*self, float arg1) {
self->setSkewY(arg1);
}

cocos2d::Vec2 const*genpop__Node_getAnchorPoint(cocos2d::Node*self) {
return &(self->getAnchorPoint());
}

void genpop__Node_setAnchorPoint(cocos2d::Node*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
self->setAnchorPoint(arg1);
}

cocos2d::Vec2 const*genpop__Node_getAnchorPointInPoints(cocos2d::Node*self) {
return &(self->getAnchorPointInPoints());
}

cocos2d::Size const*genpop__Node_getContentSize(cocos2d::Node*self) {
return &(self->getContentSize());
}

void genpop__Node_setContentSize(cocos2d::Node*self, cocos2d::Size const*arg1_) {
cocos2d::Size const&arg1 = *arg1_;
self->setContentSize(arg1);
}

bool genpop__Node_isVisible(cocos2d::Node*self) {
return self->isVisible();
}

void genpop__Node_setVisible(cocos2d::Node*self, bool arg1) {
self->setVisible(arg1);
}

float genpop__Node_getRotation(cocos2d::Node*self) {
return self->getRotation();
}

void genpop__Node_setRotation(cocos2d::Node*self, float arg1) {
self->setRotation(arg1);
}

float genpop__Node_getRotationSkewX(cocos2d::Node*self) {
return self->getRotationSkewX();
}

void genpop__Node_setRotationSkewX(cocos2d::Node*self, float arg1) {
self->setRotationSkewX(arg1);
}

float genpop__Node_getRotationSkewY(cocos2d::Node*self) {
return self->getRotationSkewY();
}

void genpop__Node_setRotationSkewY(cocos2d::Node*self, float arg1) {
self->setRotationSkewY(arg1);
}

int genpop__Node_getOrderOfArrival(cocos2d::Node*self) {
return self->getOrderOfArrival();
}

void genpop__Node_setOrderOfArrival(cocos2d::Node*self, int arg1) {
self->setOrderOfArrival(arg1);
}

bool genpop__Node_isIgnoreAnchorPointForPosition(cocos2d::Node*self) {
return self->isIgnoreAnchorPointForPosition();
}

void genpop__Node_ignoreAnchorPointForPosition(cocos2d::Node*self, bool arg1) {
self->ignoreAnchorPointForPosition(arg1);
}

void genpop__Node_addChild(cocos2d::Node*self, cocos2d::Node*arg1) {
self->addChild(arg1);
}

void genpop__Node_addChildWithLocalZOrder(cocos2d::Node*self, cocos2d::Node*arg1, int arg2) {
self->addChild(arg1, arg2);
}

void genpop__Node_addChildWithLocalZOrderAndTag(cocos2d::Node*self, cocos2d::Node*arg1, int arg2, int arg3) {
self->addChild(arg1, arg2, arg3);
}

void genpop__Node_addChildWithLocalZOrderAndName(cocos2d::Node*self, cocos2d::Node*arg1, int arg2, std::string const*arg3_) {
std::string const&arg3 = *arg3_;
self->addChild(arg1, arg2, arg3);
}

cocos2d::Node*genpop__Node_getChildByTag(cocos2d::Node*self, int arg1) {
return self->getChildByTag(arg1);
}

cocos2d::Node*genpop__Node_getChildByName(cocos2d::Node*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return self->getChildByName(arg1);
}

ssize_t genpop__Node_getChildrenCount(cocos2d::Node*self) {
return self->getChildrenCount();
}

void genpop__Node_removeFromParent(cocos2d::Node*self) {
self->removeFromParent();
}

void genpop__Node_removeFromParentWithCleanup(cocos2d::Node*self, bool arg1) {
self->removeFromParentAndCleanup(arg1);
}

void genpop__Node_removeChild(cocos2d::Node*self, cocos2d::Node*arg1) {
self->removeChild(arg1);
}

void genpop__Node_removeChildWithCleanup(cocos2d::Node*self, cocos2d::Node*arg1, bool arg2) {
self->removeChild(arg1, arg2);
}

void genpop__Node_removeChildByTag(cocos2d::Node*self, int arg1) {
self->removeChildByTag(arg1);
}

void genpop__Node_removeChildByTagWithCleanup(cocos2d::Node*self, int arg1, bool arg2) {
self->removeChildByTag(arg1, arg2);
}

void genpop__Node_removeChildByName(cocos2d::Node*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->removeChildByName(arg1);
}

void genpop__Node_removeChildByNameWithCleanup(cocos2d::Node*self, std::string const*arg1_, bool arg2) {
std::string const&arg1 = *arg1_;
self->removeChildByName(arg1, arg2);
}

void genpop__Node_removeAllChildren(cocos2d::Node*self) {
self->removeAllChildren();
}

void genpop__Node_removeAllChildrenWithCleanup(cocos2d::Node*self, bool arg1) {
self->removeAllChildrenWithCleanup(arg1);
}

void genpop__Node_reorderChild(cocos2d::Node*self, cocos2d::Node*arg1, int arg2) {
self->reorderChild(arg1, arg2);
}

void genpop__Node_sortAllChildren(cocos2d::Node*self) {
self->sortAllChildren();
}

int genpop__Node_getTag(cocos2d::Node*self) {
return self->getTag();
}

void genpop__Node_setTag(cocos2d::Node*self, int arg1) {
self->setTag(arg1);
}

std::string const*genpop__Node_getName(cocos2d::Node*self) {
return &(self->getName());
}

void genpop__Node_setName(cocos2d::Node*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setName(arg1);
}

void const*genpop__Node_getUserDataConst(cocos2d::Node*self) {
return self->getUserData();
}

void*genpop__Node_getUserData(cocos2d::Node*self) {
return self->getUserData();
}

void genpop__Node_setUserData(cocos2d::Node*self, void*arg1) {
self->setUserData(arg1);
}

cocos2d::Ref const*genpop__Node_getUserObjectConst(cocos2d::Node*self) {
return self->getUserObject();
}

cocos2d::Ref*genpop__Node_getUserObject(cocos2d::Node*self) {
return self->getUserObject();
}

void genpop__Node_setUserObject(cocos2d::Node*self, cocos2d::Ref*arg1) {
self->setUserObject(arg1);
}

bool genpop__Node_isRunning(cocos2d::Node*self) {
return self->isRunning();
}

void genpop__Node_cleanup(cocos2d::Node*self) {
self->cleanup();
}

cocos2d::Rect const*genpop__Node_getBoundingBox(cocos2d::Node*self) {
return new cocos2d::Rect(self->getBoundingBox());
}

void genpop__Node_stopAllActions(cocos2d::Node*self) {
self->stopAllActions();
}

bool genpop__Node_isScheduled(cocos2d::Node*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return self->isScheduled(arg1);
}

void genpop__Node_scheduleOnce(cocos2d::Node*self, ScheduleCallback_impl*arg1_, float arg2, std::string const*arg3_) {
ScheduleCallback arg1(arg1_);
std::string const&arg3 = *arg3_;
self->scheduleOnce(arg1, arg2, arg3);
}

void genpop__Node_schedule(cocos2d::Node*self, ScheduleCallback_impl*arg1_, std::string const*arg2_) {
ScheduleCallback arg1(arg1_);
std::string const&arg2 = *arg2_;
self->schedule(arg1, arg2);
}

void genpop__Node_scheduleWithInterval(cocos2d::Node*self, ScheduleCallback_impl*arg1_, float arg2, std::string const*arg3_) {
ScheduleCallback arg1(arg1_);
std::string const&arg3 = *arg3_;
self->schedule(arg1, arg2, arg3);
}

void genpop__Node_scheduleWithIntervalAndRepeat(cocos2d::Node*self, ScheduleCallback_impl*arg1_, float arg2, unsigned int arg3, float arg4, std::string const*arg5_) {
ScheduleCallback arg1(arg1_);
std::string const&arg5 = *arg5_;
self->schedule(arg1, arg2, arg3, arg4, arg5);
}

void genpop__Node_unschedule(cocos2d::Node*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->unschedule(arg1);
}

void genpop__Node_unscheduleAllCallbacks(cocos2d::Node*self) {
self->unscheduleAllCallbacks();
}

void genpop__Node_resume(cocos2d::Node*self) {
self->resume();
}

void genpop__Node_pause(cocos2d::Node*self) {
self->pause();
}

cocos2d::Mat4 const*genpop__Node_getNodeToParentTransform(cocos2d::Node*self) {
return &(self->getNodeToParentTransform());
}

cocos2d::AffineTransform const*genpop__Node_getNodeToParentAffineTransform(cocos2d::Node*self) {
return new cocos2d::AffineTransform(self->getNodeToParentAffineTransform());
}

cocos2d::Mat4 const*genpop__Node_getNodeToAncestorTransform(cocos2d::Node*self, cocos2d::Node*arg1) {
return new cocos2d::Mat4(self->getNodeToParentTransform(arg1));
}

cocos2d::AffineTransform const*genpop__Node_getNodeToAncestorAffineTransform(cocos2d::Node*self, cocos2d::Node*arg1) {
return new cocos2d::AffineTransform(self->getNodeToParentAffineTransform(arg1));
}

void genpop__Node_setNodeToParentTransform(cocos2d::Node*self, cocos2d::Mat4 const*arg1_) {
cocos2d::Mat4 const&arg1 = *arg1_;
self->setNodeToParentTransform(arg1);
}

cocos2d::Mat4 const*genpop__Node_getParentToNodeTransform(cocos2d::Node*self) {
return &(self->getParentToNodeTransform());
}

cocos2d::AffineTransform const*genpop__Node_getParentToNodeAffineTransform(cocos2d::Node*self) {
return new cocos2d::AffineTransform(self->getParentToNodeAffineTransform());
}

cocos2d::Mat4 const*genpop__Node_getNodeToWorldTransform(cocos2d::Node*self) {
return new cocos2d::Mat4(self->getNodeToWorldTransform());
}

cocos2d::AffineTransform const*genpop__Node_getNodeToWorldAffineTransform(cocos2d::Node*self) {
return new cocos2d::AffineTransform(self->getNodeToWorldAffineTransform());
}

cocos2d::Mat4 const*genpop__Node_getWorldToNodeTransform(cocos2d::Node*self) {
return new cocos2d::Mat4(self->getWorldToNodeTransform());
}

cocos2d::AffineTransform const*genpop__Node_getWorldToNodeAffineTransform(cocos2d::Node*self) {
return new cocos2d::AffineTransform(self->getWorldToNodeAffineTransform());
}

cocos2d::Vec2 const*genpop__Node_convertToNodeSpace(cocos2d::Node*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return new cocos2d::Vec2(self->convertToNodeSpace(arg1));
}

cocos2d::Vec2 const*genpop__Node_convertToWorldSpace(cocos2d::Node*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return new cocos2d::Vec2(self->convertToWorldSpace(arg1));
}

cocos2d::Vec2 const*genpop__Node_convertToNodeSpaceAR(cocos2d::Node*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return new cocos2d::Vec2(self->convertToNodeSpaceAR(arg1));
}

cocos2d::Vec2 const*genpop__Node_convertToWorldSpaceAR(cocos2d::Node*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return new cocos2d::Vec2(self->convertToWorldSpaceAR(arg1));
}

uint8_t genpop__Node_getOpacity(cocos2d::Node*self) {
return self->getOpacity();
}

uint8_t genpop__Node_getDisplayedOpacity(cocos2d::Node*self) {
return self->getDisplayedOpacity();
}

void genpop__Node_setOpacity(cocos2d::Node*self, uint8_t arg1) {
self->setOpacity(arg1);
}

void genpop__Node_updateDisplayedOpacity(cocos2d::Node*self, uint8_t arg1) {
self->updateDisplayedOpacity(arg1);
}

bool genpop__Node_isCascadeOpacityEnabled(cocos2d::Node*self) {
return self->isCascadeOpacityEnabled();
}

void genpop__Node_setCascadeOpacityEnabled(cocos2d::Node*self, bool arg1) {
self->setCascadeOpacityEnabled(arg1);
}

cocos2d::Color3B const*genpop__Node_getColor(cocos2d::Node*self) {
return &(self->getColor());
}

cocos2d::Color3B const*genpop__Node_getDisplayedColor(cocos2d::Node*self) {
return &(self->getDisplayedColor());
}

void genpop__Node_setColor(cocos2d::Node*self, cocos2d::Color3B const*arg1_) {
cocos2d::Color3B const&arg1 = *arg1_;
self->setColor(arg1);
}

void genpop__Node_updateDisplayedColor(cocos2d::Node*self, cocos2d::Color3B const*arg1_) {
cocos2d::Color3B const&arg1 = *arg1_;
self->updateDisplayedColor(arg1);
}

bool genpop__Node_isCascadeColorEnabled(cocos2d::Node*self) {
return self->isCascadeColorEnabled();
}

void genpop__Node_setCascadeColorEnabled(cocos2d::Node*self, bool arg1) {
self->setCascadeColorEnabled(arg1);
}

bool genpop__Node_isOpacityModifyRGB(cocos2d::Node*self) {
return self->isOpacityModifyRGB();
}

void genpop__Node_setOpacityModifyRGB(cocos2d::Node*self, bool arg1) {
self->setOpacityModifyRGB(arg1);
}

cocos2d::Ref const*gencast__Node__Ref(cocos2d::Node const*self) {
return self;
}

cocos2d::Node const*gencast__Ref__Node(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Node const*>(self);
}

}  // extern "C"
