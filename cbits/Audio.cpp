////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "Audio.hpp"
#include <audio/include/AudioEngine.h>
#include <memory>
#include <string>

extern "C" {

void gendel__AudioEngine(cocos2d::experimental::AudioEngine const*self) {
delete self;
}

bool genpop__AudioEngine_lazyInit() {
return cocos2d::experimental::AudioEngine::lazyInit();
}

void genpop__AudioEngine_end() {
cocos2d::experimental::AudioEngine::end();
}

int genpop__AudioEngine_play2d(std::string const*arg1_, bool arg2, float arg3) {
std::string const&arg1 = *arg1_;
return cocos2d::experimental::AudioEngine::play2d(arg1, arg2, arg3);
}

int genpop__AudioEngine_play2dWithAudioProfile(std::string const*arg1_, bool arg2, float arg3, cocos2d::experimental::AudioProfile const*arg4) {
std::string const&arg1 = *arg1_;
return cocos2d::experimental::AudioEngine::play2d(arg1, arg2, arg3, arg4);
}

void genpop__AudioEngine_setLoop(int arg1, bool arg2) {
cocos2d::experimental::AudioEngine::setLoop(arg1, arg2);
}

bool genpop__AudioEngine_isLoop(int arg1) {
return cocos2d::experimental::AudioEngine::isLoop(arg1);
}

void genpop__AudioEngine_setVolume(int arg1, float arg2) {
cocos2d::experimental::AudioEngine::setVolume(arg1, arg2);
}

float genpop__AudioEngine_getVolume(int arg1) {
return cocos2d::experimental::AudioEngine::getVolume(arg1);
}

void genpop__AudioEngine_pause(int arg1) {
cocos2d::experimental::AudioEngine::pause(arg1);
}

void genpop__AudioEngine_pauseAll() {
cocos2d::experimental::AudioEngine::pauseAll();
}

void genpop__AudioEngine_resume(int arg1) {
cocos2d::experimental::AudioEngine::resume(arg1);
}

void genpop__AudioEngine_resumeAll() {
cocos2d::experimental::AudioEngine::resumeAll();
}

void genpop__AudioEngine_stop(int arg1) {
cocos2d::experimental::AudioEngine::stop(arg1);
}

void genpop__AudioEngine_stopAll() {
cocos2d::experimental::AudioEngine::stopAll();
}

void genpop__AudioEngine_setCurrentTime(int arg1, float arg2) {
cocos2d::experimental::AudioEngine::setCurrentTime(arg1, arg2);
}

float genpop__AudioEngine_getCurrentTime(int arg1) {
return cocos2d::experimental::AudioEngine::getCurrentTime(arg1);
}

float genpop__AudioEngine_getDuration(int arg1) {
return cocos2d::experimental::AudioEngine::getDuration(arg1);
}

cocos2d::experimental::AudioEngine::AudioState genpop__AudioEngine_getState(int arg1) {
return cocos2d::experimental::AudioEngine::getState(arg1);
}

void genpop__AudioEngine_setFinishCallback(int arg1, AudioFinishCallback_impl*arg2_) {
AudioFinishCallback arg2(arg2_);
cocos2d::experimental::AudioEngine::setFinishCallback(arg1, arg2);
}

int genpop__AudioEngine_getMaxAudioInstance() {
return cocos2d::experimental::AudioEngine::getMaxAudioInstance();
}

void genpop__AudioEngine_setMaxAudioInstance(int arg1) {
cocos2d::experimental::AudioEngine::setMaxAudioInstance(arg1);
}

void genpop__AudioEngine_uncache(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
cocos2d::experimental::AudioEngine::uncache(arg1);
}

void genpop__AudioEngine_uncacheAll() {
cocos2d::experimental::AudioEngine::uncacheAll();
}

cocos2d::experimental::AudioProfile*genpop__AudioEngine_getProfile(int arg1) {
return cocos2d::experimental::AudioEngine::getProfile(arg1);
}

cocos2d::experimental::AudioProfile*genpop__AudioEngine_getProfileByName(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return cocos2d::experimental::AudioEngine::getProfile(arg1);
}

void genpop__AudioEngine_preload(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
cocos2d::experimental::AudioEngine::preload(arg1);
}

void genpop__AudioEngine_preloadWithCallback(std::string const*arg1_, AudioLoadedCallback_impl*arg2_) {
std::string const&arg1 = *arg1_;
AudioLoadedCallback arg2(arg2_);
cocos2d::experimental::AudioEngine::preload(arg1, arg2);
}

AudioFinishCallback_impl::AudioFinishCallback_impl(void(*f)(int, std::string const*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

AudioFinishCallback_impl::~AudioFinishCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void AudioFinishCallback_impl::operator()(int arg1, std::string const&arg2_) {
std::string const*arg2 = &arg2_;
f_(arg1, arg2);
}

void AudioFinishCallback::operator()(int arg1, std::string const&arg2) {
(*impl_)(arg1, arg2);
}

AudioFinishCallback_impl*genpop__AudioFinishCallback(void(*f)(int, std::string const*), void(*release)(void(*)()), bool releaseRelease) {
return new AudioFinishCallback_impl(f, release, releaseRelease);
}

AudioLoadedCallback_impl::AudioLoadedCallback_impl(void(*f)(bool), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

AudioLoadedCallback_impl::~AudioLoadedCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void AudioLoadedCallback_impl::operator()(bool arg1) {
f_(arg1);
}

void AudioLoadedCallback::operator()(bool arg1) {
(*impl_)(arg1);
}

AudioLoadedCallback_impl*genpop__AudioLoadedCallback(void(*f)(bool), void(*release)(void(*)()), bool releaseRelease) {
return new AudioLoadedCallback_impl(f, release, releaseRelease);
}

cocos2d::experimental::AudioProfile*genpop__AudioProfile_new() {
return new cocos2d::experimental::AudioProfile();
}

void gendel__AudioProfile(cocos2d::experimental::AudioProfile const*self) {
delete self;
}

std::string const*genpop__AudioProfile_name_get(cocos2d::experimental::AudioProfile const*self) {
return &(self->name);
}

void genpop__AudioProfile_name_set(cocos2d::experimental::AudioProfile*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->name = arg1;
}

int genpop__AudioProfile_maxInstances_get(cocos2d::experimental::AudioProfile const*self) {
return self->maxInstances;
}

void genpop__AudioProfile_maxInstances_set(cocos2d::experimental::AudioProfile*self, int arg1) {
self->maxInstances = arg1;
}

double genpop__AudioProfile_minDelay_get(cocos2d::experimental::AudioProfile const*self) {
return self->minDelay;
}

void genpop__AudioProfile_minDelay_set(cocos2d::experimental::AudioProfile*self, double arg1) {
self->minDelay = arg1;
}

}  // extern "C"
