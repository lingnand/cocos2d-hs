////////// GENERATED FILE, EDITS WILL BE LOST //////////

#ifndef HOPPY_MODULE_cocos2d_audio
#define HOPPY_MODULE_cocos2d_audio

#include <memory>
#include <string>

extern "C" {

class AudioFinishCallback_impl {
public:
    explicit AudioFinishCallback_impl(void(*)(int, std::string const*), void(*)(void(*)()), bool);
    ~AudioFinishCallback_impl();
    void operator()(int, std::string const&);
private:
    AudioFinishCallback_impl(const AudioFinishCallback_impl&);
    AudioFinishCallback_impl& operator=(const AudioFinishCallback_impl&);

    void(*const f_)(int, std::string const*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class AudioFinishCallback {
public:
    explicit AudioFinishCallback(AudioFinishCallback_impl* impl) : impl_(impl) {}
    void operator()(int, std::string const&);
private:
    std::shared_ptr<AudioFinishCallback_impl> impl_;
};

class AudioLoadedCallback_impl {
public:
    explicit AudioLoadedCallback_impl(void(*)(bool), void(*)(void(*)()), bool);
    ~AudioLoadedCallback_impl();
    void operator()(bool);
private:
    AudioLoadedCallback_impl(const AudioLoadedCallback_impl&);
    AudioLoadedCallback_impl& operator=(const AudioLoadedCallback_impl&);

    void(*const f_)(bool);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class AudioLoadedCallback {
public:
    explicit AudioLoadedCallback(AudioLoadedCallback_impl* impl) : impl_(impl) {}
    void operator()(bool);
private:
    std::shared_ptr<AudioLoadedCallback_impl> impl_;
};

}  // extern "C"

#endif  // ifndef HOPPY_MODULE_cocos2d_audio
