import SwiftUI

struct BrandConfig: BrandConfigurable {
    static let restaurantName = "KFC"
    static let subtitle = "Finger Lickin' Good · Open until 11 PM"
    static let heroGradient: [Color] = [
        Color(red: 0.78, green: 0.08, blue: 0.08),
        Color(red: 1.0, green: 0.35, blue: 0.0)
    ]
    static let accentColor = Color.red
    static let menu = kfcMenu
    static let logoName = "BrandLogo"
}
