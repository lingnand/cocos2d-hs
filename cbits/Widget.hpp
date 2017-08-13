////////// GENERATED FILE, EDITS WILL BE LOST //////////

#ifndef HOPPY_MODULE_cocos2d_widget
#define HOPPY_MODULE_cocos2d_widget

#include <base/CCRef.h>
#include <memory>
#include <ui/UIWidget.h>

extern "C" {

class WidgetClickCallback_impl {
public:
    explicit WidgetClickCallback_impl(void(*)(cocos2d::Ref*), void(*)(void(*)()), bool);
    ~WidgetClickCallback_impl();
    void operator()(cocos2d::Ref*);
private:
    WidgetClickCallback_impl(const WidgetClickCallback_impl&);
    WidgetClickCallback_impl& operator=(const WidgetClickCallback_impl&);

    void(*const f_)(cocos2d::Ref*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class WidgetClickCallback {
public:
    explicit WidgetClickCallback(WidgetClickCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::Ref*);
private:
    std::shared_ptr<WidgetClickCallback_impl> impl_;
};

class WidgetEventCallback_impl {
public:
    explicit WidgetEventCallback_impl(void(*)(cocos2d::Ref*, int), void(*)(void(*)()), bool);
    ~WidgetEventCallback_impl();
    void operator()(cocos2d::Ref*, int);
private:
    WidgetEventCallback_impl(const WidgetEventCallback_impl&);
    WidgetEventCallback_impl& operator=(const WidgetEventCallback_impl&);

    void(*const f_)(cocos2d::Ref*, int);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class WidgetEventCallback {
public:
    explicit WidgetEventCallback(WidgetEventCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::Ref*, int);
private:
    std::shared_ptr<WidgetEventCallback_impl> impl_;
};

class WidgetTouchCallback_impl {
public:
    explicit WidgetTouchCallback_impl(void(*)(cocos2d::Ref*, cocos2d::ui::Widget::TouchEventType), void(*)(void(*)()), bool);
    ~WidgetTouchCallback_impl();
    void operator()(cocos2d::Ref*, cocos2d::ui::Widget::TouchEventType);
private:
    WidgetTouchCallback_impl(const WidgetTouchCallback_impl&);
    WidgetTouchCallback_impl& operator=(const WidgetTouchCallback_impl&);

    void(*const f_)(cocos2d::Ref*, cocos2d::ui::Widget::TouchEventType);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class WidgetTouchCallback {
public:
    explicit WidgetTouchCallback(WidgetTouchCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::Ref*, cocos2d::ui::Widget::TouchEventType);
private:
    std::shared_ptr<WidgetTouchCallback_impl> impl_;
};

}  // extern "C"

#endif  // ifndef HOPPY_MODULE_cocos2d_widget
