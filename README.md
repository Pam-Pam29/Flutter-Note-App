# Flutter Notes App
A comprehensive notes application built with Flutter, Firebase Authentication, and Cloud Firestore following Clean Architecture principles.

## Features

 Firebase Authentication - Secure email/password authentication
 
 CRUD Operations - Create, Read, Update, Delete notes
 
Clean Architecture - Separation of concerns with organized layers

 Modern UI - Material Design with responsive interface
 
Real-time Sync - Instant data synchronization with Firestore

 State Management - Efficient state handling with BLoC pattern
 
 Security - Proper data validation and secure storage
 
 Multi-platform - Supports Android, iOS, Web, Windows, Linux, macOS



## Layer Responsibilities

Data Layer: Handles data operations, API calls, and local storage

Business Logic Layer: Contains application logic and state management

Presentation Layer: UI components and user interactions


## Build Steps
**Prerequisites**

Flutter SDK (>=3.0.0)
Firebase account
Android Studio / VS Code
Git

1. Clone Repository
```bash
git clone https://github.com/yourusername/flutter-notes-app.git
cd flutter-notes-app
```

2. Install Dependencies
```bash
flutter pub get
```

3. Firebase Setup
   
4. Add Firebase to App

Register your app in Firebase Console

Download configuration files:

google-services.json for Android → place in android/app/

GoogleService-Info.plist for iOS → place in ios/Runner/


5. Configure Build Files
```
Android (android/app/build.gradle)
gradleandroid {
    compileSdkVersion 33
    defaultConfig {
        minSdkVersion 19
        targetSdkVersion 33
        multiDexEnabled true
    }
}
iOS (ios/Runner/Info.plist)
```


6. Run the App
   
```bash
flutter run
```

Notes Management

Create new notes with custom text

View all notes in chronological order

Edit existing notes inline

Delete notes with confirmation

Empty state handling

User Experience

Loading indicators during operations

Success/error snackbar notifications

Responsive design for all screen sizes

Intuitive navigation and controls

Testing
Run Tests

```bash
flutter test
```

Run Code Analysis
```bash
flutter analyze
```

Generate Coverage Report

```bash
flutter test --coverage
```


**Contributing**

Fork the repository
Create a feature branch (git checkout -b feature/amazing-feature)
Commit your changes (git commit -m 'Add some amazing feature')
Push to the branch (git push origin feature/amazing-feature)
Open a Pull Request


### License
This project is licensed under the MIT License - see the LICENSE file for details.

### Acknowledgments

Flutter team for the amazing framework
Firebase team for backend services
BLoC library contributors
Material Design team for UI guidelines

### Contact
For questions or support, please open an issue in the GitHub repository.
