# Domain  
The Domain layer is responsible for defining the core business logic of the application. It contains entities, use cases, and Data Transfer Objects (DTOs) to ensure a clear separation of concerns.  

## 📌 User Entity  

This file defines the `User` entity within the application's domain. It uses the **Freezed** package to simplify the creation of immutable classes and **json_serializable** to enable conversion between Dart objects and JSON.  

The `User` entity is a sealed class that represents different user states within the system. It can take three forms:  

- **User:** Represents a regular user with an ID, name, and email.  
- **User.notLogged():** Represents a user who has not yet authenticated.  
- **User.logged(...):** Represents an authenticated user, including authentication tokens.  

### 📜 Entity Code  
Below is the implementation of the `User` entity:  

<div>  
  <img src="https://github.com/user-attachments/assets/c6508263-2552-4e77-84bc-8f5fdd389dd1" width="500px">  
</div>  

## 📌 SignInDto  

The `SignInDto` class is a **Data Transfer Object (DTO)** used to store and transfer user login data (email and password) within the application. It is commonly used in authentication flows to encapsulate credentials before sending them to an API or authentication service.  

### 📜 DTO Code  
Below is the implementation of the `SignInDto` class:  

<div>  
  <img src="https://github.com/user-attachments/assets/fa78a44b-1157-4a99-9fc2-8b1505a37978" width="500px">  
</div>  
