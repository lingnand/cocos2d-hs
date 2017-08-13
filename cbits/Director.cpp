////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Common.hpp"
#include "Director.hpp"
#include "Event.hpp"
#include <2d/CCNode.h>
#include <2d/CCScene.h>
#include <base/CCDirector.h>
#include <base/CCEvent.h>
#include <base/CCEventCustom.h>
#include <base/CCEventDispatcher.h>
#include <base/CCEventListener.h>
#include <base/CCEventListenerCustom.h>
#include <base/CCScheduler.h>
#include <math/CCGeometry.h>
#include <math/Vec2.h>
#include <platform/CCGLView.h>
#include <renderer/CCTextureCache.h>
#include <string>

extern "C" {

void gendel__Director(cocos2d::Director const*self) {
delete self;
}

cocos2d::Director*genpop__Director_getInstance() {
return cocos2d::Director::getInstance();
}

cocos2d::Scene*genpop__Director_getRunningScene(cocos2d::Director*self) {
return self->getRunningScene();
}

float genpop__Director_getAnimationInterval(cocos2d::Director*self) {
return self->getAnimationInterval();
}

void genpop__Director_setAnimationInterval(cocos2d::Director*self, float arg1) {
self->setAnimationInterval(arg1);
}

bool genpop__Director_isDisplayStats(cocos2d::Director*self) {
return self->isDisplayStats();
}

void genpop__Director_setDisplayStats(cocos2d::Director*self, bool arg1) {
self->setDisplayStats(arg1);
}

float genpop__Director_getSecondsPerFrame(cocos2d::Director*self) {
return self->getSecondsPerFrame();
}

cocos2d::GLView*genpop__Director_getOpenGLView(cocos2d::Director*self) {
return self->getOpenGLView();
}

bool genpop__Director_isPaused(cocos2d::Director*self) {
return self->isPaused();
}

unsigned int genpop__Director_getTotalFrames(cocos2d::Director*self) {
return self->getTotalFrames();
}

cocos2d::Size const*genpop__Director_getWinSize(cocos2d::Director*self) {
return &(self->getWinSize());
}

cocos2d::Size const*genpop__Director_getWinSizeInPixels(cocos2d::Director*self) {
return new cocos2d::Size(self->getWinSizeInPixels());
}

cocos2d::Size const*genpop__Director_getVisibleSize(cocos2d::Director*self) {
return new cocos2d::Size(self->getVisibleSize());
}

cocos2d::Vec2 const*genpop__Director_getVisibleOrigin(cocos2d::Director*self) {
return new cocos2d::Vec2(self->getVisibleOrigin());
}

cocos2d::Vec2 const*genpop__Director_convertToGL(cocos2d::Director*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return new cocos2d::Vec2(self->convertToGL(arg1));
}

cocos2d::Vec2 const*genpop__Director_convertToUI(cocos2d::Director*self, cocos2d::Vec2 const*arg1_) {
cocos2d::Vec2 const&arg1 = *arg1_;
return new cocos2d::Vec2(self->convertToUI(arg1));
}

float genpop__Director_getZEye(cocos2d::Director*self) {
return self->getZEye();
}

void genpop__Director_runWithScene(cocos2d::Director*self, cocos2d::Scene*arg1) {
self->runWithScene(arg1);
}

void genpop__Director_pushScene(cocos2d::Director*self, cocos2d::Scene*arg1) {
self->pushScene(arg1);
}

void genpop__Director_popScene(cocos2d::Director*self) {
self->popScene();
}

void genpop__Director_popToRootScene(cocos2d::Director*self) {
self->popToRootScene();
}

void genpop__Director_popToSceneStackLevel(cocos2d::Director*self, int arg1) {
self->popToSceneStackLevel(arg1);
}

void genpop__Director_replaceScene(cocos2d::Director*self, cocos2d::Scene*arg1) {
self->replaceScene(arg1);
}

void genpop__Director_end(cocos2d::Director*self) {
self->end();
}

void genpop__Director_pause(cocos2d::Director*self) {
self->pause();
}

void genpop__Director_resume(cocos2d::Director*self) {
self->resume();
}

void genpop__Director_stopAnimation(cocos2d::Director*self) {
self->stopAnimation();
}

void genpop__Director_startAnimation(cocos2d::Director*self) {
self->startAnimation();
}

void genpop__Director_purgeCachedData(cocos2d::Director*self) {
self->purgeCachedData();
}

void genpop__Director_setDefaultValues(cocos2d::Director*self) {
self->setDefaultValues();
}

void genpop__Director_setGLDefaultValues(cocos2d::Director*self) {
self->setGLDefaultValues();
}

void genpop__Director_setAlphaBlending(cocos2d::Director*self, bool arg1) {
self->setAlphaBlending(arg1);
}

void genpop__Director_setDepthTest(cocos2d::Director*self, bool arg1) {
self->setDepthTest(arg1);
}

void genpop__Director_setContentScaleFactor(cocos2d::Director*self, float arg1) {
self->setContentScaleFactor(arg1);
}

float genpop__Director_getContentScaleFactor(cocos2d::Director*self) {
return self->getContentScaleFactor();
}

cocos2d::Scheduler*genpop__Director_getScheduler(cocos2d::Director*self) {
return self->getScheduler();
}

cocos2d::EventDispatcher*genpop__Director_getEventDispatcher(cocos2d::Director*self) {
return self->getEventDispatcher();
}

cocos2d::TextureCache*genpop__Director_getTextureCache(cocos2d::Director*self) {
return self->getTextureCache();
}

cocos2d::Ref const*gencast__Director__Ref(cocos2d::Director const*self) {
return self;
}

cocos2d::Director const*gencast__Ref__Director(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Director const*>(self);
}

void gendel__EventDispatcher(cocos2d::EventDispatcher const*self) {
delete self;
}

void genpop__EventDispatcher_addEventListenerWithSceneGraphPriority(cocos2d::EventDispatcher*self, cocos2d::EventListener*arg1, cocos2d::Node*arg2) {
self->addEventListenerWithSceneGraphPriority(arg1, arg2);
}

void genpop__EventDispatcher_addEventListenerWithFixedPriority(cocos2d::EventDispatcher*self, cocos2d::EventListener*arg1, int arg2) {
self->addEventListenerWithFixedPriority(arg1, arg2);
}

cocos2d::EventListenerCustom*genpop__EventDispatcher_addCustomEventListener(cocos2d::EventDispatcher*self, std::string const*arg1_, EventCustomCallback_impl*arg2_) {
std::string const&arg1 = *arg1_;
EventCustomCallback arg2(arg2_);
return self->addCustomEventListener(arg1, arg2);
}

void genpop__EventDispatcher_removeEventListener(cocos2d::EventDispatcher*self, cocos2d::EventListener*arg1) {
self->removeEventListener(arg1);
}

void genpop__EventDispatcher_removeEventListenersForType(cocos2d::EventDispatcher*self, cocos2d::EventListener::Type arg1) {
self->removeEventListenersForType(arg1);
}

void genpop__EventDispatcher_removeEventListenersForTarget(cocos2d::EventDispatcher*self, cocos2d::Node*arg1, bool arg2) {
self->removeEventListenersForTarget(arg1, arg2);
}

void genpop__EventDispatcher_removeCustomEventListeners(cocos2d::EventDispatcher*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->removeCustomEventListeners(arg1);
}

void genpop__EventDispatcher_removeAllEventListeners(cocos2d::EventDispatcher*self) {
self->removeAllEventListeners();
}

void genpop__EventDispatcher_pauseEventListenersForTarget(cocos2d::EventDispatcher*self, cocos2d::Node*arg1, bool arg2) {
self->pauseEventListenersForTarget(arg1, arg2);
}

void genpop__EventDispatcher_resumeEventListenersForTarget(cocos2d::EventDispatcher*self, cocos2d::Node*arg1, bool arg2) {
self->resumeEventListenersForTarget(arg1, arg2);
}

void genpop__EventDispatcher_setPriority(cocos2d::EventDispatcher*self, cocos2d::EventListener*arg1, int arg2) {
self->setPriority(arg1, arg2);
}

void genpop__EventDispatcher_setEnabled(cocos2d::EventDispatcher*self, bool arg1) {
self->setEnabled(arg1);
}

bool genpop__EventDispatcher_isEnabled(cocos2d::EventDispatcher*self) {
return self->isEnabled();
}

void genpop__EventDispatcher_dispatchEvent(cocos2d::EventDispatcher*self, cocos2d::Event*arg1) {
self->dispatchEvent(arg1);
}

void genpop__EventDispatcher_dispatchCustomEvent(cocos2d::EventDispatcher*self, std::string const*arg1_, void*arg2) {
std::string const&arg1 = *arg1_;
self->dispatchCustomEvent(arg1, arg2);
}

cocos2d::Ref const*gencast__EventDispatcher__Ref(cocos2d::EventDispatcher const*self) {
return self;
}

cocos2d::EventDispatcher const*gencast__Ref__EventDispatcher(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::EventDispatcher const*>(self);
}

void gendel__GLView(cocos2d::GLView const*self) {
delete self;
}

cocos2d::Size const*genpop__GLView_getFrameSize(cocos2d::GLView*self) {
return &(self->getFrameSize());
}

void genpop__GLView_setFrameSize(cocos2d::GLView*self, float arg1, float arg2) {
self->setFrameSize(arg1, arg2);
}

float genpop__GLView_getFrameZoomFactor(cocos2d::GLView*self) {
return self->getFrameZoomFactor();
}

void genpop__GLView_setFrameZoomFactor(cocos2d::GLView*self, float arg1) {
self->setFrameZoomFactor(arg1);
}

void genpop__GLView_setCursorVisible(cocos2d::GLView*self, bool arg1) {
self->setCursorVisible(arg1);
}

int genpop__GLView_getRetinaFactor(cocos2d::GLView*self) {
return self->getRetinaFactor();
}

bool genpop__GLView_setContentScaleFactor(cocos2d::GLView*self, float arg1) {
return self->setContentScaleFactor(arg1);
}

float genpop__GLView_getContentScaleFactor(cocos2d::GLView*self) {
return self->getContentScaleFactor();
}

bool genpop__GLView_isRetinaDisplay(cocos2d::GLView*self) {
return self->isRetinaDisplay();
}

cocos2d::Size const*genpop__GLView_getVisibleSize(cocos2d::GLView*self) {
return new cocos2d::Size(self->getVisibleSize());
}

cocos2d::Vec2 const*genpop__GLView_getVisibleOrigin(cocos2d::GLView*self) {
return new cocos2d::Vec2(self->getVisibleOrigin());
}

cocos2d::Rect*genpop__GLView_getVisibleRect(cocos2d::GLView*self) {
return new cocos2d::Rect(self->getVisibleRect());
}

cocos2d::Size const*genpop__GLView_getDesignResolutionSize(cocos2d::GLView*self) {
return &(self->getDesignResolutionSize());
}

void genpop__GLView_setDesignResolutionSize(cocos2d::GLView*self, float arg1, float arg2, ResolutionPolicy arg3) {
self->setDesignResolutionSize(arg1, arg2, arg3);
}

void genpop__GLView_setViewPortInPoints(cocos2d::GLView*self, float arg1, float arg2, float arg3, float arg4) {
self->setViewPortInPoints(arg1, arg2, arg3, arg4);
}

void genpop__GLView_setScissorInPoints(cocos2d::GLView*self, float arg1, float arg2, float arg3, float arg4) {
self->setScissorInPoints(arg1, arg2, arg3, arg4);
}

bool genpop__GLView_isScissorEnabled(cocos2d::GLView*self) {
return self->isScissorEnabled();
}

cocos2d::Rect*genpop__GLView_getScissorRect(cocos2d::GLView*self) {
return new cocos2d::Rect(self->getScissorRect());
}

void genpop__GLView_setViewName(cocos2d::GLView*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->setViewName(arg1);
}

std::string const*genpop__GLView_getViewName(cocos2d::GLView*self) {
return &(self->getViewName());
}

cocos2d::Rect const*genpop__GLView_getViewPortRect(cocos2d::GLView*self) {
return &(self->getViewPortRect());
}

float genpop__GLView_getScaleX(cocos2d::GLView*self) {
return self->getScaleX();
}

float genpop__GLView_getScaleY(cocos2d::GLView*self) {
return self->getScaleY();
}

ResolutionPolicy genpop__GLView_getResolutionPolicy(cocos2d::GLView*self) {
return self->getResolutionPolicy();
}

cocos2d::Ref const*gencast__GLView__Ref(cocos2d::GLView const*self) {
return self;
}

cocos2d::GLView const*gencast__Ref__GLView(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::GLView const*>(self);
}

void gendel__Scheduler(cocos2d::Scheduler const*self) {
delete self;
}

float genpop__Scheduler_getTimeScale(cocos2d::Scheduler*self) {
return self->getTimeScale();
}

void genpop__Scheduler_setTimeScale(cocos2d::Scheduler*self, float arg1) {
self->setTimeScale(arg1);
}

void genpop__Scheduler_scheduleWithInterval(cocos2d::Scheduler*self, ScheduleCallback_impl*arg1_, void*arg2, float arg3, bool arg4, std::string const*arg5_) {
ScheduleCallback arg1(arg1_);
std::string const&arg5 = *arg5_;
self->schedule(arg1, arg2, arg3, arg4, arg5);
}

void genpop__Scheduler_scheduleWithIntervalAndRepeat(cocos2d::Scheduler*self, ScheduleCallback_impl*arg1_, void*arg2, float arg3, unsigned int arg4, float arg5, bool arg6, std::string const*arg7_) {
ScheduleCallback arg1(arg1_);
std::string const&arg7 = *arg7_;
self->schedule(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

void genpop__Scheduler_unschedule(cocos2d::Scheduler*self, std::string const*arg1_, void*arg2) {
std::string const&arg1 = *arg1_;
self->unschedule(arg1, arg2);
}

bool genpop__Scheduler_isScheduled(cocos2d::Scheduler*self, std::string const*arg1_, void*arg2) {
std::string const&arg1 = *arg1_;
return self->isScheduled(arg1, arg2);
}

void genpop__Scheduler_pauseTarget(cocos2d::Scheduler*self, void*arg1) {
self->pauseTarget(arg1);
}

void genpop__Scheduler_resumeTarget(cocos2d::Scheduler*self, void*arg1) {
self->resumeTarget(arg1);
}

bool genpop__Scheduler_isTargetPaused(cocos2d::Scheduler*self, void*arg1) {
return self->isTargetPaused(arg1);
}

void genpop__Scheduler_unscheduleAllForTarget(cocos2d::Scheduler*self, void*arg1) {
self->unscheduleAllForTarget(arg1);
}

void genpop__Scheduler_performFunctionInCocosThread(cocos2d::Scheduler*self, ThreadPerformCallback_impl*arg1_) {
ThreadPerformCallback arg1(arg1_);
self->performFunctionInCocosThread(arg1);
}

cocos2d::Ref const*gencast__Scheduler__Ref(cocos2d::Scheduler const*self) {
return self;
}

cocos2d::Scheduler const*gencast__Ref__Scheduler(cocos2d::Ref const*self) {
return dynamic_cast<cocos2d::Scheduler const*>(self);
}

}  // extern "C"
