//
//  ContentView.swift
//  RestMenu
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    // Hero header
                    ZStack(alignment: .bottomLeading) {
                        Rectangle()
                            .fill(
                                LinearGradient(
                                    colors: BrandConfig.heroGradient,
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(height: 200)

                        VStack(alignment: .leading, spacing: 4) {
                            HStack(spacing: 12) {
                                Image(BrandConfig.logoName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 48, height: 48)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text(BrandConfig.restaurantName)
                                    .font(.largeTitle.bold())
                                    .foregroundStyle(.white)
                            }
                            Text(BrandConfig.subtitle)
                                .font(.subheadline)
                                .foregroundStyle(.white.opacity(0.85))
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    }

                    // Menu sections
                    ForEach(BrandConfig.menu) { section in
                        MenuSectionView(section: section)
                    }

                    Spacer(minLength: 32)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("")
            .ignoresSafeArea(edges: .top)
        }
    }
}

// MARK: - Section

struct MenuSectionView: View {
    let section: MenuSection

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(section.title)
                .font(.title2.bold())
                .padding(.horizontal, 20)
                .padding(.top, 28)
                .padding(.bottom, 12)

            Divider()
                .padding(.horizontal, 20)

            ForEach(section.items) { item in
                MenuItemRow(item: item)
                if item.id != section.items.last?.id {
                    Divider()
                        .padding(.leading, 72)
                }
            }
        }
    }
}

// MARK: - Row

struct MenuItemRow: View {
    let item: MenuItem

    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Text(item.emoji)
                .font(.system(size: 36))
                .frame(width: 52, height: 52)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 4) {
                Text(item.name)
                    .font(.body.weight(.semibold))
                Text(item.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }

            Spacer()

            Text(item.price, format: .currency(code: "USD"))
                .font(.body.weight(.medium))
                .foregroundStyle(BrandConfig.accentColor)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
    }
}

#Preview {
    ContentView()
}
