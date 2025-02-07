/*
 * Backpack - Skyscanner's Design System
 *
 * Copyright 2018 Skyscanner Ltd
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

#import "BPKCalendarColor.h"

#import <Backpack/Color.h>
#import <Backpack/Common.h>

@implementation BPKCalendarColor

+ (UIColor *)normalColor {
    return BPKColor.backgroundColor;
}

+ (UIColor *)normalTitleColor {
    return BPKColor.textPrimaryColor;
}

+ (UIColor *)positiveColor {
    return [BPKColor dynamicColorWithLightVariant:BPKColor.monteverde darkVariant:BPKColor.glencoe];
}

+ (UIColor *)positiveTitleColor {
    return [BPKColor dynamicColorWithLightVariant:BPKColor.white darkVariant:BPKColor.black];
}

+ (UIColor *)negativeColor {
    return BPKColor.panjin;
}

+ (UIColor *)negativeTitleColor {
    return [BPKColor dynamicColorWithLightVariant:BPKColor.white darkVariant:BPKColor.black];
}

+ (UIColor *)noDataColor {
    return [BPKColor dynamicColorWithLightVariant:BPKColor.skyGrayTint03 darkVariant:BPKColor.blackTint06];
}

+ (UIColor *)noDataTitleColor {
    return [BPKColor dynamicColorWithLightVariant:BPKColor.white darkVariant:BPKColor.black];
}

+ (UIColor *)neutralColor {
    return BPKColor.erfoud;
}

+ (UIColor *)neutralTitleColor {
    return [BPKColor dynamicColorWithLightVariant:BPKColor.skyGray darkVariant:BPKColor.black];
}

@end
