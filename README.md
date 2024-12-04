Project Overview
This project follows the MVVM (Model-View-ViewModel) architecture to ensure the project remains scalable and maintainable. The approach prioritizes making the code testable and well-structured, keeping in mind future growth and new features.

Key Features
Scalable Architecture:

The project is structured with MVVM to separate concerns between the UI (View), business logic (ViewModel), and data layer (Model). This helps to maintain a clear distinction between components and ensures that as the project grows, it remains easy to extend and modify.
The ViewModel acts as the middleman between the View and the Model, facilitating data binding and transformations while ensuring that UI components remain decoupled from business logic.
Custom Gradient Function:

For the Auth Design, a custom gradient function is used to provide consistent color schemes for the app. The aim is to replicate the Figma design with a simpler solution that avoids the complexity of managing multiple background images.
Instead of manually managing different images and components, a consistent gradient background was implemented using this function, making it easier to manage and scalable.
Validation Helper:

A Validation Helper class has been implemented to manage the various validation requirements such as email format, password strength, and nil checks.
This class is utilized by the AuthViewModel to ensure that the validation logic is decoupled from the view and can be easily unit tested.
Authentication Flow:

The AuthViewModel plays a critical role in acting as the middle layer between the main view (sign-in screen) and the validation class, handling all validation logic and authentication processes.
Touch ID integration is added as part of the sign-in flow to enhance the security and user experience.
Home and Profile View:

After the user successfully signs in, the Home View is displayed. This view leverages a ViewModel and a Data Wrapper to handle mock data and manage the UI.
A modular approach is used for handling UI components. For example, when tapping on the "Edit Profile" navigation item in the home view, it navigates to the Profile Edit screen. However, actual profile data is not displayed directly in this version, but the same profile can be used for both viewing and editing user data.
Custom Navigation System:

To track and manage the flow of screens, a custom Root Navigation Class is used. This class helps manage custom screen navigation and handle pop-up transitions, ensuring smooth user interaction and flexible navigation management.
Limitations & Future Enhancements
Registration Form: Due to time constraints, the registration functionality has not been implemented. The focus was kept on the core functionality of the sign-in flow.
Profile Data: Although profile data editing is part of the UI, it has not been shown or implemented in this version. The system is designed to support both viewing and editing user profile data in the future.
Testability: While the code is structured to be testable, further unit tests and UI tests will be added in future versions to ensure robustness as new features are introduced.
Future Scope
User Registration: A registration form with email/password authentication and validation can be added.
Profile Management: Full profile management functionality (viewing, editing, and saving profile data) can be added.
Enhanced Security: Additional security features like 2FA (Two-factor authentication) and OAuth integration could be implemented for improved user sign-in.
Mock Data Handling: The current mock data handling can be replaced with real backend integration once the server-side API is available.
Conclusion
The project follows best practices to ensure the app is maintainable, scalable, and testable, with a strong focus on user authentication and navigation. The modular approach provides a solid foundation for future expansion and feature integration.
