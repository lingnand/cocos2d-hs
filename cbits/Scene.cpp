////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Scene.hpp"
#include <2d/CCScene.h>
#include <math/CCGeometry.h>

extern "C" {

void gendel__Scene(cocos2d::Scene const*self) {
delete self;
}

cocos2d::Scene*genpop__Scene_create() {
return cocos2d::Scene::create();
}

cocos2d::Scene*genpop__Scene_createWithSize(cocos2d::Size const*arg1_) {
cocos2d::Size const&arg1 = *arg1_;
return cocos2d::Scene::createWithSize(arg1);
}

cocos2d::Node const*gencast__Scene__Node(cocos2d::Scene const*self) {
return self;
}

cocos2d::Ref const*gencast__Scene__Ref(cocos2d::Scene const*self) {
return self;
}

cocos2d::Scene const*gencast__Node__Scene(cocos2d::Node const*self) {
return dynamic_cast<cocos2d::Scene const*>(self);
}

cocos2d::Scene const*gencast__Ref__Scene(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Scene const*>(self);
}

}  // extern "C"
