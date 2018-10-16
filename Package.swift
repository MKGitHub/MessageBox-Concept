// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name:"MessageBox",
    products:[
        .library(name:"MessageBox", targets:["MessageBox"])
    ],
    targets:[
        .target(name:"MessageBox", dependencies:[])
    ],
    swiftLanguageVersions:[4]
)

