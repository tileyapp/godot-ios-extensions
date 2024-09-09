// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Haptics",
	platforms: [
		.iOS(.v15),
		.macOS(.v13),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "Haptics",
			type: .dynamic,
			targets: ["Haptics"]
		)
	],
	dependencies: [
		.package(name: "SwiftGodot", path: "../SwiftGodot")
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "Haptics",
			dependencies: ["SwiftGodot"],
			swiftSettings: [.unsafeFlags(["-suppress-warnings"])]
		)
	]
)
