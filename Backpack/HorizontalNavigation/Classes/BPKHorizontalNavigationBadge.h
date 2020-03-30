/*
* Backpack - Skyscanner's Design System
*
* Copyright 2018-2020 Skyscanner Ltd
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*   http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

#import <Foundation/Foundation.h>

#import <Backpack/BPKBadge.h>

NS_ASSUME_NONNULL_BEGIN

/**
 * A `BPKHorizontalNavigationBadge` is a `BPKBadge` that it should only be used inside the `BPKHorizontalNavigationItemWithBadge`.
 *
 * It allows us to modiify the color for the entire badge.
*/
@interface BPKHorizontalNavigationBadge : BPKBadge

/**
 * Set this property to change the badge color
*/
@property(nonatomic, strong) UIColor *color;

- (instancetype)initWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END