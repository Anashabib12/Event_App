# Taskcy - Task Management App

## Overview

Taskcy is a powerful and intuitive task management app that helps users stay organized, productive, and connected. It combines task management with real-time chat, enabling collaboration while keeping track of important tasks.
Features

  User Authentication: Secure login and sign-up using Firebase Authentication.
    
  Task Management: Add, edit, delete, and manage tasks efficiently.
    
  Task Categories & Priorities: Organize tasks by categories (e.g., Work, Personal) and set priorities to focus on important tasks first.
  
  Task Status: Mark tasks as completed or pending with a simple toggle.
  
  Reminders & Notifications: Set task reminders and get notified before deadlines.
  
  Chat Feature: Built-in chat using Firestore, allowing real-time messaging with other users for collaboration.
  
  Dark Mode: Full support for dark mode for a comfortable user experience in low-light environments.
  
  Data Persistence: Uses SharedPreferences for storing tasks locally.
  
  State Management: Managed with GetX for efficient and responsive UI updates.
  
  Responsive Design: Fully responsive, optimized for mobile and tablet devices.
  

## Screenshots




## Installation

#### To run Taskcy locally, follow these steps:

 Clone the repository:

    git clone https://github.com/Anashabib12/Event_App.git

Navigate to the project directory:

    cd taskcy

Install the required dependencies:

    flutter pub get

Set up Firebase:

  Create a Firebase project and add the necessary configuration files (Google Services JSON/Plist) to the android and ios directories.
  
  Enable Firebase Authentication and Firestore in your Firebase project.

Run the app:

    flutter run

## Tech Stack

  Frontend: Flutter
  
  State Management: GetX
  
  Authentication: Firebase Authentication
  
  Chat: Firestore for real-time messaging
  
  Task Storage: SharedPreferences for local storage
  
  Backend: Firebase Firestore for chat functionality
  
  UI/UX: Clean and modern design with both light and dark mode support
  

## Contributing

Contributions are welcome! If you'd like to add new features, improve the codebase, or fix issues, feel free to submit a pull request. Please make sure your code follows best practices and includes proper documentation.
License

This project is licensed under the MIT License - see the LICENSE file for details.
