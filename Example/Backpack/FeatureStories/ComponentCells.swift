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

struct ComponentCellsProvider {
    let navigator: PresentableNavigator
    let toastDuration: TimeInterval
    
    private func show(presentable: Presentable) {
        navigator.present(presentable: presentable)
    }
    
    private func showChildren(title: String, children: [Components.Group]) {
        navigator.present(title: title, groups: children)
    }
    
    func cells() -> [Components.Cell] {
        let dataSources: [CellDataSource] = [
            badge(),
            barChart(),
            bottomSheet(),
            button(),
            calendar(),
            card(),
            chips(),
            flare(),
            dialog(),
            horizontalNavigation(),
            icon(),
            label(),
            navBar(),
            nudger(),
            overlayViews(),
            mapView(),
            panels(),
            progressBar(),
            ratings(),
            snackbar(),
            spinners(),
            starRatings(),
            switches(),
            tabBarControllers(),
            tappableLinkLabels(),
            textField(),
            textViews(),
            toasts(duration: toastDuration)
        ]
        return dataSources.map(\.cell)
    }
}

extension ComponentCellsProvider {
    private func badge() -> CellDataSource {
        PresentableCellDataSource(
            title: "Badges",
            storyboard: .named("Badges", on: "BadgesViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func barChart() -> CellDataSource {
        PresentableCellDataSource(
            title: "Bar charts",
            storyboard: .named("BarCharts", on: "BarChartsViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func bottomSheet() -> CellDataSource {
        PresentableCellDataSource(
            title: "Bottom sheet",
            storyboard: .named("BottomSheet", on: "BottomSheetViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func button() -> CellDataSource {
        GroupCellDataSource(
            title: "Buttons",
            groups: ButtonGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Buttons", children: $0) }
        )
    }
    private func calendar() -> CellDataSource {
        GroupCellDataSource(
            title: "Calendar",
            groups: CalendarGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Calendar", children: $0) }
        )
    }
    private func card() -> CellDataSource {
        GroupCellDataSource(
            title: "Cards",
            groups: CardGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Cards", children: $0) }
        )
    }
    private func chips() -> CellDataSource {
        GroupCellDataSource(
            title: "Chips",
            groups: ChipsGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Chips", children: $0) }
        )
    }
    private func flare() -> CellDataSource {
        GroupCellDataSource(
            title: "Flare views",
            groups: FlareGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Flare views", children: $0) }
        )
    }
    private func dialog() -> CellDataSource {
        GroupCellDataSource(
            title: "Dialogs",
            groups: DialogGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Dialogs", children: $0) }
        )
    }
    private func horizontalNavigation() -> CellDataSource {
        GroupCellDataSource(
            title: "Horizontal navigation",
            groups: HorizontalNavigationGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Horizontal navigation", children: $0) }
        )
    }
    private func icon() -> CellDataSource {
        PresentableCellDataSource(
            title: "Icons",
            storyboard: .named("Main", on: "IconsViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func label() -> CellDataSource {
        GroupCellDataSource(
            title: "Labels",
            groups: LabelGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Labels", children: $0) }
        )
    }
    private func navBar() -> CellDataSource {
        GroupCellDataSource(
            title: "Navigation bars",
            groups: NavBarGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Navigation bars", children: $0) }
        )
    }
    private func nudger() -> CellDataSource {
        PresentableCellDataSource.custom(
            title: "Nudger",
            customController: { NudgerViewController() },
            showPresentable: show(presentable:)
        )
    }
    private func overlayViews() -> CellDataSource {
        PresentableCellDataSource(
            title: "Overlay views",
            storyboard: .named("OverlayView", on: "OverlayViewViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func mapView() -> CellDataSource {
        GroupCellDataSource(
            title: "Map",
            groups: MapGroupsProvider(showPresentable: show(presentable:)).groups(),
            showChildren: { showChildren(title: "Navigation bars", children: $0) }
        )
    }
    private func panels() -> CellDataSource {
        PresentableCellDataSource(
            title: "Panels",
            storyboard: .named("Panel", on: "PanelsViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func progressBar() -> CellDataSource {
        PresentableCellDataSource(
            title: "Progress bar",
            storyboard: .named("ProgressBar", on: "ProgressBarViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func ratings() -> CellDataSource {
        PresentableCellDataSource(
            title: "Rating",
            storyboard: .named("Ratings", on: "RatingsViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func snackbar() -> CellDataSource {
        PresentableCellDataSource(
            title: "Snackbar",
            storyboard: .named("Snackbar", on: "SnackbarViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func spinners() -> CellDataSource {
        PresentableCellDataSource(
            title: "Spinners",
            storyboard: .named("Spinners", on: "SpinnersViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func starRatings() -> CellDataSource {
        PresentableCellDataSource(
            title: "Star ratings",
            storyboard: .named("StarRatings", on: "StarRatingsViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func switches() -> CellDataSource {
        PresentableCellDataSource(
            title: "Switches",
            storyboard: .named("Switches", on: "SwitchesViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func tabBarControllers() -> CellDataSource {
        PresentableCellDataSource(
            title: "Tab bar controller",
            storyboard: .named("TabBarControllers", on: "TabBarControllersViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func tappableLinkLabels() -> CellDataSource {
        PresentableCellDataSource(
            title: "Tappable link labels",
            storyboard: .named("TappableLinkLabels", on: "TappableLinkLabelsViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func textField() -> CellDataSource {
        PresentableCellDataSource(
            title: "Text fields",
            storyboard: .named("TextField", on: "TextFieldViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func textViews() -> CellDataSource {
        PresentableCellDataSource(
            title: "Text views",
            storyboard: .named("Main", on: "TextViewsViewController"),
            showPresentable: show(presentable:)
        )
    }
    private func toasts(duration: TimeInterval) -> CellDataSource {
        GroupCellDataSource(
            title: "Toasts",
            groups: ToastGroupsProvider(
                showPresentable: show(presentable:),
                toastDuration: duration
            ).groups(),
            showChildren: { showChildren(title: "Toasts", children: $0) }
        )
    }
}