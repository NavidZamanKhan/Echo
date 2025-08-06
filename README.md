# Echo Chat Application 📱💬

A modern, real-time chat application built with Flutter and Firebase, featuring beautiful UI design, emoji support, and seamless user authentication.

![Echo Chat App](assets/images/chat.png)

## ✨ Features

### 🔐 Authentication

- **Email & Password Authentication** with Firebase Auth
- **User Registration** with profile image upload
- **Secure Login/Logout** functionality
- **Username & Profile Picture** support
- **Form Validation** with user-friendly error messages

### 💬 Real-time Messaging

- **Live Chat** using Firebase Firestore
- **Real-time Message Updates** with StreamBuilder
- **Message Timestamps** for conversation tracking
- **User Profile Display** with images and usernames
- **Message Bubbles** with smart grouping for same user

### 😊 Emoji Support

- **Custom Emoji Picker** with 150+ emojis
- **Emoji Categories**: Faces, Animals, Objects, and more
- **Smart Emoji Integration** in text input
- **Keyboard/Emoji Toggle** functionality
- **Emoji Grid Layout** with smooth interactions

### 🎨 Beautiful UI/UX

- **Gradient Backgrounds** throughout the app
- **Modern Material Design** components
- **Responsive Layout** for different screen sizes
- **Smooth Animations** and transitions
- **Clean Message Bubbles** with proper alignment
- **Profile Image Integration** in chat interface

### 📱 Cross-Platform

- **Android** support
- **iOS** support
- **Web** support
- **Windows** support
- **macOS** support
- **Linux** support

## 🛠️ Technology Stack

### Frontend

- **Flutter** - Cross-platform UI framework
- **Dart** - Programming language
- **Material Design** - UI components and theming

### Backend & Services

- **Firebase Authentication** - User management
- **Cloud Firestore** - Real-time database
- **Firebase Storage** - Image storage
- **Firebase Messaging** - Push notifications (ready for implementation)

### Dependencies

- `firebase_core: ^3.10.0` - Firebase core functionality
- `firebase_auth: ^5.7.0` - Authentication services
- `cloud_firestore: ^5.6.12` - Real-time database
- `firebase_storage: ^12.4.10` - File storage
- `image_picker: ^1.1.2` - Image selection
- `cached_network_image: ^3.3.1` - Image caching
- `emoji_picker_flutter: ^1.6.1` - Emoji picker

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point and theme configuration
├── firebase_options.dart     # Firebase configuration
├── screens/
│   ├── auth.dart            # Authentication screen (login/signup)
│   ├── chat.dart            # Main chat interface
│   └── splash.dart          # Loading screen
├── widgets/
│   ├── chat_messages.dart   # Message list widget
│   ├── message_bubble.dart  # Individual message display
│   ├── new_message.dart     # Message input with emoji picker
│   └── user_image_picker.dart # Profile image selection
└── data/
    └── emojis.dart          # Emoji data collection
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.8.1)
- Dart SDK
- Firebase project setup
- Android Studio / VS Code

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/echo_chat_application.git
   cd echo_chat_application
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Firebase Setup**

   - Create a new Firebase project
   - Enable Authentication (Email/Password)
   - Enable Cloud Firestore
   - Enable Storage
   - Download and add `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
   - Update `firebase_options.dart` with your project configuration

4. **Run the application**
   ```bash
   flutter run
   ```

## 🔧 Configuration

### Firebase Configuration

1. Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
2. Enable the following services:
   - Authentication (Email/Password sign-in method)
   - Cloud Firestore (in test mode for development)
   - Storage (for profile images)
3. Add your app to Firebase project
4. Download configuration files and place them in the appropriate directories

### Environment Setup

- Ensure Flutter is properly installed and configured
- Set up Android/iOS development environment
- Configure Firebase CLI if needed

## 📱 Usage

### Authentication

1. **Sign Up**: Create a new account with email, password, username, and profile image
2. **Login**: Use your email and password to access the chat
3. **Logout**: Use the exit button in the chat screen

### Chat Features

1. **Send Messages**: Type your message and tap the send button
2. **Use Emojis**: Tap the emoji icon to open the emoji picker
3. **View Messages**: Real-time updates of all messages
4. **Profile Images**: See user profile pictures in the chat

## 🎨 Customization

### Theme Colors

The app uses a custom color scheme based on purple tones. You can modify the theme in `main.dart`:

```dart
colorScheme: ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 107, 107, 169),
),
```

### Emoji Collection

Add or modify emojis in `lib/data/emojis.dart`:

```dart
static const List<String> emojis = [
  '😀', '😃', '😄', // Add your custom emojis here
];
```

## 🔒 Security Features

- **Firebase Security Rules** for Firestore and Storage
- **Input Validation** on all forms
- **Secure Authentication** with Firebase Auth
- **Image Upload Security** with proper file validation

## 🚀 Deployment

### Android

```bash
flutter build apk --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Flutter Team** for the amazing framework
- **Firebase** for backend services
- **Material Design** for UI guidelines
- **Emoji Unicode Consortium** for emoji standards

## 📞 Support

If you have any questions or need help, please open an issue on GitHub or contact the development team.

---

**Made with ❤️ using Flutter & Firebase**
