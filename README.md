
# Kapiva
A Flutter project where I am implementing a data fetching functionality. Within this project, I have successfully fetched data that consists of titles and descriptions. To present this data in an organized manner, I have designed a container that displays the fetched titles and descriptions as a list.

## Installation

Before getting started with the project, ensure that you have the following prerequisites installed on your system:

- [Flutter SDK](https://flutter.dev) (v2.5.2 or higher)
- [Node.js](https://nodejs.org/en) (version 20.2.0)
- Development Environment (Android Studio, Visual Studio Code, etc.)

### Clone the Project

To clone the project, follow these steps:

1. Open a terminal or command prompt.
2. Navigate to the desired directory where you want to clone the project.
3. Run the following command:
 
 ```shell
git clone https://github.com/sejal710/kapiva.git
```
 
#### Frontend

##### Navigate to the project directory:
```shell
cd frontend
```

##### Get Dependencies

After cloning the project, navigate to the project's root directory using the terminal or command prompt. Run the following command to fetch the project dependencies:

```shell
flutter pub get
```

This command will download and install all the required packages and dependencies defined in the pubspec.yaml file.

##### Run the Frontend

```shell
flutter run
```

#### Backend
    
##### Navigate to the project directory:
```shell
cd Backend
```    
    
##### Get Dependencies   

After cloning the project, navigate to the project's root directory using the terminal or command prompt. Run the following command to fetch the project dependencies:

```shell
npm install
```

##### Run the Backend

```shell
nodemon index.js
```

##### API endpoints:
```
/data - Get all users
```
``` 
/data - Create a new post
```

## Folder Stucture
- /kapiva
  - /frontend
     - /.dart_tool
     -  /.idea
     -  /android
     -  /build
     -  /ios
     -  /lib
     -  /linux
     -  /macos
     -  /test
     -  /web
     -  /windows
     -  .gitignore
     -  .metadata
     -  README.md
     -  analysis_options.yaml
     -  my_first_app.iml
     -  pubspec.lock
     -  pubspec.yaml
  - /Backend
    - /model
      - data.model.js
    - .gitignore
    - db.js
    - index.js
    - package-lock.json
    - package.json
  - Readme.md

