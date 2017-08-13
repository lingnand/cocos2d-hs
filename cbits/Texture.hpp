////////// GENERATED FILE, EDITS WILL BE LOST //////////

#ifndef HOPPY_MODULE_cocos2d_texture
#define HOPPY_MODULE_cocos2d_texture

#include <memory>
#include <renderer/CCTexture2D.h>

extern "C" {

class TextureLoadedCallback_impl {
public:
    explicit TextureLoadedCallback_impl(void(*)(cocos2d::Texture2D*), void(*)(void(*)()), bool);
    ~TextureLoadedCallback_impl();
    void operator()(cocos2d::Texture2D*);
private:
    TextureLoadedCallback_impl(const TextureLoadedCallback_impl&);
    TextureLoadedCallback_impl& operator=(const TextureLoadedCallback_impl&);

    void(*const f_)(cocos2d::Texture2D*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class TextureLoadedCallback {
public:
    explicit TextureLoadedCallback(TextureLoadedCallback_impl* impl) : impl_(impl) {}
    void operator()(cocos2d::Texture2D*);
private:
    std::shared_ptr<TextureLoadedCallback_impl> impl_;
};

}  // extern "C"

#endif  // ifndef HOPPY_MODULE_cocos2d_texture
