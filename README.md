# ConcentricCorners

A SwiftUI demonstration app showcasing **concentric corner styling** - a powerful feature for creating layered, elegant rounded corners in modern iOS, macOS, and visionOS applications.

## Overview

ConcentricCorners demonstrates how to use SwiftUI's concentric corner API to create visually appealing UI elements with nested, rounded corners. The app features an episode card interface with bottom sheet presentation using fractional detents.

## Features

- **Concentric Corner Clipping** - Apply layered rounded corners to images and views using `.clipShape(.rect(corners: .concentric, isUniform: true))`
- **ConcentricRectangle Shape** - Use the `ConcentricRectangle()` shape for custom drawing and fills
- **Fractional Presentation Detents** - Implement bottom sheets with custom fractional heights (12.5%, 25%, 50%, 75%, 100%)
- **Multi-Platform Support** - Runs on iOS, macOS, and visionOS with a single codebase

## Requirements

- **Xcode**: 26.2 or later
- **iOS**: 26.2+
- **macOS**: 26.1+
- **visionOS**: 26.2+
- **Swift**: 5.0+

## Getting Started

### Clone the Repository

```bash
git clone <repository-url>
cd ConcentricCorners
```

### Open in Xcode

```bash
open ConcentricCorners.xcodeproj
```

### Build and Run

**For macOS:**
```bash
xcodebuild -scheme ConcentricCorners -destination 'platform=macOS' build
```

**For iOS Simulator:**
```bash
# List available simulators
xcodebuild -scheme ConcentricCorners -showdestinations

# Build for iPhone
xcodebuild -scheme ConcentricCorners -destination 'platform=iOS Simulator,name=iPhone 17' build
```

Or simply press `Cmd+R` in Xcode to build and run.

## Project Structure

```
ConcentricCorners/
├── ConcentricCorners/
│   ├── ConcentricCornersApp.swift    # App entry point
│   ├── ContentView.swift              # Main UI with concentric corners demo
│   └── Assets.xcassets/               # Images and color assets
├── ConcentricCornersTests/            # Unit tests (Swift Testing)
├── ConcentricCornersUITests/          # UI automation tests
└── ConcentricCorners.xcodeproj/       # Xcode project
```

## Key Code Examples

### Using Concentric Corners

```swift
Image(.episodeArtwork)
    .resizable()
    .frame(width: 300, height: 300)
    .clipShape(.rect(corners: .concentric, isUniform: true))
```

### ConcentricRectangle Shape

```swift
ConcentricRectangle()
    .fill(.indigo.gradient)
    .padding(20)
```

### Fractional Presentation Detents

```swift
.sheet(isPresented: $isPresented) {
    ContentView()
        .presentationDetents([
            .fraction(0.125),
            .fraction(0.25),
            .medium,
            .fraction(0.75),
            .large
        ])
}
```

## Testing

This project uses the **Swift Testing** framework (not XCTest).

Run tests from the command line:
```bash
xcodebuild test -scheme ConcentricCorners -destination 'platform=macOS'
```

Or press `Cmd+U` in Xcode.

## Technologies

- **SwiftUI** - Declarative UI framework
- **Swift Testing** - Modern Swift testing framework
- **Concentric Corners API** - SwiftUI corner styling
- **Presentation Detents** - Bottom sheet sizing

## License

This project is available for educational and demonstration purposes.

## Author

Created by Abdelrahman Mohamed

---

*Built with Xcode 26.2 | Swift 5.0 | SwiftUI*
