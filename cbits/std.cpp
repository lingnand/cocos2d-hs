////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "std.hpp"
#include <cstddef>
#include <string>

extern "C" {

std::string*genpop__StdString_new() {
return new std::string();
}

std::string*genpop__StdString_newFromCString(char const*arg1) {
return new std::string(arg1);
}

std::string*genpop__StdString_newCopy(std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return new std::string(arg1);
}

void gendel__StdString(std::string const*self) {
delete self;
}

char*genpop__StdString_at(std::string*self, int arg1) {
return &(self->at(arg1));
}

char genpop__StdString_get(std::string*self, int arg1) {
return self->at(arg1);
}

char const*genpop__StdString_c_str(std::string*self) {
return self->c_str();
}

size_t genpop__StdString_size(std::string*self) {
return self->size();
}

bool genpop__StdString_EQ(std::string*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__StdString_NE(std::string*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return ((*self)!=arg1);
}

bool genpop__StdString_LT(std::string*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return ((*self)<arg1);
}

bool genpop__StdString_LE(std::string*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return ((*self)<=arg1);
}

bool genpop__StdString_GT(std::string*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return ((*self)>arg1);
}

bool genpop__StdString_GE(std::string*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return ((*self)>=arg1);
}

std::string*genpop__StdString_ASSIGN(std::string*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return &(((*self)=arg1));
}

}  // extern "C"
