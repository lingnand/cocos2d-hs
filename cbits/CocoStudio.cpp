////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "CocoStudio.hpp"
#include <2d/CCNode.h>
#include <base/CCRef.h>
#include <cocostudio/CocoStudio.h>
#include <memory>
#include <string>

extern "C" {

void gendel__CsLoader(cocos2d::CSLoader const*self) {
delete self;
}

cocos2d::Node*genpop__CsLoader_createNode(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return cocos2d::CSLoader::createNode(arg1);
}

cocos2d::Node*genpop__CsLoader_createNodeWithCallback(std::string const*arg1_, NodeLoadCallback_impl*arg2_) {
std::string const&arg1 = *arg1_;
NodeLoadCallback arg2(arg2_);
return cocos2d::CSLoader::createNode(arg1, arg2);
}

cocos2d::Node*genpop__CsLoader_createNodeOfVisibleSize(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return cocos2d::CSLoader::createNodeWithVisibleSize(arg1);
}

cocos2d::Node*genpop__CsLoader_createNodeOfVisibleSizeWithCallback(std::string const*arg1_, NodeLoadCallback_impl*arg2_) {
std::string const&arg1 = *arg1_;
NodeLoadCallback arg2(arg2_);
return cocos2d::CSLoader::createNodeWithVisibleSize(arg1, arg2);
}

NodeLoadCallback_impl::NodeLoadCallback_impl(void(*f)(cocos2d::Ref*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

NodeLoadCallback_impl::~NodeLoadCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void NodeLoadCallback_impl::operator()(cocos2d::Ref*arg1) {
f_(arg1);
}

void NodeLoadCallback::operator()(cocos2d::Ref*arg1) {
(*impl_)(arg1);
}

NodeLoadCallback_impl*genpop__NodeLoadCallback(void(*f)(cocos2d::Ref*), void(*release)(void(*)()), bool releaseRelease) {
return new NodeLoadCallback_impl(f, release, releaseRelease);
}

}  // extern "C"
