////////// GENERATED FILE, EDITS WILL BE LOST //////////

#ifndef HOPPY_MODULE_cocos2d_common
#define HOPPY_MODULE_cocos2d_common

#include <memory>

extern "C" {

class ScheduleCallback_impl {
public:
    explicit ScheduleCallback_impl(void(*)(float), void(*)(void(*)()), bool);
    ~ScheduleCallback_impl();
    void operator()(float);
private:
    ScheduleCallback_impl(const ScheduleCallback_impl&);
    ScheduleCallback_impl& operator=(const ScheduleCallback_impl&);

    void(*const f_)(float);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class ScheduleCallback {
public:
    explicit ScheduleCallback(ScheduleCallback_impl* impl) : impl_(impl) {}
    void operator()(float);
private:
    std::shared_ptr<ScheduleCallback_impl> impl_;
};

class ThreadPerformCallback_impl {
public:
    explicit ThreadPerformCallback_impl(void(*)(), void(*)(void(*)()), bool);
    ~ThreadPerformCallback_impl();
    void operator()();
private:
    ThreadPerformCallback_impl(const ThreadPerformCallback_impl&);
    ThreadPerformCallback_impl& operator=(const ThreadPerformCallback_impl&);

    void(*const f_)();
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class ThreadPerformCallback {
public:
    explicit ThreadPerformCallback(ThreadPerformCallback_impl* impl) : impl_(impl) {}
    void operator()();
private:
    std::shared_ptr<ThreadPerformCallback_impl> impl_;
};

}  // extern "C"

#endif  // ifndef HOPPY_MODULE_cocos2d_common
