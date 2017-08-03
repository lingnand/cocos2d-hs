////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Texture.hpp"
#include <math/CCGeometry.h>
#include <memory>
#include <renderer/CCTexture2D.h>
#include <renderer/CCTextureCache.h>
#include <string>

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

void gendel__TextureCache(cocos2d::TextureCache const*self) {
delete self;
}

cocos2d::Texture2D*genpop__TextureCache_addImage(cocos2d::TextureCache*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return self->addImage(arg1);
}

void genpop__TextureCache_addImageAsync(cocos2d::TextureCache*self, std::string const*arg1_, TextureLoadedCallback_impl*arg2_) {
std::string const&arg1 = *arg1_;
TextureLoadedCallback arg2(arg2_);
self->addImageAsync(arg1, arg2);
}

bool genpop__TextureCache_reloadTexture(cocos2d::TextureCache*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return self->reloadTexture(arg1);
}

void genpop__TextureCache_removeAllTextures(cocos2d::TextureCache*self) {
self->removeAllTextures();
}

void genpop__TextureCache_removeUnusedTextures(cocos2d::TextureCache*self) {
self->removeUnusedTextures();
}

void genpop__TextureCache_removeTexture(cocos2d::TextureCache*self, cocos2d::Texture2D*arg1) {
self->removeTexture(arg1);
}

void genpop__TextureCache_removeTextureForKey(cocos2d::TextureCache*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->removeTextureForKey(arg1);
}

std::string const*genpop__TextureCache_getCachedTextureInfo(cocos2d::TextureCache*self) {
return new std::string(self->getCachedTextureInfo());
}

std::string const*genpop__TextureCache_getTextureFilePath(cocos2d::TextureCache*self, cocos2d::Texture2D*arg1) {
return new std::string(self->getTextureFilePath(arg1));
}

cocos2d::Ref const*gencast__TextureCache__Ref(cocos2d::TextureCache const*self) {
return self;
}

cocos2d::TextureCache const*gencast__Ref__TextureCache(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::TextureCache const*>(self);
}

TextureLoadedCallback_impl::TextureLoadedCallback_impl(void(*f)(cocos2d::Texture2D*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

TextureLoadedCallback_impl::~TextureLoadedCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void TextureLoadedCallback_impl::operator()(cocos2d::Texture2D*arg1) {
f_(arg1);
}

void TextureLoadedCallback::operator()(cocos2d::Texture2D*arg1) {
(*impl_)(arg1);
}

TextureLoadedCallback_impl*genpop__TextureLoadedCallback(void(*f)(cocos2d::Texture2D*), void(*release)(void(*)()), bool releaseRelease) {
return new TextureLoadedCallback_impl(f, release, releaseRelease);
}

}  // extern "C"
