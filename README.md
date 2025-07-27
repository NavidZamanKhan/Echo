# Echo Chat Application

A modern, secure chat application built with Flutter and Firebase, featuring real-time messaging, user authentication, and a beautiful gradient UI design.

## 🚀 Features

### 🔐 Authentication System

- **Email & Password Authentication** using Firebase Auth
- **User Registration** with email validation
- **Secure Login** with password visibility toggle
- **Form Validation** with real-time error feedback
- **Floating SnackBar Notifications** for user feedback

### 🎨 User Interface

- **Modern Gradient Design** with purple color scheme
- **Responsive Layout** that adapts to different screen sizes
- **Material Design 3** components and styling
- **Custom Chat Icon** branding
- **Smooth Animations** and transitions
- **Accessibility Features** with proper contrast and sizing

### 🔧 Technical Features

- **Cross-Platform Support** (Android, iOS, Web, Desktop)
- **Firebase Integration** for backend services
- **State Management** with Flutter's built-in StatefulWidget
- **Form Validation** with comprehensive error handling
- **Asset Management** with proper Flutter asset configuration

## 📱 Screenshots

### Authentication Screen

- Beautiful gradient background
- Clean form design with rounded corners
- Password visibility toggle
- Toggle between login and signup modes
- Floating success/error notifications

## 🛠️ Technology Stack

### Frontend

- **Flutter** ^3.8.1 - Cross-platform UI framework
- **Dart** - Programming language
- **Material Design 3** - UI/UX design system

### Backend & Services

- **Firebase Core** ^3.15.2 - Firebase initialization and configuration
- **Firebase Auth** ^5.7.0 - User authentication and management

### Development Tools

- **Flutter Lints** ^5.0.0 - Code quality and style enforcement
- **Cupertino Icons** ^1.0.8 - iOS-style icons

## 📋 Prerequisites

Before running this application, make sure you have the following installed:

- **Flutter SDK** (version 3.8.1 or higher)
- **Dart SDK** (included with Flutter)
- **Android Studio** or **VS Code** with Flutter extensions
- **Firebase Project** with Authentication enabled
- **Git** for version control

## 🚀 Installation & Setup

### 1. Clone the Repository

```bash
git clone <repository-url>
cd echo_chat_application
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Firebase Configuration

#### Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Create a new project or select existing project
3. Enable Authentication with Email/Password provider

#### Configure Firebase for Flutter

1. Install Firebase CLI: `npm install -g firebase-tools`
2. Login to Firebase: `firebase login`
3. Initialize Firebase: `firebase init`
4. Select Flutter as your platform
5. Follow the setup wizard to configure your project

#### Update Configuration Files

- Ensure `google-services.json` is in `android/app/`
- Verify `firebase_options.dart` is properly configured
- Check `firebase.json` has correct project settings

### 4. Run the Application

#### Development Mode

```bash
flutter run
```

#### Release Mode

```bash
flutter run --release
```

#### Specific Platform

```bash
# Android
flutter run -d android

# iOS
flutter run -d ios

# Web
flutter run -d chrome

# Windows
flutter run -d windows
```

## 📁 Project Structure

```
echo_chat_application/
├── android/                 # Android-specific configuration
├── ios/                    # iOS-specific configuration
├── lib/                    # Main Dart source code
│   ├── main.dart          # Application entry point
│   ├── firebase_options.dart  # Firebase configuration
│   └── screens/           # UI screens
│       └── auth.dart      # Authentication screen
├── assets/                # Static assets
│   └── images/           # Image assets
│       └── chat.png      # Chat application icon
├── pubspec.yaml          # Dependencies and configuration
├── firebase.json         # Firebase project configuration
└── README.md            # Project documentation
```

## 🔧 Configuration

### Firebase Configuration

The application uses Firebase for authentication. Key configuration files:

- **`firebase_options.dart`**: Contains Firebase project settings
- **`google-services.json`**: Android Firebase configuration
- **`firebase.json`**: Firebase project metadata

### Android Configuration

- **Minimum SDK**: 23 (required for Firebase Auth)
- **Target SDK**: Latest stable version
- **Compile SDK**: Latest stable version

### Asset Configuration

Assets are configured in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/chat.png
```

## 🎯 Usage

### Authentication Flow

1. **Launch Application**: The app starts with the authentication screen
2. **Choose Mode**: Toggle between "Login" and "Signup" modes
3. **Enter Credentials**:
   - Email address (with validation)
   - Password (minimum 6 characters)
4. **Submit**: Tap the login/signup button
5. **Feedback**: View success/error messages via floating SnackBars

### Form Validation

- **Email**: Must be valid email format with @ and domain
- **Password**: Minimum 6 characters required
- **Real-time Validation**: Errors appear as user types
- **Visual Feedback**: Form fields highlight validation status

## 🔒 Security Features

- **Firebase Authentication**: Secure user management
- **Password Hashing**: Handled by Firebase Auth
- **Input Validation**: Client-side validation for better UX
- **Error Handling**: Secure error messages without exposing sensitive data

## 🎨 UI/UX Design

### Color Scheme

- **Primary Color**: Purple gradient (#6B6BA9)
- **Background**: Gradient from primary to onPrimaryContainer
- **Form Fields**: White background with rounded corners
- **Buttons**: Material Design 3 styling

### Design Principles

- **Accessibility**: Proper contrast ratios and touch targets
- **Responsiveness**: Adapts to different screen sizes
- **Consistency**: Material Design 3 guidelines
- **User Feedback**: Clear visual and textual feedback

## 🚀 Deployment

### Android

```bash
flutter build apk --release
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

### Windows

```bash
flutter build windows --release
```

## 🐛 Troubleshooting

### Common Issues

#### Firebase Configuration Errors

- Ensure `google-services.json` is in the correct location
- Verify Firebase project settings in `firebase_options.dart`
- Check that Authentication is enabled in Firebase Console

#### Build Errors

- Run `flutter clean` and `flutter pub get`
- Ensure minimum SDK version is 23 or higher
- Check that all dependencies are compatible

#### Asset Loading Issues

- Verify assets are declared in `pubspec.yaml`
- Run `flutter pub get` after adding assets
- Check file paths and naming conventions

### Debug Commands

```bash
# Clean build cache
flutter clean

# Get dependencies
flutter pub get

# Check for issues
flutter doctor

# Analyze code
flutter analyze
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Run tests: `flutter test`
5. Commit changes: `git commit -m 'Add feature'`
6. Push to branch: `git push origin feature-name`
7. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Flutter Team** for the amazing framework
- **Firebase Team** for the backend services
- **Material Design Team** for the design system
- **Flutter Community** for packages and support

## 📞 Support

For support and questions:

- Create an issue in the repository
- Check the [Flutter documentation](https://docs.flutter.dev/)
- Visit the [Firebase documentation](https://firebase.google.com/docs)

## 🔄 Version History

- **v1.0.0** - Initial release with authentication system
  - Firebase Auth integration
  - Modern UI design
  - Form validation
  - Cross-platform support

---

**Built with ❤️ using Flutter and Firebase**
