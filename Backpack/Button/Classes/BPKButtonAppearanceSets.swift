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

import Foundation

@objcMembers
@IBDesignable
public class BPKButtonAppearanceSets: NSObject {
    
    private static var textPrimary = BPKColor.white.darkVariant(.black)
    private static var secondaryForeground = BPKColor.skyBlueShade01.darkVariant(.bpk.skyBlueTint01)
    private static var secondaryBackground = BPKColor.skyGrayTint06.darkVariant(.bpk.blackTint02)
    
    private static var disabledAppearance = BPKButtonAppearance.with(
        background: .bpk.skyGrayTint06.darkVariant(.bpk.blackTint01),
        foreground: .bpk.skyGrayTint04.darkVariant(.bpk.blackTint03)
    )
    
    private static var nonDynamicDisabledAppearance = BPKButtonAppearance.with(
        background: .bpk.skyGrayTint06,
        foreground: .bpk.skyGrayTint04.darkVariant(.bpk.skyGrayTint04)
    )
    
    private static var clearDisabledAppearance = BPKButtonAppearance.with(
        background: .clear,
        foreground: .bpk.skyGrayTint04.darkVariant(.bpk.blackTint03)
    )
    
    private static var clearOnDarkDisabledAppearance = BPKButtonAppearance.with(
        background: .clear,
        foreground: .white.withAlphaComponent(0.2)
    )
    
    public static var primary = BPKButtonAppearanceSet(
        regularAppearance: .with(background: .bpk.monteverde, foreground: textPrimary),
        loading: disabledAppearance, disabledAppearance: disabledAppearance,
        highlightedAppearance: .with(background: .pressedMonteverde, foreground: textPrimary)
    )
    
    public static var secondary = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: secondaryBackground,
            foreground: secondaryForeground
        ),
        loading: disabledAppearance, disabledAppearance: disabledAppearance,
        highlightedAppearance: .with(
            background: .bpk.skyGrayTint05.darkVariant(.bpk.blackTint01),
            foreground: secondaryForeground
        )
    )
    
    public static var featured = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: .primaryColor,
            foreground: textPrimary
        ),
        loading: disabledAppearance, disabledAppearance: disabledAppearance,
        highlightedAppearance: .with(background: .bpk.skyBlueShade01, foreground: textPrimary)
    )
    
    public static var destructive = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: secondaryBackground,
            foreground: .destructiveColor
        ),
        loading: disabledAppearance, disabledAppearance: disabledAppearance,
        highlightedAppearance: .with(background: .destructiveColor, foreground: textPrimary)
    )
    
    public static var link = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: .clear,
            foreground: .primaryColor
        ),
        loading: clearDisabledAppearance, disabledAppearance: clearDisabledAppearance,
        highlightedAppearance: .with(
            background: .clear,
            foreground: .bpk.skyBlueShade01.darkVariant(.bpk.skyBlue)
        )
    )
    
    public static var linkOnDark = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: .clear,
            foreground: .white
        ),
        loading: clearOnDarkDisabledAppearance, disabledAppearance: clearOnDarkDisabledAppearance,
        highlightedAppearance: .with(
            background: .clear,
            foreground: .white.withAlphaComponent(0.6)
        )
    )
    
    public static var primaryOnDark = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: .white,
            foreground: .bpk.skyGray
        ),
        loading: nonDynamicDisabledAppearance, disabledAppearance: nonDynamicDisabledAppearance,
        highlightedAppearance: .with(
            background: .bpk.skyGrayTint05,
            foreground: .bpk.skyGray
        )
    )
    
    public static var secondaryOnDark = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: .white.withAlphaComponent(0.1),
            foreground: .white
        ),
        loading: nonDynamicDisabledAppearance, disabledAppearance: nonDynamicDisabledAppearance,
        highlightedAppearance: .with(
            background: .white.withAlphaComponent(0.15),
            foreground: .white
        )
    )
    
    public static var primaryOnLight = BPKButtonAppearanceSet(
        regularAppearance: .with(
            background: .bpk_skyGray,
            foreground: .white
        ),
        loading: nonDynamicDisabledAppearance, disabledAppearance: nonDynamicDisabledAppearance,
        highlightedAppearance: .with(
            background: .bpk.skyGrayTint01,
            foreground: .white
        )
    )
    
    public static func appearance(fromStyle style: BPKButtonStyle) -> BPKButtonAppearanceSet {
        switch style {
        case .primary: return self.primary
        case .secondary: return self.secondary
        case .secondaryOnDark: return self.secondaryOnDark
        case .destructive: return self.destructive
        case .featured: return self.featured
        case .link: return self.link
        case .linkOnDark: return self.linkOnDark
        case .primaryOnDark: return self.primaryOnDark
        case .primaryOnLight: return self.primaryOnLight
        default: return self.primary
        }
    }
}

fileprivate extension UIColor {
    static var pressedMonteverde: UIColor {
        UIColor(red: 0, green: 0.416, blue: 0.38, alpha: 1)
    }
    
    static var clear = BPKColor.clear
    
    static var primaryColor = BPKColor.skyBlue.darkVariant(.bpk.skyBlueTint01)
    
    static var destructiveColor: UIColor {
        UIColor(red: 0.699, green: 0.182, blue: 0.269, alpha: 1)
            .darkVariant(
                UIColor(red: 0.972, green: 0.361, blue: 0.465, alpha: 1)
            )
    }
    
    static var bpk = BPKColor.self
    
    func darkVariant(_ dark: UIColor) -> UIColor {
        BPKColor.dynamicColor(withLightVariant: self, darkVariant: dark)
    }
}

fileprivate extension BPKButtonAppearance {
    static func with(background: UIColor, foreground: UIColor) -> BPKButtonAppearance {
        BPKButtonAppearance(
            borderColor: nil,
            gradientStart: background,
            gradientEnd: background,
            foregroundColor: foreground
        )
    }
}
