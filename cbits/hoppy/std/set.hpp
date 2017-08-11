#ifndef HOPPY_STD_SET_HPP
#define HOPPY_STD_SET_HPP

// This file is part of Hoppy.
//
// Copyright 2015-2016 Bryan Gardiner <bog@khumba.net>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <set>

namespace hoppy {
namespace set {

template <typename T>
bool insert(std::set<T>& set, const T& value) {
    return set.insert(value).second;
}

template <typename T>
typename std::set<T>::iterator insertAndGetIterator(std::set<T>& set, const T& value) {
    return set.insert(value).first;
}

}  // namespace set
}  // namespace hoppy

#endif
