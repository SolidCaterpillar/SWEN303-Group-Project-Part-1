# SWEN303 Flutter Prototype

### `main.dart`

- **main.dart**: The entry point of the application. It sets up the `MaterialApp` and defines the home screen with a bottom navigation bar.

### `core/constants.dart`

- **core/constants.dart**: Defines the application's color constants to ensure consistent styling across all screens and components.

### `models/expense_model.dart`

- **models/expense_model.dart**: Defines the `Expense` model class, which represents the structure of an expense entry.

### `screens/`

Contains the different screens of the application, each represented by a Dart file:

- **dashboard_screen.dart**: The main dashboard screen where users can view a summary of their expenses.
- **expense_screen.dart**: The screen where users can view and manage their expense entries.
- **owing_screen.dart**: The screen for tracking money owed.
- **settings_screen.dart**: The settings screen where users can configure app preferences.
- **insights_screen.dart**: The screen that provides insights and analytics about the user's expenses.
- **add_expense_overlay.dart**: The overlay screen that allows users to add a new expense entry.

### `widgets/`

Contains reusable custom widgets used across different screens:

- **custom_button.dart**: A custom button widget.
- **custom_textfield.dart**: A custom text field widget.
- **expense_card.dart**: A widget to display an expense entry in a card format.

### `constants/`

- **constants.dart**: Contains the application's constants like colors, text styles, and padding values.

## Running the App

To run the app, make sure you have Flutter installed and set up. Then, use the following commands:

```bash
flutter pub get
flutter run
```
