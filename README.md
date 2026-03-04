# Aitso - Flutter App

A Flutter health & wellness application built with **MVC (Model-View-Controller)** architecture.

---

## Tech Stack

| Technology       | Version   |
| ---------------- | --------- |
| Flutter SDK      | ^3.11.0   |
| GetX             | ^4.7.3    |
| GoRouter         | ^17.1.0   |
| Google Fonts     | ^8.0.2    |
| Flutter SVG      | ^2.0.10+1 |
| Device Preview   | ^1.3.1    |
| FlutterGen       | ^5.8.0    |

---

## Project Structure (MVC Architecture)

```
lib/
├── main.dart                  # App entry point
├── models/                    # (M) Data models & entities
├── views/                     # (V) UI screens & widgets
│   ├── home.dart              # Home page view
│   ├── auth/                  # Authentication screens
│   │   ├── login_view.dart
│   │   ├── register_view.dart
│   │   ├── forgot_password_view.dart
│   │   └── otp_view.dart
│   └── home_screen/
│       ├── home_screen.dart   # Main home screen with nav bar
│       └── categories/
│           └── categories.dart
├── controllers/               # (C) Business logic & state management
├── core/                      # Shared/reusable components
│   ├── custom_navgation.dart  # Custom bottom navigation bar widget
│   └── gen/
│       └── assets.gen.dart    # FlutterGen auto-generated asset references
└── utils/
    └── app_text_styles.dart   # Global text style definitions
```

---

## MVC Pattern - কোন ফাইল কোথায় রাখবো?

### Model (`lib/models/`)
- Data class / entity রাখবো এখানে
- API response model, local data model
- Example: `user_model.dart`, `schedule_model.dart`

### View (`lib/views/`)
- সব UI screen এখানে থাকবে
- শুধু UI render করবে, business logic থাকবে না
- Example: `home_screen.dart`, `login_view.dart`

### Controller (`lib/controllers/`)
- Business logic ও state management এখানে
- GetX Controller extend করে বানাবো
- View থেকে data fetch, update, delete সব controller handle করবে
- Example: `home_controller.dart`, `auth_controller.dart`

### Core (`lib/core/`)
- **Reusable/shared widgets** যেগুলো multiple screen এ ব্যবহার হয়
- App-wide common components
- Example: `custom_navgation.dart`, `assets.gen.dart`

### Utils (`lib/utils/`)
- Helper functions, constants, text styles
- Example: `app_text_styles.dart`

---

## `custom_navgation.dart` - Documentation

### File Location
```
lib/core/custom_navgation.dart
```

### MVC তে এই ফাইল কোথায় বসে?
এটি **`core/`** ফোল্ডারে আছে কারণ এটি একটি **reusable UI component (View layer)**। এটি কোনো specific screen না — বরং এটি **একাধিক screen এ ব্যবহারযোগ্য common widget**। তাই এটি `views/` তে না রেখে `core/` তে রাখা হয়েছে।

> **Rule:** যদি কোনো widget শুধু একটি screen এ ব্যবহার হয়, তাহলে `views/` এ রাখো। যদি **multiple screen এ share** হয়, তাহলে `core/` তে রাখো।

### এই ফাইলে কী আছে?

#### 1. `CustomNavigationBar` (StatefulWidget)
Bottom navigation bar — animated, icon + label সহ।

**Properties:**

| Property       | Type                | Description                          |
| -------------- | ------------------- | ------------------------------------ |
| `currentIndex` | `int`               | বর্তমানে কোন tab selected           |
| `onTap`        | `ValueChanged<int>` | Tab tap করলে parent কে notify করে   |

**Features:**
- 4টি navigation item: **Home**, **Quests**, **Progress**, **Dashboard**
- Selected item এ animated highlight (হলুদ background with `Color(0xFFFFE5B4)`)
- `AnimatedContainer` দিয়ে smooth transition
- `GetBuilder<LanguageController>` দিয়ে multi-language support (`.tr`)
- Asset icon ব্যবহারের জন্য FlutterGen (`Assets.images.*`)

**কোথায় ব্যবহার হচ্ছে?**
```dart
// home_screen.dart ও home.dart এ:
bottomNavigationBar: CustomNavigationBar(
  currentIndex: 0,
  onTap: (index) {
    // Handle navigation
  },
),
```

#### 2. `LanguageController` (GetxController)
App এর language/locale handle করার জন্য ছোট controller।

```dart
class LanguageController extends GetxController {
  void updateLanguage(Locale locale) {
    Get.updateLocale(locale);
    update(); // GetBuilder rebuild trigger
  }
}
```

> **Note:** `LanguageController` টি ideally `lib/controllers/` ফোল্ডারে আলাদা ফাইলে রাখা উচিত (MVC best practice অনুযায়ী), কারণ এটি একটি **Controller**। ভবিষ্যতে refactor করার সময় এটি `lib/controllers/language_controller.dart` এ move করা ভালো হবে।

### Flow Diagram

```
┌─────────────────────────────────────────────┐
│              View (Screen)                  │
│  home_screen.dart / home.dart               │
│                                             │
│  bottomNavigationBar: CustomNavigationBar(  │
│    currentIndex: 0,                         │
│    onTap: (index) { ... },                  │
│  )                                          │
└──────────────────┬──────────────────────────┘
                   │ uses
                   ▼
┌─────────────────────────────────────────────┐
│     Core Widget (Reusable View Component)   │
│     custom_navgation.dart                   │
│                                             │
│  ┌─────────────────────────────────────┐    │
│  │ CustomNavigationBar (StatefulWidget) │    │
│  │  - 4 nav items (Home, Quests, etc.) │    │
│  │  - AnimatedContainer transitions    │    │
│  │  - Asset icons via FlutterGen       │    │
│  └─────────────────────────────────────┘    │
│                                             │
│  ┌─────────────────────────────────────┐    │
│  │ LanguageController (GetxController)  │    │
│  │  - updateLanguage(locale)           │    │
│  │  → Should move to controllers/      │    │
│  └─────────────────────────────────────┘    │
└─────────────────────────────────────────────┘
```

---

## Run the App

```bash
# Get dependencies
flutter pub get

# Generate assets
flutter pub run build_runner build

# Run the app
flutter run
```

---

## MVC Summary Table

| Layer          | Folder              | কী রাখবো                                    |
| -------------- | ------------------- | -------------------------------------------- |
| **Model**      | `lib/models/`       | Data class, API response model               |
| **View**       | `lib/views/`        | Screen UI (Scaffold, widgets)                |
| **Controller** | `lib/controllers/`  | GetxController, business logic, state mgmt   |
| **Core**       | `lib/core/`         | Shared widgets, reusable components          |
| **Utils**      | `lib/utils/`        | Helpers, constants, text styles              |
# shishir-task
