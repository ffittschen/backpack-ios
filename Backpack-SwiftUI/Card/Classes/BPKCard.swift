/*
 * Backpack - Skyscanner's Design System
 *
 * Copyright 2018-2022 Skyscanner Ltd
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

import SwiftUI

public struct BPKCard<Content: View>: View {
    public enum CornerStyle {
        case large, small
    }

    public enum Elevation {
        case `default`, focus, none

        var shadow: BPKShadow? {
            switch self {
            case .none: return nil
            case .focus: return .lg
            case .`default`: return .sm
            }
        }

        var backgroundColor: BPKColor {
            self == .focus ? .backgroundElevation02Color : .backgroundElevation01Color
        }
    }

    public enum Padding {
        case none, small

        var value: BPKSpacing {
            self == .small ? .base : .none
        }
    }

    private var elevation: Elevation
    private let content: Content
    private var padding: Padding
    private var cornerStyle: CornerStyle
    private var tapAction : () -> Void = {}

    public init(
        padding: Padding = .small,
        cornerStyle: CornerStyle = .small,
        elevation: Elevation = .default,
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
        self.cornerStyle = cornerStyle
        self.elevation = elevation
        self.padding = padding
    }

    private var cornerRadius: BPKCornerRadius {
        cornerStyle == .small ? .sm : .lg
    }

    public var body: some View {
        Button(action: tapAction) {
            content
                .padding(padding.value)
        }
        .accessibilityHidden(true)
        .buttonStyle(CardButtonStyle(
            cornerRadius: cornerRadius,
            backgroundColor: elevation.backgroundColor
        ))
        .shadow(elevation.shadow)
    }
    
    public func onTapGesture(perform: @escaping () -> Void) -> BPKCard {
        var result = self
        result.tapAction = perform
        return result
    }
}

private struct CardButtonStyle: ButtonStyle {
    let cornerRadius: BPKCornerRadius
    let backgroundColor: BPKColor

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(backgroundColor)
            .overlay(
                Color(.skyGrayTint02)
                    .opacity(configuration.isPressed ? 0.2 : 0)
                    .animation(.easeInOut)
            )
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }

}

struct BPKCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 40){
            BPKCard() {
                BPKText("Default")
            }
            BPKCard(elevation: .focus) {
                BPKText("Focused")
            }
            BPKCard(padding: .none) {
                BPKText("Not Padded")
            }
            BPKCard(cornerStyle: .large) {
                BPKText("Large Corner")
            }
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
