import SwiftUI

struct BrandConfig: BrandConfigurable {
    static let restaurantName = "McDonald's"
    static let subtitle = "I'm Lovin' It · Open 24 Hours"
    static let heroGradient: [Color] = [
        Color(red: 0.85, green: 0.08, blue: 0.08),
        Color(red: 0.98, green: 0.70, blue: 0.0)
    ]
    static let accentColor = Color.yellow
    static let menu = mcdonaldsMenu
    static let logoName = "BrandLogo"
}
