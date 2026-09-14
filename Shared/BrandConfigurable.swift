import SwiftUI

protocol BrandConfigurable {
    static var restaurantName: String { get }
    static var subtitle: String { get }
    static var heroGradient: [Color] { get }
    static var accentColor: Color { get }
    static var menu: [MenuSection] { get }
}

extension BrandConfigurable {
    static var restaurantName: String {
        "Not set"
    }
}
