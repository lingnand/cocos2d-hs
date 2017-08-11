#ifndef HOPPY_STD_ITERATOR_HPP
#define HOPPY_STD_ITERATOR_HPP

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

#include <iterator>

namespace hoppy {
namespace iterator {

template <typename Iter, typename T>
T& put(Iter* self, const T& value) {
    return (**self = value);
}

template <typename Container>
typename Container::iterator deconst(
    typename Container::const_iterator iterator,
    Container& container) {
    return container.erase(iterator, iterator);
}

}  // namespace iterator
}  // namespace hoppy

#endif
