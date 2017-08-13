////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "/Users/lingnan/Developer/projs/cocos2d-hs/.stack-work/install/x86_64-osx/lts-7.19/8.0.1/share/x86_64-osx-ghc-8.0.1/hoppy-std-0.3.0/include/hoppy/std/iterator.hpp"
#include "Event.hpp"
#include <2d/CCNode.h>
#include <base/CCEvent.h>
#include <base/CCEventCustom.h>
#include <base/CCEventKeyboard.h>
#include <base/CCEventListener.h>
#include <base/CCEventListenerAcceleration.h>
#include <base/CCEventListenerCustom.h>
#include <base/CCEventListenerFocus.h>
#include <base/CCEventListenerKeyboard.h>
#include <base/CCEventListenerMouse.h>
#include <base/CCEventListenerTouch.h>
#include <base/CCEventMouse.h>
#include <base/CCTouch.h>
#include <base/ccTypes.h>
#include <cstddef>
#include <math/Vec2.h>
#include <memory>
#include <string>
#include <ui/UIWidget.h>
#include <vector>

extern "C" {

void gendel__Event(cocos2d::Event const*self) {
delete self;
}

cocos2d::Event::Type genpop__Event_getType(cocos2d::Event*self) {
return self->getType();
}

bool genpop__Event_isStopped(cocos2d::Event*self) {
return self->isStopped();
}

void genpop__Event_stopPropagation(cocos2d::Event*self) {
self->stopPropagation();
}

cocos2d::Node*genpop__Event_getCurrentTarget(cocos2d::Event*self) {
return self->getCurrentTarget();
}

cocos2d::Ref const*gencast__Event__Ref(cocos2d::Event const*self) {
return self;
}

cocos2d::Event const*gencast__Ref__Event(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Event const*>(self);
}

cocos2d::Acceleration*genpop__EventAcceleration_new() {
return new cocos2d::Acceleration();
}

void gendel__EventAcceleration(cocos2d::Acceleration const*self) {
delete self;
}

double genpop__EventAcceleration_x_get(cocos2d::Acceleration const*self) {
return self->x;
}

void genpop__EventAcceleration_x_set(cocos2d::Acceleration*self, double arg1) {
self->x = arg1;
}

double genpop__EventAcceleration_y_get(cocos2d::Acceleration const*self) {
return self->y;
}

void genpop__EventAcceleration_y_set(cocos2d::Acceleration*self, double arg1) {
self->y = arg1;
}

double genpop__EventAcceleration_z_get(cocos2d::Acceleration const*self) {
return self->z;
}

void genpop__EventAcceleration_z_set(cocos2d::Acceleration*self, double arg1) {
self->z = arg1;
}

double genpop__EventAcceleration_timestamp_get(cocos2d::Acceleration const*self) {
return self->timestamp;
}

void genpop__EventAcceleration_timestamp_set(cocos2d::Acceleration*self, double arg1) {
self->timestamp = arg1;
}

cocos2d::Ref const*gencast__EventAcceleration__Ref(cocos2d::Acceleration const*self) {
return self;
}

cocos2d::Acceleration const*gencast__Ref__EventAcceleration(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Acceleration const*>(self);
}

EventAccelerationCallback_impl::EventAccelerationCallback_impl(void(*f)(cocos2d::Acceleration*, cocos2d::Event*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventAccelerationCallback_impl::~EventAccelerationCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void EventAccelerationCallback_impl::operator()(cocos2d::Acceleration*arg1, cocos2d::Event*arg2) {
f_(arg1, arg2);
}

void EventAccelerationCallback::operator()(cocos2d::Acceleration*arg1, cocos2d::Event*arg2) {
(*impl_)(arg1, arg2);
}

EventAccelerationCallback_impl*genpop__EventAccelerationCallback(void(*f)(cocos2d::Acceleration*, cocos2d::Event*), void(*release)(void(*)()), bool releaseRelease) {
return new EventAccelerationCallback_impl(f, release, releaseRelease);
}

void gendel__EventCustom(cocos2d::EventCustom const*self) {
delete self;
}

void genpop__EventCustom_setUserData(cocos2d::EventCustom*self, void*arg1) {
self->setUserData(arg1);
}

void*genpop__EventCustom_getUserData(cocos2d::EventCustom*self) {
return self->getUserData();
}

std::string const*genpop__EventCustom_getEventName(cocos2d::EventCustom*self) {
return &(self->getEventName());
}

cocos2d::Event const*gencast__EventCustom__Event(cocos2d::EventCustom const*self) {
return self;
}

cocos2d::Ref const*gencast__EventCustom__Ref(cocos2d::EventCustom const*self) {
return self;
}

cocos2d::EventCustom const*gencast__Event__EventCustom(cocos2d::Event const*self) {
return dynamic_cast<cocos2d::EventCustom const*>(self);
}

cocos2d::EventCustom const*gencast__Ref__EventCustom(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventCustom const*>(self);
}

EventCustomCallback_impl::EventCustomCallback_impl(void(*f)(cocos2d::EventCustom*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventCustomCallback_impl::~EventCustomCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void EventCustomCallback_impl::operator()(cocos2d::EventCustom*arg1) {
f_(arg1);
}

void EventCustomCallback::operator()(cocos2d::EventCustom*arg1) {
(*impl_)(arg1);
}

EventCustomCallback_impl*genpop__EventCustomCallback(void(*f)(cocos2d::EventCustom*), void(*release)(void(*)()), bool releaseRelease) {
return new EventCustomCallback_impl(f, release, releaseRelease);
}

EventFocusCallback_impl::EventFocusCallback_impl(void(*f)(cocos2d::ui::Widget*, cocos2d::ui::Widget*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventFocusCallback_impl::~EventFocusCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void EventFocusCallback_impl::operator()(cocos2d::ui::Widget*arg1, cocos2d::ui::Widget*arg2) {
f_(arg1, arg2);
}

void EventFocusCallback::operator()(cocos2d::ui::Widget*arg1, cocos2d::ui::Widget*arg2) {
(*impl_)(arg1, arg2);
}

EventFocusCallback_impl*genpop__EventFocusCallback(void(*f)(cocos2d::ui::Widget*, cocos2d::ui::Widget*), void(*release)(void(*)()), bool releaseRelease) {
return new EventFocusCallback_impl(f, release, releaseRelease);
}

EventKeyboardCallback_impl::EventKeyboardCallback_impl(void(*f)(cocos2d::EventKeyboard::KeyCode, cocos2d::Event*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventKeyboardCallback_impl::~EventKeyboardCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void EventKeyboardCallback_impl::operator()(cocos2d::EventKeyboard::KeyCode arg1, cocos2d::Event*arg2) {
f_(arg1, arg2);
}

void EventKeyboardCallback::operator()(cocos2d::EventKeyboard::KeyCode arg1, cocos2d::Event*arg2) {
(*impl_)(arg1, arg2);
}

EventKeyboardCallback_impl*genpop__EventKeyboardCallback(void(*f)(cocos2d::EventKeyboard::KeyCode, cocos2d::Event*), void(*release)(void(*)()), bool releaseRelease) {
return new EventKeyboardCallback_impl(f, release, releaseRelease);
}

void gendel__EventListener(cocos2d::EventListener const*self) {
delete self;
}

bool genpop__EventListener_checkAvailable(cocos2d::EventListener*self) {
return self->checkAvailable();
}

bool genpop__EventListener_isEnabled(cocos2d::EventListener*self) {
return self->isEnabled();
}

void genpop__EventListener_setEnabled(cocos2d::EventListener*self, bool arg1) {
self->setEnabled(arg1);
}

cocos2d::Ref const*gencast__EventListener__Ref(cocos2d::EventListener const*self) {
return self;
}

cocos2d::EventListener const*gencast__Ref__EventListener(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListener const*>(self);
}

void gendel__EventListenerAcceleration(cocos2d::EventListenerAcceleration const*self) {
delete self;
}

cocos2d::EventListenerAcceleration*genpop__EventListenerAcceleration_create(EventAccelerationCallback_impl*arg1_) {
EventAccelerationCallback arg1(arg1_);
return cocos2d::EventListenerAcceleration::create(arg1);
}

cocos2d::EventListener const*gencast__EventListenerAcceleration__EventListener(cocos2d::EventListenerAcceleration const*self) {
return self;
}

cocos2d::Ref const*gencast__EventListenerAcceleration__Ref(cocos2d::EventListenerAcceleration const*self) {
return self;
}

cocos2d::EventListenerAcceleration const*gencast__EventListener__EventListenerAcceleration(cocos2d::EventListener const*self) {
return dynamic_cast<cocos2d::EventListenerAcceleration const*>(self);
}

cocos2d::EventListenerAcceleration const*gencast__Ref__EventListenerAcceleration(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListenerAcceleration const*>(self);
}

void gendel__EventListenerCustom(cocos2d::EventListenerCustom const*self) {
delete self;
}

cocos2d::EventListenerCustom*genpop__EventListenerCustom_create(std::string const*arg1_, EventCustomCallback_impl*arg2_) {
std::string const&arg1 = *arg1_;
EventCustomCallback arg2(arg2_);
return cocos2d::EventListenerCustom::create(arg1, arg2);
}

cocos2d::EventListener const*gencast__EventListenerCustom__EventListener(cocos2d::EventListenerCustom const*self) {
return self;
}

cocos2d::Ref const*gencast__EventListenerCustom__Ref(cocos2d::EventListenerCustom const*self) {
return self;
}

cocos2d::EventListenerCustom const*gencast__EventListener__EventListenerCustom(cocos2d::EventListener const*self) {
return dynamic_cast<cocos2d::EventListenerCustom const*>(self);
}

cocos2d::EventListenerCustom const*gencast__Ref__EventListenerCustom(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListenerCustom const*>(self);
}

void gendel__EventListenerFocus(cocos2d::EventListenerFocus const*self) {
delete self;
}

void genpop__EventListenerFocus_onFocusChanged_set(cocos2d::EventListenerFocus*self, EventFocusCallback_impl*arg1_) {
EventFocusCallback arg1(arg1_);
self->onFocusChanged = arg1;
}

cocos2d::EventListenerFocus*genpop__EventListenerFocus_create() {
return cocos2d::EventListenerFocus::create();
}

cocos2d::EventListener const*gencast__EventListenerFocus__EventListener(cocos2d::EventListenerFocus const*self) {
return self;
}

cocos2d::Ref const*gencast__EventListenerFocus__Ref(cocos2d::EventListenerFocus const*self) {
return self;
}

cocos2d::EventListenerFocus const*gencast__EventListener__EventListenerFocus(cocos2d::EventListener const*self) {
return dynamic_cast<cocos2d::EventListenerFocus const*>(self);
}

cocos2d::EventListenerFocus const*gencast__Ref__EventListenerFocus(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListenerFocus const*>(self);
}

void gendel__EventListenerKeyboard(cocos2d::EventListenerKeyboard const*self) {
delete self;
}

void genpop__EventListenerKeyboard_onKeyPressed_set(cocos2d::EventListenerKeyboard*self, EventKeyboardCallback_impl*arg1_) {
EventKeyboardCallback arg1(arg1_);
self->onKeyPressed = arg1;
}

void genpop__EventListenerKeyboard_onKeyReleased_set(cocos2d::EventListenerKeyboard*self, EventKeyboardCallback_impl*arg1_) {
EventKeyboardCallback arg1(arg1_);
self->onKeyReleased = arg1;
}

cocos2d::EventListenerKeyboard*genpop__EventListenerKeyboard_create() {
return cocos2d::EventListenerKeyboard::create();
}

cocos2d::EventListener const*gencast__EventListenerKeyboard__EventListener(cocos2d::EventListenerKeyboard const*self) {
return self;
}

cocos2d::Ref const*gencast__EventListenerKeyboard__Ref(cocos2d::EventListenerKeyboard const*self) {
return self;
}

cocos2d::EventListenerKeyboard const*gencast__EventListener__EventListenerKeyboard(cocos2d::EventListener const*self) {
return dynamic_cast<cocos2d::EventListenerKeyboard const*>(self);
}

cocos2d::EventListenerKeyboard const*gencast__Ref__EventListenerKeyboard(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListenerKeyboard const*>(self);
}

void gendel__EventListenerMouse(cocos2d::EventListenerMouse const*self) {
delete self;
}

void genpop__EventListenerMouse_onMouseDown_set(cocos2d::EventListenerMouse*self, EventMouseCallback_impl*arg1_) {
EventMouseCallback arg1(arg1_);
self->onMouseDown = arg1;
}

void genpop__EventListenerMouse_onMouseUp_set(cocos2d::EventListenerMouse*self, EventMouseCallback_impl*arg1_) {
EventMouseCallback arg1(arg1_);
self->onMouseUp = arg1;
}

void genpop__EventListenerMouse_onMouseMove_set(cocos2d::EventListenerMouse*self, EventMouseCallback_impl*arg1_) {
EventMouseCallback arg1(arg1_);
self->onMouseMove = arg1;
}

void genpop__EventListenerMouse_onMouseScroll_set(cocos2d::EventListenerMouse*self, EventMouseCallback_impl*arg1_) {
EventMouseCallback arg1(arg1_);
self->onMouseScroll = arg1;
}

cocos2d::EventListenerMouse*genpop__EventListenerMouse_create() {
return cocos2d::EventListenerMouse::create();
}

cocos2d::EventListener const*gencast__EventListenerMouse__EventListener(cocos2d::EventListenerMouse const*self) {
return self;
}

cocos2d::Ref const*gencast__EventListenerMouse__Ref(cocos2d::EventListenerMouse const*self) {
return self;
}

cocos2d::EventListenerMouse const*gencast__EventListener__EventListenerMouse(cocos2d::EventListener const*self) {
return dynamic_cast<cocos2d::EventListenerMouse const*>(self);
}

cocos2d::EventListenerMouse const*gencast__Ref__EventListenerMouse(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListenerMouse const*>(self);
}

void gendel__EventListenerTouchAllAtOnce(cocos2d::EventListenerTouchAllAtOnce const*self) {
delete self;
}

void genpop__EventListenerTouchAllAtOnce_onTouchesBegan_set(cocos2d::EventListenerTouchAllAtOnce*self, EventTouchesCallback_impl*arg1_) {
EventTouchesCallback arg1(arg1_);
self->onTouchesBegan = arg1;
}

void genpop__EventListenerTouchAllAtOnce_onTouchesMoved_set(cocos2d::EventListenerTouchAllAtOnce*self, EventTouchesCallback_impl*arg1_) {
EventTouchesCallback arg1(arg1_);
self->onTouchesMoved = arg1;
}

void genpop__EventListenerTouchAllAtOnce_onTouchesEnded_set(cocos2d::EventListenerTouchAllAtOnce*self, EventTouchesCallback_impl*arg1_) {
EventTouchesCallback arg1(arg1_);
self->onTouchesEnded = arg1;
}

void genpop__EventListenerTouchAllAtOnce_onTouchesCancelled_set(cocos2d::EventListenerTouchAllAtOnce*self, EventTouchesCallback_impl*arg1_) {
EventTouchesCallback arg1(arg1_);
self->onTouchesCancelled = arg1;
}

cocos2d::EventListenerTouchAllAtOnce*genpop__EventListenerTouchAllAtOnce_create() {
return cocos2d::EventListenerTouchAllAtOnce::create();
}

cocos2d::EventListener const*gencast__EventListenerTouchAllAtOnce__EventListener(cocos2d::EventListenerTouchAllAtOnce const*self) {
return self;
}

cocos2d::Ref const*gencast__EventListenerTouchAllAtOnce__Ref(cocos2d::EventListenerTouchAllAtOnce const*self) {
return self;
}

cocos2d::EventListenerTouchAllAtOnce const*gencast__EventListener__EventListenerTouchAllAtOnce(cocos2d::EventListener const*self) {
return dynamic_cast<cocos2d::EventListenerTouchAllAtOnce const*>(self);
}

cocos2d::EventListenerTouchAllAtOnce const*gencast__Ref__EventListenerTouchAllAtOnce(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListenerTouchAllAtOnce const*>(self);
}

void gendel__EventListenerTouchOneByOne(cocos2d::EventListenerTouchOneByOne const*self) {
delete self;
}

void genpop__EventListenerTouchOneByOne_onTouchBegan_set(cocos2d::EventListenerTouchOneByOne*self, EventTouchBeganCallback_impl*arg1_) {
EventTouchBeganCallback arg1(arg1_);
self->onTouchBegan = arg1;
}

void genpop__EventListenerTouchOneByOne_onTouchMoved_set(cocos2d::EventListenerTouchOneByOne*self, EventTouchCallback_impl*arg1_) {
EventTouchCallback arg1(arg1_);
self->onTouchMoved = arg1;
}

void genpop__EventListenerTouchOneByOne_onTouchEnded_set(cocos2d::EventListenerTouchOneByOne*self, EventTouchCallback_impl*arg1_) {
EventTouchCallback arg1(arg1_);
self->onTouchEnded = arg1;
}

void genpop__EventListenerTouchOneByOne_onTouchCancelled_set(cocos2d::EventListenerTouchOneByOne*self, EventTouchCallback_impl*arg1_) {
EventTouchCallback arg1(arg1_);
self->onTouchCancelled = arg1;
}

cocos2d::EventListenerTouchOneByOne*genpop__EventListenerTouchOneByOne_create() {
return cocos2d::EventListenerTouchOneByOne::create();
}

bool genpop__EventListenerTouchOneByOne_isSwallowTouches(cocos2d::EventListenerTouchOneByOne*self) {
return self->isSwallowTouches();
}

void genpop__EventListenerTouchOneByOne_setSwallowTouches(cocos2d::EventListenerTouchOneByOne*self, bool arg1) {
self->setSwallowTouches(arg1);
}

cocos2d::EventListener const*gencast__EventListenerTouchOneByOne__EventListener(cocos2d::EventListenerTouchOneByOne const*self) {
return self;
}

cocos2d::Ref const*gencast__EventListenerTouchOneByOne__Ref(cocos2d::EventListenerTouchOneByOne const*self) {
return self;
}

cocos2d::EventListenerTouchOneByOne const*gencast__EventListener__EventListenerTouchOneByOne(cocos2d::EventListener const*self) {
return dynamic_cast<cocos2d::EventListenerTouchOneByOne const*>(self);
}

cocos2d::EventListenerTouchOneByOne const*gencast__Ref__EventListenerTouchOneByOne(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventListenerTouchOneByOne const*>(self);
}

void gendel__EventMouse(cocos2d::EventMouse const*self) {
delete self;
}

float genpop__EventMouse_getScrollX(cocos2d::EventMouse*self) {
return self->getScrollX();
}

float genpop__EventMouse_getScrollY(cocos2d::EventMouse*self) {
return self->getScrollY();
}

int genpop__EventMouse_getMouseButton(cocos2d::EventMouse*self) {
return self->getMouseButton();
}

float genpop__EventMouse_getCursorX(cocos2d::EventMouse*self) {
return self->getCursorX();
}

float genpop__EventMouse_getCursorY(cocos2d::EventMouse*self) {
return self->getCursorY();
}

cocos2d::Vec2 const*genpop__EventMouse_getLocation(cocos2d::EventMouse*self) {
return new cocos2d::Vec2(self->getLocation());
}

cocos2d::Vec2 const*genpop__EventMouse_getPreviousLocation(cocos2d::EventMouse*self) {
return new cocos2d::Vec2(self->getPreviousLocation());
}

cocos2d::Vec2 const*genpop__EventMouse_getStartLocation(cocos2d::EventMouse*self) {
return new cocos2d::Vec2(self->getStartLocation());
}

cocos2d::Vec2 const*genpop__EventMouse_getDelta(cocos2d::EventMouse*self) {
return new cocos2d::Vec2(self->getDelta());
}

cocos2d::Vec2 const*genpop__EventMouse_getLocationInView(cocos2d::EventMouse*self) {
return new cocos2d::Vec2(self->getLocationInView());
}

cocos2d::Vec2 const*genpop__EventMouse_getPreviousLocationInView(cocos2d::EventMouse*self) {
return new cocos2d::Vec2(self->getPreviousLocationInView());
}

cocos2d::Vec2 const*genpop__EventMouse_getStartLocationInView(cocos2d::EventMouse*self) {
return new cocos2d::Vec2(self->getStartLocationInView());
}

cocos2d::Event const*gencast__EventMouse__Event(cocos2d::EventMouse const*self) {
return self;
}

cocos2d::Ref const*gencast__EventMouse__Ref(cocos2d::EventMouse const*self) {
return self;
}

cocos2d::EventMouse const*gencast__Event__EventMouse(cocos2d::Event const*self) {
return dynamic_cast<cocos2d::EventMouse const*>(self);
}

cocos2d::EventMouse const*gencast__Ref__EventMouse(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventMouse const*>(self);
}

EventMouseCallback_impl::EventMouseCallback_impl(void(*f)(cocos2d::EventMouse*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventMouseCallback_impl::~EventMouseCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void EventMouseCallback_impl::operator()(cocos2d::EventMouse*arg1) {
f_(arg1);
}

void EventMouseCallback::operator()(cocos2d::EventMouse*arg1) {
(*impl_)(arg1);
}

EventMouseCallback_impl*genpop__EventMouseCallback(void(*f)(cocos2d::EventMouse*), void(*release)(void(*)()), bool releaseRelease) {
return new EventMouseCallback_impl(f, release, releaseRelease);
}

void gendel__EventTouch(cocos2d::Touch const*self) {
delete self;
}

cocos2d::Vec2 const*genpop__EventTouch_getLocation(cocos2d::Touch*self) {
return new cocos2d::Vec2(self->getLocation());
}

cocos2d::Vec2 const*genpop__EventTouch_getPreviousLocation(cocos2d::Touch*self) {
return new cocos2d::Vec2(self->getPreviousLocation());
}

cocos2d::Vec2 const*genpop__EventTouch_getStartLocation(cocos2d::Touch*self) {
return new cocos2d::Vec2(self->getStartLocation());
}

cocos2d::Vec2 const*genpop__EventTouch_getDelta(cocos2d::Touch*self) {
return new cocos2d::Vec2(self->getDelta());
}

cocos2d::Vec2 const*genpop__EventTouch_getLocationInView(cocos2d::Touch*self) {
return new cocos2d::Vec2(self->getLocationInView());
}

cocos2d::Vec2 const*genpop__EventTouch_getPreviousLocationInView(cocos2d::Touch*self) {
return new cocos2d::Vec2(self->getPreviousLocationInView());
}

cocos2d::Vec2 const*genpop__EventTouch_getStartLocationInView(cocos2d::Touch*self) {
return new cocos2d::Vec2(self->getStartLocationInView());
}

int genpop__EventTouch_getID(cocos2d::Touch*self) {
return self->getID();
}

cocos2d::Ref const*gencast__EventTouch__Ref(cocos2d::Touch const*self) {
return self;
}

cocos2d::Touch const*gencast__Ref__EventTouch(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Touch const*>(self);
}

EventTouchBeganCallback_impl::EventTouchBeganCallback_impl(bool(*f)(cocos2d::Touch*, cocos2d::Event*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventTouchBeganCallback_impl::~EventTouchBeganCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

bool EventTouchBeganCallback_impl::operator()(cocos2d::Touch*arg1, cocos2d::Event*arg2) {
bool result = f_(arg1, arg2);
return result;
}

bool EventTouchBeganCallback::operator()(cocos2d::Touch*arg1, cocos2d::Event*arg2) {
return (*impl_)(arg1, arg2);
}

EventTouchBeganCallback_impl*genpop__EventTouchBeganCallback(bool(*f)(cocos2d::Touch*, cocos2d::Event*), void(*release)(void(*)()), bool releaseRelease) {
return new EventTouchBeganCallback_impl(f, release, releaseRelease);
}

EventTouchCallback_impl::EventTouchCallback_impl(void(*f)(cocos2d::Touch*, cocos2d::Event*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventTouchCallback_impl::~EventTouchCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void EventTouchCallback_impl::operator()(cocos2d::Touch*arg1, cocos2d::Event*arg2) {
f_(arg1, arg2);
}

void EventTouchCallback::operator()(cocos2d::Touch*arg1, cocos2d::Event*arg2) {
(*impl_)(arg1, arg2);
}

EventTouchCallback_impl*genpop__EventTouchCallback(void(*f)(cocos2d::Touch*, cocos2d::Event*), void(*release)(void(*)()), bool releaseRelease) {
return new EventTouchCallback_impl(f, release, releaseRelease);
}

std::vector<cocos2d::Touch*>*genpop__EventTouchVector_new() {
return new std::vector<cocos2d::Touch*>();
}

std::vector<cocos2d::Touch*>*genpop__EventTouchVector_newCopy(std::vector<cocos2d::Touch*>const*arg1_) {
std::vector<cocos2d::Touch*>const&arg1 = *arg1_;
return new std::vector<cocos2d::Touch*>(arg1);
}

void gendel__EventTouchVector(std::vector<cocos2d::Touch*>const*self) {
delete self;
}

cocos2d::Touch**genpop__EventTouchVector_at(std::vector<cocos2d::Touch*>*self, size_t arg1) {
return &(self->at(arg1));
}

cocos2d::Touch*const*genpop__EventTouchVector_atConst(std::vector<cocos2d::Touch*>*self, size_t arg1) {
return &(self->at(arg1));
}

cocos2d::Touch**genpop__EventTouchVector_back(std::vector<cocos2d::Touch*>*self) {
return &(self->back());
}

cocos2d::Touch*const*genpop__EventTouchVector_backConst(std::vector<cocos2d::Touch*>*self) {
return &(self->back());
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVector_begin(std::vector<cocos2d::Touch*>*self) {
return new std::vector<cocos2d::Touch*>::iterator(self->begin());
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVector_beginConst(std::vector<cocos2d::Touch*>*self) {
return new std::vector<cocos2d::Touch*>::const_iterator(self->begin());
}

size_t genpop__EventTouchVector_capacity(std::vector<cocos2d::Touch*>*self) {
return self->capacity();
}

void genpop__EventTouchVector_clear(std::vector<cocos2d::Touch*>*self) {
self->clear();
}

bool genpop__EventTouchVector_empty(std::vector<cocos2d::Touch*>*self) {
return self->empty();
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVector_end(std::vector<cocos2d::Touch*>*self) {
return new std::vector<cocos2d::Touch*>::iterator(self->end());
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVector_endConst(std::vector<cocos2d::Touch*>*self) {
return new std::vector<cocos2d::Touch*>::const_iterator(self->end());
}

void genpop__EventTouchVector_erase(std::vector<cocos2d::Touch*>*self, std::vector<cocos2d::Touch*>::iterator const*arg1_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
self->erase(arg1);
}

void genpop__EventTouchVector_eraseRange(std::vector<cocos2d::Touch*>*self, std::vector<cocos2d::Touch*>::iterator const*arg1_, std::vector<cocos2d::Touch*>::iterator const*arg2_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
std::vector<cocos2d::Touch*>::iterator const&arg2 = *arg2_;
self->erase(arg1, arg2);
}

cocos2d::Touch**genpop__EventTouchVector_front(std::vector<cocos2d::Touch*>*self) {
return &(self->front());
}

cocos2d::Touch*const*genpop__EventTouchVector_frontConst(std::vector<cocos2d::Touch*>*self) {
return &(self->front());
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVector_insert(std::vector<cocos2d::Touch*>*self, std::vector<cocos2d::Touch*>::iterator const*arg1_, cocos2d::Touch*arg2) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
return new std::vector<cocos2d::Touch*>::iterator(self->insert(arg1, arg2));
}

size_t genpop__EventTouchVector_maxSize(std::vector<cocos2d::Touch*>*self) {
return self->max_size();
}

void genpop__EventTouchVector_popBack(std::vector<cocos2d::Touch*>*self) {
self->pop_back();
}

void genpop__EventTouchVector_pushBack(std::vector<cocos2d::Touch*>*self, cocos2d::Touch*arg1) {
self->push_back(arg1);
}

void genpop__EventTouchVector_reserve(std::vector<cocos2d::Touch*>*self, size_t arg1) {
self->reserve(arg1);
}

void genpop__EventTouchVector_resize(std::vector<cocos2d::Touch*>*self, size_t arg1) {
self->resize(arg1);
}

void genpop__EventTouchVector_resizeWith(std::vector<cocos2d::Touch*>*self, size_t arg1, cocos2d::Touch*arg2) {
self->resize(arg1, arg2);
}

void genpop__EventTouchVector_shrinkToFit(std::vector<cocos2d::Touch*>*self) {
self->shrink_to_fit();
}

size_t genpop__EventTouchVector_size(std::vector<cocos2d::Touch*>*self) {
return self->size();
}

void genpop__EventTouchVector_swap(std::vector<cocos2d::Touch*>*self, std::vector<cocos2d::Touch*>*arg1_) {
std::vector<cocos2d::Touch*>&arg1 = *arg1_;
self->swap(arg1);
}

std::vector<cocos2d::Touch*>*genpop__EventTouchVector_ASSIGN(std::vector<cocos2d::Touch*>*self, std::vector<cocos2d::Touch*>const*arg1_) {
std::vector<cocos2d::Touch*>const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_newFromNonconst(std::vector<cocos2d::Touch*>::iterator const*arg1_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
return new std::vector<cocos2d::Touch*>::const_iterator(arg1);
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_new() {
return new std::vector<cocos2d::Touch*>::const_iterator();
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_newCopy(std::vector<cocos2d::Touch*>::const_iterator const*arg1_) {
std::vector<cocos2d::Touch*>::const_iterator const&arg1 = *arg1_;
return new std::vector<cocos2d::Touch*>::const_iterator(arg1);
}

void gendel__EventTouchVectorConstIterator(std::vector<cocos2d::Touch*>::const_iterator const*self) {
delete self;
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorConstIterator_deconst(std::vector<cocos2d::Touch*>::const_iterator const*arg1_, std::vector<cocos2d::Touch*>*arg2_) {
std::vector<cocos2d::Touch*>::const_iterator const&arg1 = *arg1_;
std::vector<cocos2d::Touch*>&arg2 = *arg2_;
return new std::vector<cocos2d::Touch*>::iterator(hoppy::iterator::deconst(arg1, arg2));
}

cocos2d::Touch*const*genpop__EventTouchVectorConstIterator_getConst(std::vector<cocos2d::Touch*>::const_iterator*self) {
return &((*(*self)));
}

bool genpop__EventTouchVectorConstIterator_EQ(std::vector<cocos2d::Touch*>::const_iterator*self, std::vector<cocos2d::Touch*>::const_iterator const*arg1_) {
std::vector<cocos2d::Touch*>::const_iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__EventTouchVectorConstIterator_NE(std::vector<cocos2d::Touch*>::const_iterator*self, std::vector<cocos2d::Touch*>::const_iterator const*arg1_) {
std::vector<cocos2d::Touch*>::const_iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_ASSIGN(std::vector<cocos2d::Touch*>::const_iterator*self, std::vector<cocos2d::Touch*>::const_iterator const*arg1_) {
std::vector<cocos2d::Touch*>::const_iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_next(std::vector<cocos2d::Touch*>::const_iterator*self) {
return &((++(*self)));
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_prev(std::vector<cocos2d::Touch*>::const_iterator*self) {
return &((--(*self)));
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_plus(std::vector<cocos2d::Touch*>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<cocos2d::Touch*>::const_iterator(((*self)+arg1));
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_add(std::vector<cocos2d::Touch*>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_minus(std::vector<cocos2d::Touch*>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<cocos2d::Touch*>::const_iterator(((*self)-arg1));
}

ptrdiff_t genpop__EventTouchVectorConstIterator_difference(std::vector<cocos2d::Touch*>::const_iterator*self, std::vector<cocos2d::Touch*>::const_iterator const*arg1_) {
std::vector<cocos2d::Touch*>::const_iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<cocos2d::Touch*>::const_iterator*genpop__EventTouchVectorConstIterator_subtract(std::vector<cocos2d::Touch*>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

cocos2d::Touch*const*genpop__EventTouchVectorConstIterator_atConst(std::vector<cocos2d::Touch*>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_new() {
return new std::vector<cocos2d::Touch*>::iterator();
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_newCopy(std::vector<cocos2d::Touch*>::iterator const*arg1_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
return new std::vector<cocos2d::Touch*>::iterator(arg1);
}

void gendel__EventTouchVectorIterator(std::vector<cocos2d::Touch*>::iterator const*self) {
delete self;
}

cocos2d::Touch**genpop__EventTouchVectorIterator_get(std::vector<cocos2d::Touch*>::iterator*self) {
return &((*(*self)));
}

cocos2d::Touch*const*genpop__EventTouchVectorIterator_getConst(std::vector<cocos2d::Touch*>::iterator*self) {
return &((*(*self)));
}

void genpop__EventTouchVectorIterator_put(std::vector<cocos2d::Touch*>::iterator*arg1, cocos2d::Touch*arg2) {
hoppy::iterator::put(arg1, arg2);
}

bool genpop__EventTouchVectorIterator_EQ(std::vector<cocos2d::Touch*>::iterator*self, std::vector<cocos2d::Touch*>::iterator const*arg1_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__EventTouchVectorIterator_NE(std::vector<cocos2d::Touch*>::iterator*self, std::vector<cocos2d::Touch*>::iterator const*arg1_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_ASSIGN(std::vector<cocos2d::Touch*>::iterator*self, std::vector<cocos2d::Touch*>::iterator const*arg1_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_next(std::vector<cocos2d::Touch*>::iterator*self) {
return &((++(*self)));
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_prev(std::vector<cocos2d::Touch*>::iterator*self) {
return &((--(*self)));
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_plus(std::vector<cocos2d::Touch*>::iterator*self, ptrdiff_t arg1) {
return new std::vector<cocos2d::Touch*>::iterator(((*self)+arg1));
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_add(std::vector<cocos2d::Touch*>::iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_minus(std::vector<cocos2d::Touch*>::iterator*self, ptrdiff_t arg1) {
return new std::vector<cocos2d::Touch*>::iterator(((*self)-arg1));
}

ptrdiff_t genpop__EventTouchVectorIterator_difference(std::vector<cocos2d::Touch*>::iterator*self, std::vector<cocos2d::Touch*>::iterator const*arg1_) {
std::vector<cocos2d::Touch*>::iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<cocos2d::Touch*>::iterator*genpop__EventTouchVectorIterator_subtract(std::vector<cocos2d::Touch*>::iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

cocos2d::Touch**genpop__EventTouchVectorIterator_at(std::vector<cocos2d::Touch*>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

cocos2d::Touch*const*genpop__EventTouchVectorIterator_atConst(std::vector<cocos2d::Touch*>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

EventTouchesCallback_impl::EventTouchesCallback_impl(void(*f)(std::vector<cocos2d::Touch*>const*, cocos2d::Event*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

EventTouchesCallback_impl::~EventTouchesCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void EventTouchesCallback_impl::operator()(std::vector<cocos2d::Touch*>const&arg1_, cocos2d::Event*arg2) {
std::vector<cocos2d::Touch*>const*arg1 = &arg1_;
f_(arg1, arg2);
}

void EventTouchesCallback::operator()(std::vector<cocos2d::Touch*>const&arg1, cocos2d::Event*arg2) {
(*impl_)(arg1, arg2);
}

EventTouchesCallback_impl*genpop__EventTouchesCallback(void(*f)(std::vector<cocos2d::Touch*>const*, cocos2d::Event*), void(*release)(void(*)()), bool releaseRelease) {
return new EventTouchesCallback_impl(f, release, releaseRelease);
}

}  // extern "C"
