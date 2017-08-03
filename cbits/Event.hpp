////////// GENERATED FILE, EDITS WILL BE LOST //////////

#ifndef HOPPY_MODULE_cocos2d_event
#define HOPPY_MODULE_cocos2d_event

#include <base/CCEvent.h>
#include <base/CCEventCustom.h>
#include <base/CCEventKeyboard.h>
#include <base/CCEventMouse.h>
#include <base/CCTouch.h>
#include <base/ccTypes.h>
#include <memory>
#include <ui/UIWidget.h>
#include <vector>

extern "C" {

class EventAccelerationCallback_impl {
public:
    explicit EventAccelerationCallback_impl(void(*)(cocos2d::Acceleration*, cocos2d::Event*), void(*)(void(*)()), bool);
    ~EventAccelerationCallback_impl();
    void operator()(cocos2d::Acceleration*, cocos2d::Event*);
private:
    EventAccelerationCallback_impl(const EventAccelerationCallback_impl&);
    EventAccelerationCallback_impl& operator=(const EventAccelerationCallback_impl&);

    void(*const f_)(cocos2d::Acceleration*, cocos2d::Event*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventAccelerationCallback {
public:
    explicit EventAccelerationCallback(EventAccelerationCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::Acceleration*, cocos2d::Event*);
private:
    std::shared_ptr<EventAccelerationCallback_impl> impl_;
};

class EventCustomCallback_impl {
public:
    explicit EventCustomCallback_impl(void(*)(cocos2d::EventCustom*), void(*)(void(*)()), bool);
    ~EventCustomCallback_impl();
    void operator()(cocos2d::EventCustom*);
private:
    EventCustomCallback_impl(const EventCustomCallback_impl&);
    EventCustomCallback_impl& operator=(const EventCustomCallback_impl&);

    void(*const f_)(cocos2d::EventCustom*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventCustomCallback {
public:
    explicit EventCustomCallback(EventCustomCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::EventCustom*);
private:
    std::shared_ptr<EventCustomCallback_impl> impl_;
};

class EventFocusCallback_impl {
public:
    explicit EventFocusCallback_impl(void(*)(cocos2d::ui::Widget*, cocos2d::ui::Widget*), void(*)(void(*)()), bool);
    ~EventFocusCallback_impl();
    void operator()(cocos2d::ui::Widget*, cocos2d::ui::Widget*);
private:
    EventFocusCallback_impl(const EventFocusCallback_impl&);
    EventFocusCallback_impl& operator=(const EventFocusCallback_impl&);

    void(*const f_)(cocos2d::ui::Widget*, cocos2d::ui::Widget*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventFocusCallback {
public:
    explicit EventFocusCallback(EventFocusCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::ui::Widget*, cocos2d::ui::Widget*);
private:
    std::shared_ptr<EventFocusCallback_impl> impl_;
};

class EventKeyboardCallback_impl {
public:
    explicit EventKeyboardCallback_impl(void(*)(cocos2d::EventKeyboard::KeyCode, cocos2d::Event*), void(*)(void(*)()), bool);
    ~EventKeyboardCallback_impl();
    void operator()(cocos2d::EventKeyboard::KeyCode, cocos2d::Event*);
private:
    EventKeyboardCallback_impl(const EventKeyboardCallback_impl&);
    EventKeyboardCallback_impl& operator=(const EventKeyboardCallback_impl&);

    void(*const f_)(cocos2d::EventKeyboard::KeyCode, cocos2d::Event*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventKeyboardCallback {
public:
    explicit EventKeyboardCallback(EventKeyboardCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::EventKeyboard::KeyCode, cocos2d::Event*);
private:
    std::shared_ptr<EventKeyboardCallback_impl> impl_;
};

class EventMouseCallback_impl {
public:
    explicit EventMouseCallback_impl(void(*)(cocos2d::EventMouse*), void(*)(void(*)()), bool);
    ~EventMouseCallback_impl();
    void operator()(cocos2d::EventMouse*);
private:
    EventMouseCallback_impl(const EventMouseCallback_impl&);
    EventMouseCallback_impl& operator=(const EventMouseCallback_impl&);

    void(*const f_)(cocos2d::EventMouse*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventMouseCallback {
public:
    explicit EventMouseCallback(EventMouseCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::EventMouse*);
private:
    std::shared_ptr<EventMouseCallback_impl> impl_;
};

class EventTouchBeganCallback_impl {
public:
    explicit EventTouchBeganCallback_impl(bool(*)(cocos2d::Touch*, cocos2d::Event*), void(*)(void(*)()), bool);
    ~EventTouchBeganCallback_impl();
    bool operator()(cocos2d::Touch*, cocos2d::Event*);
private:
    EventTouchBeganCallback_impl(const EventTouchBeganCallback_impl&);
    EventTouchBeganCallback_impl& operator=(const EventTouchBeganCallback_impl&);

    bool(*const f_)(cocos2d::Touch*, cocos2d::Event*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventTouchBeganCallback {
public:
    explicit EventTouchBeganCallback(EventTouchBeganCallback_impl* impl) : impl_(impl) {}
    bool operator()(cocos2d::Touch*, cocos2d::Event*);
private:
    std::shared_ptr<EventTouchBeganCallback_impl> impl_;
};

class EventTouchCallback_impl {
public:
    explicit EventTouchCallback_impl(void(*)(cocos2d::Touch*, cocos2d::Event*), void(*)(void(*)()), bool);
    ~EventTouchCallback_impl();
    void operator()(cocos2d::Touch*, cocos2d::Event*);
private:
    EventTouchCallback_impl(const EventTouchCallback_impl&);
    EventTouchCallback_impl& operator=(const EventTouchCallback_impl&);

    void(*const f_)(cocos2d::Touch*, cocos2d::Event*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventTouchCallback {
public:
    explicit EventTouchCallback(EventTouchCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::Touch*, cocos2d::Event*);
private:
    std::shared_ptr<EventTouchCallback_impl> impl_;
};

class EventTouchesCallback_impl {
public:
    explicit EventTouchesCallback_impl(void(*)(std::vector<cocos2d::Touch*>const*, cocos2d::Event*), void(*)(void(*)()), bool);
    ~EventTouchesCallback_impl();
    void operator()(std::vector<cocos2d::Touch*>const&, cocos2d::Event*);
private:
    EventTouchesCallback_impl(const EventTouchesCallback_impl&);
    EventTouchesCallback_impl& operator=(const EventTouchesCallback_impl&);

    void(*const f_)(std::vector<cocos2d::Touch*>const*, cocos2d::Event*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class EventTouchesCallback {
public:
    explicit EventTouchesCallback(EventTouchesCallback_impl* impl) : impl_(impl) {}
    void operator()(std::vector<cocos2d::Touch*>const&, cocos2d::Event*);
private:
    std::shared_ptr<EventTouchesCallback_impl> impl_;
};

}  // extern "C"

#endif  // ifndef HOPPY_MODULE_cocos2d_event
