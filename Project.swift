import ProjectDescription

let project = Project(
    name: "RestMenu",
    targets: [
        .target(
            name: "KFC",
            destinations: .iOS,
            product: .app,
            bundleId: "com.varun.KFC",
            sources: ["Shared/**", "KFC/**", "KFCBrandConfig.swift"],
            resources: ["KFC/Assets.xcassets"]
        ),
        .target(
            name: "McDonalds",
            destinations: .iOS,
            product: .app,
            bundleId: "com.varun.McDonalds",
            sources: ["Shared/**", "McDonalds/**", "McDBrandConfig.swift"],
            resources: ["McDonalds/Assets.xcassets"]
        ),
        .target(
            name: "Dominos",
            destinations: .iOS,
            product: .app,
            bundleId: "com.varun.Dominos",
            sources: ["Shared/**", "Dominoz/**", "DominozBrandConfig.swift"],
            resources: ["Dominoz/Assets.xcassets"]
        )
    ]
)
