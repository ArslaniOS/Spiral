# Spiral 

## Project Overview
This project follows the **MVVM (Model-View-ViewModel)** architecture to ensure scalability, maintainability, and testability. The goal is to build a flexible solution that can be extended as the project grows. The approach was designed to keep the code well-structured while focusing on providing a clean authentication flow.

---

## Key Features

### 1. Scalable Architecture
#### MVVM Architecture
The project is structured using the **MVVM** design pattern to separate the UI (View), business logic (ViewModel), and data (Model). This structure ensures that the code remains modular, easy to test, and easy to extend as new features are added.

#### ViewModel
Acts as the middle layer between the View (UI) and the Model (data layer), making it easier to manage state, data transformations, and validation logic.

### 2. Custom Gradient Function
For the Auth Design, a custom gradient function was implemented to provide a consistent background color scheme across the app. This was done to simplify managing the background design, which otherwise could require complex image management.

This custom function creates a smooth gradient transition between colors, helping maintain design consistency with minimal manual management of images.

### 3. Validation Helper Class
The **Validation Helper Class** manages common validation checks, such as:
- Verifying email format
- Ensuring passwords are strong
- Checking for nil values

The `AuthViewModel` leverages this helper class to keep the logic separate from the UI, ensuring that the code is testable and easy to maintain.

### 4. Authentication Flow
The `AuthViewModel` is the core part of the authentication process, acting as the mediator between the UI and validation logic.

**Touch ID functionality** has been integrated for sign-in, enhancing security and user experience.

### 5. Home and Profile View
Upon successful sign-in, the **Home View** is displayed, which uses a ViewModel and Data Wrapper to handle mock data and UI state.

A modular approach allows different UI components to be added or replaced easily. The profile data can be viewed and edited through a dedicated Profile Edit screen, though the actual profile data isn't displayed in this version.

### 6. Custom Navigation System
A custom **Root Navigation Class** is implemented to handle navigation and pop-up screens. This ensures that the app’s navigation flow is flexible and easy to manage.

---

## Limitations

### 1. Incomplete Views
Due to time constraints, not all views have been created. However, the current work should be sufficient to showcase my coding style and approach to the project.

### 2. Authentication UI Design
The authentication flow does not exactly match the Figma design. To fully match the design, a background image would be required to manage the flow and layers of images. Combining these images together on the frontend is a complex task, which is why I opted for using a gradient function to achieve something close to the design.

---

## Conclusion
This project follows best practices to ensure the app remains maintainable, scalable, and testable. The focus is on delivering a smooth and secure user authentication flow, with room for growth as more features are needed. The modular architecture lays the groundwork for easy expansion and future improvements.

---

## Installation

To set up and run this project locally, follow these steps:

### Prerequisites
- Xcode (latest version)
- Swift 5.0 or higher

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/ArslaniOS/Spiral.git

