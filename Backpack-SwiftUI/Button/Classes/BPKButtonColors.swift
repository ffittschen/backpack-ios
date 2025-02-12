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

struct BPKButtonColors {
    let background: BPKColor
    let foreground: BPKColor
    
    static let staticDisabled = BPKButtonColors(background: .skyGrayTint06, foreground: .skyGrayTint04)
    static let clearDisabled = BPKButtonColors(background: .clear, foreground: .skyGrayTint04.darkVariant(.blackTint03))
    static let dynamicDisabled = BPKButtonColors(
        background: .skyGrayTint06.darkVariant(.blackTint01),
        foreground: .skyGrayTint04.darkVariant(.blackTint03)
    )
    static func clear(withForeground foreground: BPKColor) -> BPKButtonColors {
        BPKButtonColors(background: .clear, foreground: foreground)
    }
}
