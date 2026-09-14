import Foundation

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let emoji: String
}

struct MenuSection: Identifiable {
    let id = UUID()
    let title: String
    let items: [MenuItem]
}

let kfcMenu: [MenuSection] = [
    MenuSection(title: "Starters", items: [
        MenuItem(name: "Popcorn Chicken", description: "Bite-sized crispy chicken pieces", price: 5.99, emoji: "🍗"),
        MenuItem(name: "Coleslaw", description: "Creamy classic KFC coleslaw", price: 2.49, emoji: "🥗"),
        MenuItem(name: "Corn on the Cob", description: "Buttery sweet corn", price: 1.99, emoji: "🌽"),
    ]),
    MenuSection(title: "Mains", items: [
        MenuItem(name: "Original Recipe Bucket", description: "8 pieces of signature fried chicken", price: 22.99, emoji: "🪣"),
        MenuItem(name: "Zinger Burger", description: "Spicy crispy chicken fillet, lettuce, mayo", price: 8.99, emoji: "🍔"),
        MenuItem(name: "Twister Wrap", description: "Grilled chicken, lettuce, cheese, sauce", price: 7.49, emoji: "🌯"),
        MenuItem(name: "Chicken Strips (5pc)", description: "Tender boneless strips, dipping sauce", price: 9.49, emoji: "🍗"),
    ]),
    MenuSection(title: "Sides", items: [
        MenuItem(name: "Mashed Potato & Gravy", description: "Creamy mashed potato with KFC gravy", price: 3.49, emoji: "🥔"),
        MenuItem(name: "Mac & Cheese", description: "KFC's signature mac and cheese", price: 3.99, emoji: "🧀"),
        MenuItem(name: "Biscuit", description: "Freshly baked buttermilk biscuit", price: 1.49, emoji: "🍞"),
    ]),
    MenuSection(title: "Drinks", items: [
        MenuItem(name: "Pepsi (Regular)", description: "Medium or large", price: 2.49, emoji: "🥤"),
        MenuItem(name: "Iced Tea", description: "Sweet or unsweetened", price: 2.49, emoji: "🧊"),
        MenuItem(name: "Lemonade", description: "Fresh squeezed style", price: 2.99, emoji: "🍋"),
    ]),
]

let mcdonaldsMenu: [MenuSection] = [
    MenuSection(title: "Starters", items: [
        MenuItem(name: "McNuggets (6pc)", description: "Tender chicken nuggets, choice of sauce", price: 4.99, emoji: "🍗"),
        MenuItem(name: "French Fries (Medium)", description: "Golden crispy salted fries", price: 2.99, emoji: "🍟"),
        MenuItem(name: "Apple Slices", description: "Fresh red apple slices", price: 1.49, emoji: "🍎"),
    ]),
    MenuSection(title: "Mains", items: [
        MenuItem(name: "Big Mac", description: "Two beef patties, special sauce, lettuce, cheese", price: 5.99, emoji: "🍔"),
        MenuItem(name: "McChicken", description: "Crispy chicken fillet, lettuce, mayo", price: 4.49, emoji: "🍔"),
        MenuItem(name: "Quarter Pounder", description: "Quarter pound beef, pickles, onions, mustard", price: 6.49, emoji: "🍔"),
        MenuItem(name: "Filet-O-Fish", description: "Crispy fish fillet, tartar sauce, cheese", price: 4.99, emoji: "🐟"),
    ]),
    MenuSection(title: "Desserts", items: [
        MenuItem(name: "McFlurry (Oreo)", description: "Soft serve ice cream with Oreo pieces", price: 3.49, emoji: "🍦"),
        MenuItem(name: "Apple Pie", description: "Warm baked apple filling in a flaky crust", price: 1.99, emoji: "🥧"),
        MenuItem(name: "Sundae", description: "Chocolate or strawberry topping", price: 2.49, emoji: "🍨"),
    ]),
    MenuSection(title: "Drinks", items: [
        MenuItem(name: "Coca-Cola (Medium)", description: "Fountain drink", price: 1.99, emoji: "🥤"),
        MenuItem(name: "McCafé Coffee", description: "Hot or iced, various sizes", price: 2.49, emoji: "☕"),
        MenuItem(name: "Orange Juice", description: "100% pure squeezed", price: 2.99, emoji: "🍊"),
    ]),
]
