# InstagramClone 

A simple Instagram clone built with Swift and Firebase. It includes basic features like user authentication, photo upload, adding captions, and displaying posts in a feed. The project is managed with CocoaPods and uses Firebase services for backend functionality.

## Features

- **Sign Up & Login** using email/password (Firebase Authentication)
- **Photo upload** with caption (Firebase Storage + Database)
- **Feed** screen to display posts in a UITableView
- **Sign Out** 

## Screenshots
<p align="left">
  <img width="175" style="margin:10px;" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-14 at 14 33 14" src="https://github.com/user-attachments/assets/90330231-e645-4aff-93da-2f8ad165f293" />
  <img width="175" style="margin:10px;" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-14 at 14 33 44" src="https://github.com/user-attachments/assets/4607b540-223a-4e78-92e9-bfddc95cbbd6" />
  <img width="175" style="margin:10px;" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-14 at 14 34 03" src="https://github.com/user-attachments/assets/25743f65-70e1-4996-a4d5-57a1fea64639" />
  <img width="175" style="margin:10px;" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-14 at 14 35 17" src="https://github.com/user-attachments/assets/a3d192c8-7a9d-4ae6-a3d4-4bc3c2c70aa7" />
  <img width="175" style="margin:10px;" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-14 at 14 35 41" src="https://github.com/user-attachments/assets/c8e8a076-911e-426a-896b-db04623ccef7" />
</p>


## Tech Stack

- **Language:** Swift  
- **UI:** UIKit
- **Backend:** Firebase (Auth, Storage, Firestore/Realtime Database)  
- **Dependency Management:** CocoaPods  


## Installation

→ Clone the Repository

```bash
git clone https://github.com/zelihainan/InstaClone.git
cd InstaClone
```

→ Install Dependencies
```bash
pod install
open InstaClone.xcworkspace
```

→ Set Up Firebase

Go to Firebase Console and create a new project. Add an iOS app to the project and match the Bundle Identifier with your Xcode target.
GoogleService-Info.plist is already included in the project — no extra setup required. (make sure it's included in Build Phases → Copy Bundle Resources).
Enable required Firebase services (Authentication, Storage, Firestore or Realtime Database).
For detailed setup, follow the official Firebase iOS Setup Guide.

→ Run the App
Run in Xcode (⌘R) using a simulator or real device.

### Configuration Tips

Enable Email/Password sign-in from Firebase Console.
For development, set relaxed security rules. For production, restrict access.
Create a simple structure for posts (e.g., Posts/ with fields imageURL, userEmail, userComment, postedBy, date, likeCount).


> **Note:** This project was created for educational purposes.
