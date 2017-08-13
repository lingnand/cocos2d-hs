////////// GENERATED FILE, EDITS WILL BE LOST //////////

#ifndef HOPPY_MODULE_cocos2d_cocoStudio
#define HOPPY_MODULE_cocos2d_cocoStudio

#include <base/CCRef.h>
#include <memory>

extern "C" {

class NodeLoadCallback_impl {
public:
    explicit NodeLoadCallback_impl(void(*)(cocos2d::Ref*), void(*)(void(*)()), bool);
    ~NodeLoadCallback_impl();
    void operator()(cocos2d::Ref*);
private:
    NodeLoadCallback_impl(const NodeLoadCallback_impl&);
    NodeLoadCallback_impl& operator=(const NodeLoadCallback_impl&);

    void(*const f_)(cocos2d::Ref*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class NodeLoadCallback {
public:
    explicit NodeLoadCallback(NodeLoadCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::Ref*);
private:
    std::shared_ptr<NodeLoadCallback_impl> impl_;
};

}  // extern "C"

#endif  // ifndef HOPPY_MODULE_cocos2d_cocoStudio
