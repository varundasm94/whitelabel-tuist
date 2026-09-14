import SwiftUI

struct BrandConfig: BrandConfigurable {
    static let restaurantName = "Domino's"
    static let subtitle = "You Got 30 Minutes · Open until midnight"
    static let heroGradient: [Color] = [
        Color(red: 0.0, green: 0.27, blue: 0.67),
        Color(red: 0.88, green: 0.10, blue: 0.10)
    ]
    static let accentColor = Color.blue
    static let menu = mcdonaldsMenu
    static let logoName = "BrandLogo"
}
