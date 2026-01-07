# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

ConcentricCorners is a SwiftUI demonstration application showcasing SwiftUI's concentric corner styling features. The app is built with Xcode 26.2 and targets iOS 26.2, macOS 26.1, and visionOS 26.2.

## Build Commands

### Building the application
```bash
# Build for macOS
xcodebuild -scheme ConcentricCorners -destination 'platform=macOS' build

# Build for iOS Simulator (example with available device)
xcodebuild -scheme ConcentricCorners -destination 'platform=iOS Simulator,name=iPhone 17' build

# Build for iPad Simulator
xcodebuild -scheme ConcentricCorners -destination 'platform=iOS Simulator,name=iPad Air 11-inch (M3)' build

# List available destinations
xcodebuild -scheme ConcentricCorners -showdestinations
```

### Running tests
```bash
# Run unit tests
xcodebuild test -scheme ConcentricCorners -destination 'platform=macOS'

# Run UI tests
xcodebuild test -scheme ConcentricCornersUITests -destination 'platform=macOS'

# Run specific test
xcodebuild test -scheme ConcentricCorners -destination 'platform=macOS' -only-testing:ConcentricCornersTests/ConcentricCornersTests/example
```

### Cleaning build artifacts
```bash
xcodebuild clean -scheme ConcentricCorners
```

## Architecture

### Project Structure

- **ConcentricCorners/** - Main application source code
  - `ConcentricCornersApp.swift` - App entry point (@main)
  - `ContentView.swift` - Main UI view demonstrating concentric corners
  - `Assets.xcassets/` - Image and color assets
- **ConcentricCornersTests/** - Unit tests using Swift Testing framework
- **ConcentricCornersUITests/** - UI automation tests

### Key SwiftUI Features

This project demonstrates **concentric corner styling**, a SwiftUI feature for creating layered, rounded corners:

- `.clipShape(.rect(corners: .concentric, isUniform: true))` - Applies concentric corner clipping to views
- `ConcentricRectangle()` - SwiftUI shape for creating concentric rectangular paths
- `.presentationDetents([.fraction(0.125), .fraction(0.25), .medium, .fraction(0.75), .large])` - Uses fractional presentation detents for bottom sheets

### Testing Framework

This project uses **Swift Testing** (not XCTest). Key differences:
- Import `Testing` instead of `XCTest`
- Use `@Test` attribute instead of `func test...() { }`
- Use `#expect(...)` instead of `XCTAssert...`

Example:
```swift
import Testing

struct MyTests {
    @Test func myTest() async throws {
        #expect(value == expectedValue)
    }
}
```

## Platform Support

The app is multi-platform with the following deployment targets:
- **iOS**: 26.2 (iPhone and iPad)
- **macOS**: 26.1
- **visionOS**: 26.2

The SDK root is set to `auto`, allowing the project to build for any supported platform from a single scheme.

## Development Notes

### Code Signing
- Development Team: KM569NM77P
- Bundle Identifier: com.SamuraiStudios.ConcentricCorners
- Automatic code signing is enabled

### Swift Configuration
- Swift Version: 5.0
- Swift Approachable Concurrency: Enabled
- Default Actor Isolation: MainActor
- Member Import Visibility: Enabled (upcoming feature)

### Xcode Settings
- Enable Previews: Yes (SwiftUI previews are enabled)
- Sandboxing: App Sandbox and Hardened Runtime are enabled
- User Script Sandboxing: Enabled
