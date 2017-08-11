#ifndef HOPPY_STD_UTILITY_HPP
#define HOPPY_STD_UTILITY_HPP

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

#include <utility>

namespace hoppy {
namespace utility {

template <typename A, typename B>
A& pairFirst(std::pair<A, B>& pair) {
    return pair.first;
}

template <typename A, typename B>
const A& pairFirst(const std::pair<A, B>& pair) {
    return pair.first;
}

template <typename A, typename B>
B& pairSecond(std::pair<A, B>& pair) {
    return pair.second;
}

template <typename A, typename B>
const B& pairSecond(const std::pair<A, B>& pair) {
    return pair.second;
}

}  // namespace utility
}  // namespace hoppy

#endif
