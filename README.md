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

## MVC Pattern - Where to Place Each File?

### Model (`lib/models/`)
- Place data classes and entities here
- API response models, local data models
- Example: `user_model.dart`, `schedule_model.dart`

### View (`lib/views/`)
- All UI screens go here
- Only renders UI — no business logic
- Example: `home_screen.dart`, `login_view.dart`

### Controller (`lib/controllers/`)
- Business logic and state management go here
- Create by extending GetX Controller
- Handles all data fetch, update, and delete operations from the View
- Example: `home_controller.dart`, `auth_controller.dart`

### Core (`lib/core/`)
- **Reusable/shared widgets** used across multiple screens
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

### Where Does This File Fit in MVC?
It resides in the **`core/`** folder because it is a **reusable UI component (View layer)**. It is not a specific screen — rather, it is a **common widget used across multiple screens**. That's why it is placed in `core/` instead of `views/`.

> **Rule:** If a widget is used in only one screen, place it in `views/`. If it is **shared across multiple screens**, place it in `core/`.

### What Does This File Contain?

#### 1. `CustomNavigationBar` (StatefulWidget)
An animated bottom navigation bar with icons and labels.

**Properties:**

| Property       | Type                | Description                              |
| -------------- | ------------------- | ---------------------------------------- |
| `currentIndex` | `int`               | Currently selected tab index             |
| `onTap`        | `ValueChanged<int>` | Notifies parent when a tab is tapped     |

**Features:**
- 4 navigation items: **Home**, **Quests**, **Progress**, **Dashboard**
- Animated highlight on selected item (yellow background with `Color(0xFFFFE5B4)`)
- Smooth transition using `AnimatedContainer`
- Multi-language support via `GetBuilder<LanguageController>` (`.tr`)
- Asset icons via FlutterGen (`Assets.images.*`)

**Usage:**
```dart
// Used in home_screen.dart and home.dart:
bottomNavigationBar: CustomNavigationBar(
  currentIndex: 0,
  onTap: (index) {
    // Handle navigation
  },
),
```

#### 2. `LanguageController` (GetxController)
A small controller for handling the app's language/locale.

```dart
class LanguageController extends GetxController {
  void updateLanguage(Locale locale) {
    Get.updateLocale(locale);
    update(); // GetBuilder rebuild trigger
  }
}
```

> **Note:** Ideally, `LanguageController` should be placed in a separate file inside `lib/controllers/` (following MVC best practices), since it is a **Controller**. During future refactoring, it should be moved to `lib/controllers/language_controller.dart`.

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

| Layer          | Folder              | What to Place Here                           |
| -------------- | ------------------- | -------------------------------------------- |
| **Model**      | `lib/models/`       | Data classes, API response models            |
| **View**       | `lib/views/`        | Screen UI (Scaffold, widgets)                |
| **Controller** | `lib/controllers/`  | GetxController, business logic, state mgmt   |
| **Core**       | `lib/core/`         | Shared widgets, reusable components          |
| **Utils**      | `lib/utils/`        | Helpers, constants, text styles              |
# shishir-task
# shishir-task
# shishir-task
# shishir-task
