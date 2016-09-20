////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Texture.hpp"
#include <math/CCGeometry.h>
#include <renderer/CCTexture2D.h>

extern "C" {

void gendel__Texture2D(cocos2d::Texture2D const*self) {
delete self;
}

cocos2d::Size const*genpop__Texture2D_getContentSizeInPixels(cocos2d::Texture2D*self) {
return &(self->getContentSizeInPixels());
}

int genpop__Texture2D_getPixelsWide(cocos2d::Texture2D*self) {
return self->getPixelsWide();
}

int genpop__Texture2D_getPixelsHigh(cocos2d::Texture2D*self) {
return self->getPixelsHigh();
}

cocos2d::Size const*genpop__Texture2D_getContentSize(cocos2d::Texture2D*self) {
return new cocos2d::Size(self->getContentSize());
}

cocos2d::Ref const*gencast__Texture2D__Ref(cocos2d::Texture2D const*self) {
return self;
}

cocos2d::Texture2D const*gencast__Ref__Texture2D(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Texture2D const*>(self);
}

}  // extern "C"
