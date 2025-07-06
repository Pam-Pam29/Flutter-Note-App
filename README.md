# Flutter Notes App

A comprehensive notes application built with Flutter, Firebase Authentication, and Cloud Firestore following Clean Architecture principles.

## Features

- 🔐 Firebase Authentication (Email/Password)
- 📝 CRUD operations for notes
- 🏗️ Clean Architecture with BLoC pattern
- 📱 Responsive UI with Material Design
- 🔄 Real-time data synchronization
- ⚡ State management with flutter_bloc

## Architecture
lib/
├── main.dart
├── data/
│   ├── models/
│   │   └── note_model.dart
│   └── repositories/
│       ├── auth_repository.dart
│       └── notes_repository.dart
├── business_logic/
│   ├── auth_cubit/
│   │   ├── auth_cubit.dart
│   │   └── auth_state.dart
│   └── notes_cubit/
│       ├── notes_cubit.dart
│       └── notes_state.dart
└── presentation/
├── screens/
│   ├── auth_screen.dart
│   └── notes_screen.dart
└── widgets/
└── note_dialog.dart

## Build Steps

### Prerequisites
- Flutter SDK (>=3.0.0)
- Firebase account
- Android Studio / VS Code
- Git

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flutter-notes-app.git
   cd flutter-notes-app

Install dependencies
bashflutter pub get

**Firebase Setup**

Create a new Firebase project
Enable Authentication (Email/Password)
Create Cloud Firestore database
Download configuration files:

google-services.json for Android
GoogleService-Info.plist for iOS




Run the app
bashflutter run


Testing
Run tests with:
bashflutter test
Run analyzer:
bashflutter analyze
Contributing

Fork the repository
Create a feature branch
Make your changes
Run tests and analyzer
Submit a pull request

License
This project is licensed under the MIT License.