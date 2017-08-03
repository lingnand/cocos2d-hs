////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Common.hpp"
#include <base/CCRef.h>
#include <base/ccTypes.h>
#include <cstdint>
#include <math/CCAffineTransform.h>
#include <math/CCGeometry.h>
#include <math/Vec2.h>
#include <memory>

extern "C" {

cocos2d::AffineTransform*genpop__AffineTransform_new() {
return new cocos2d::AffineTransform();
}

void gendel__AffineTransform(cocos2d::AffineTransform const*self) {
delete self;
}

cocos2d::Color3B*genpop__Color3B_newFromRGB(uint8_t arg1, uint8_t arg2, uint8_t arg3) {
return new cocos2d::Color3B(arg1, arg2, arg3);
}

void gendel__Color3B(cocos2d::Color3B const*self) {
delete self;
}

uint8_t genpop__Color3B_r_get(cocos2d::Color3B const*self) {
return self->r;
}

void genpop__Color3B_r_set(cocos2d::Color3B*self, uint8_t arg1) {
self->r = arg1;
}

uint8_t genpop__Color3B_g_get(cocos2d::Color3B const*self) {
return self->g;
}

void genpop__Color3B_g_set(cocos2d::Color3B*self, uint8_t arg1) {
self->g = arg1;
}

uint8_t genpop__Color3B_b_get(cocos2d::Color3B const*self) {
return self->b;
}

void genpop__Color3B_b_set(cocos2d::Color3B*self, uint8_t arg1) {
self->b = arg1;
}

cocos2d::Color4B*genpop__Color4B_newFromRGBA(uint8_t arg1, uint8_t arg2, uint8_t arg3, uint8_t arg4) {
return new cocos2d::Color4B(arg1, arg2, arg3, arg4);
}

void gendel__Color4B(cocos2d::Color4B const*self) {
delete self;
}

uint8_t genpop__Color4B_r_get(cocos2d::Color4B const*self) {
return self->r;
}

void genpop__Color4B_r_set(cocos2d::Color4B*self, uint8_t arg1) {
self->r = arg1;
}

uint8_t genpop__Color4B_g_get(cocos2d::Color4B const*self) {
return self->g;
}

void genpop__Color4B_g_set(cocos2d::Color4B*self, uint8_t arg1) {
self->g = arg1;
}

uint8_t genpop__Color4B_b_get(cocos2d::Color4B const*self) {
return self->b;
}

void genpop__Color4B_b_set(cocos2d::Color4B*self, uint8_t arg1) {
self->b = arg1;
}

uint8_t genpop__Color4B_a_get(cocos2d::Color4B const*self) {
return self->a;
}

void genpop__Color4B_a_set(cocos2d::Color4B*self, uint8_t arg1) {
self->a = arg1;
}

cocos2d::Mat4*genpop__Mat4_new() {
return new cocos2d::Mat4();
}

cocos2d::Mat4*genpop__Mat4_newFromValues(float arg1, float arg2, float arg3, float arg4, float arg5, float arg6, float arg7, float arg8, float arg9, float arg10, float arg11, float arg12, float arg13, float arg14, float arg15, float arg16) {
return new cocos2d::Mat4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16);
}

void gendel__Mat4(cocos2d::Mat4 const*self) {
delete self;
}

cocos2d::Rect*genpop__Rect_new() {
return new cocos2d::Rect();
}

cocos2d::Rect*genpop__Rect_newFromCoordinatesAndDimensions(float arg1, float arg2, float arg3, float arg4) {
return new cocos2d::Rect(arg1, arg2, arg3, arg4);
}

cocos2d::Rect*genpop__Rect_newFromOriginAndSize(cocos2d::Vec2 const*arg1_, cocos2d::Size const*arg2_) {
cocos2d::Vec2 const&arg1 = *arg1_;
cocos2d::Size const&arg2 = *arg2_;
return new cocos2d::Rect(arg1, arg2);
}

void gendel__Rect(cocos2d::Rect const*self) {
delete self;
}

cocos2d::Rect const*genpop__Rect_ZERO_get() {
return new cocos2d::Rect(cocos2d::Rect::ZERO);
}

float genpop__Rect_getMinX(cocos2d::Rect*self) {
return self->getMinX();
}

float genpop__Rect_getMidX(cocos2d::Rect*self) {
return self->getMidX();
}

float genpop__Rect_getMaxX(cocos2d::Rect*self) {
return self->getMaxX();
}

float genpop__Rect_getMinY(cocos2d::Rect*self) {
return self->getMinY();
}

float genpop__Rect_getMidY(cocos2d::Rect*self) {
return self->getMidY();
}

float genpop__Rect_getMaxY(cocos2d::Rect*self) {
return self->getMaxY();
}

bool genpop__Rect_equals(cocos2d::Rect*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
return self->equals(arg1);
}

bool genpop__Rect_containsPoint(cocos2d::Rect*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return self->containsPoint(arg1);
}

bool genpop__Rect_intersectsRect(cocos2d::Rect*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
return self->intersectsRect(arg1);
}

bool genpop__Rect_intersectsCircle(cocos2d::Rect*self, cocos2d::Vec2 const*arg1_, float arg2) {
cocos2d::Vec2 const&arg1 = *arg1_;
return self->intersectsCircle(arg1, arg2);
}

cocos2d::Rect const*genpop__Rect_unionWithRect(cocos2d::Rect*self, cocos2d::Rect const*arg1_) {
cocos2d::Rect const&arg1 = *arg1_;
return new cocos2d::Rect(self->unionWithRect(arg1));
}

void gendel__Ref(cocos2d::Ref const*self) {
delete self;
}

void genpop__Ref_retain(cocos2d::Ref*self) {
self->retain();
}

void genpop__Ref_release(cocos2d::Ref*self) {
self->release();
}

cocos2d::Ref*genpop__Ref_autorelease(cocos2d::Ref*self) {
return self->autorelease();
}

unsigned int genpop__Ref_getReferenceCount(cocos2d::Ref*self) {
return self->getReferenceCount();
}

ScheduleCallback_impl::ScheduleCallback_impl(void(*f)(float), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

ScheduleCallback_impl::~ScheduleCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void ScheduleCallback_impl::operator()(float arg1) {
f_(arg1);
}

void ScheduleCallback::operator()(float arg1) {
(*impl_)(arg1);
}

ScheduleCallback_impl*genpop__ScheduleCallback(void(*f)(float), void(*release)(void(*)()), bool releaseRelease) {
return new ScheduleCallback_impl(f, release, releaseRelease);
}

cocos2d::Size*genpop__Size_newFromDimensions(float arg1, float arg2) {
return new cocos2d::Size(arg1, arg2);
}

void gendel__Size(cocos2d::Size const*self) {
delete self;
}

float genpop__Size_width_get(cocos2d::Size const*self) {
return self->width;
}

void genpop__Size_width_set(cocos2d::Size*self, float arg1) {
self->width = arg1;
}

float genpop__Size_height_get(cocos2d::Size const*self) {
return self->height;
}

void genpop__Size_height_set(cocos2d::Size*self, float arg1) {
self->height = arg1;
}

ThreadPerformCallback_impl::ThreadPerformCallback_impl(void(*f)(), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

ThreadPerformCallback_impl::~ThreadPerformCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void ThreadPerformCallback_impl::operator()() {
f_();
}

void ThreadPerformCallback::operator()() {
(*impl_)();
}

ThreadPerformCallback_impl*genpop__ThreadPerformCallback(void(*f)(), void(*release)(void(*)()), bool releaseRelease) {
return new ThreadPerformCallback_impl(f, release, releaseRelease);
}

cocos2d::Vec2*genpop__Vec2_newFromCoordinates(float arg1, float arg2) {
return new cocos2d::Vec2(arg1, arg2);
}

void gendel__Vec2(cocos2d::Vec2 const*self) {
delete self;
}

float genpop__Vec2_x_get(cocos2d::Vec2 const*self) {
return self->x;
}

void genpop__Vec2_x_set(cocos2d::Vec2*self, float arg1) {
self->x = arg1;
}

float genpop__Vec2_y_get(cocos2d::Vec2 const*self) {
return self->y;
}

void genpop__Vec2_y_set(cocos2d::Vec2*self, float arg1) {
self->y = arg1;
}

}  // extern "C"
