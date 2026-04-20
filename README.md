## 📝 ArticleLab
ArticleLab is a high-performance Flutter application designed to curate, manage, and share digital resources.
The app features a sophisticated modern UI with organic gradients, providing a seamless flow for users to save and access global article feeds.

## ✨ Features
🔐 Secure Authentication
Powered by Supabase Auth

Sign Up / Sign In: Robust user registration using email and password.

Session Persistence: Keeps users logged in for a better UX.

## 📚 Article Management
Dynamic Form Entry: Save resources with specific metadata.

Article Title: Descriptive naming for easy identification.

Source URL: Direct links to the original content.

🌍 Global Feed
Live Home Screen: Fetches and displays a real-time list of all community-submitted articles.

Modern Card Layout: Articles are presented in clean, blue-themed interactive cards.

🔗 Navigation & Viewing
Integrated Browser: Open any article source instantly in the system browser.

Chevron Navigation: Guided UI elements to indicate clickable resources.

🎨 UI Design
Organic Design Language: Fluid headers with multi-tonal gradients and translucent "blob" decorations.

Rounded Sheet Layout: Content is housed in high-radius white containers for a premium feel.

Modern Inputs: Clean underlined text fields with integrated brand icons.

## 🧱 Project Structure

lib
 ┣ core
 ┃ ┣ errors     
 ┃ ┣ navigation  
 ┃ ┗ widgets     
 ┣ features
 ┃ ┣ add_link    
 ┃ ┣ home        
 ┃ ┗ sign_in     
 ┣ main.dart

 
## 🛠️ Technologies Used
Framework: Flutter (Dart)

Backend: Supabase (BaaS)

Database: PostgreSQL

State Management: Flutter BLoC (Cubit)

Navigation: GoRouter

Dependency Injection: Injectable & GetIt

## ⚙️ Architecture
UI ➔ Cubit ➔ UseCase ➔ Repository ➔ Remote DataSource ➔ Supabase

## demo


https://github.com/user-attachments/assets/c88a4bf0-9d07-435d-b8ad-db2f3453419b




👩🏻‍💻 Developed By
Jalnar Alharthi

