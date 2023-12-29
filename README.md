# app

A new Flutter project.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- Splash screen with a customizable image.
- Main screen displaying a grid of products.
- Cart screen showing data from the cart table.
- Products are fetched from a REST API and stored in an internal SQLite database.
- GetX is used for routing and state management.
- Dio for API requests, Freezed for code generation, flutter_gen for code generation.
- Background updates from the API to keep the database synchronized.
- Add to Cart functionality with quantity management.
- Beautiful UI design.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/vishwakarmakrishna/dummy_reset_api.git
    ```
2. Install the dependencies.
3. Run the app.

## Project Structure

lib
│
├── main.dart
├── app
│   ├── data
│   │   ├── database
│   │   │   ├── database_helper.dart
│   │   │   ├── models
│   │   │   │   ├── product_model.dart
│   │   │   │   ├── cart_model.dart
│   ├── services
│   │   ├── api_service.dart
│   ├── controllers
│   │   ├── splash_controller.dart
│   │   ├── product_controller.dart
│   ├── pages
│   │   ├── splash_page.dart
│   │   ├── main_page.dart
│   │   ├── cart_page.dart
│   │   ├── widgets
│   │   │   ├── product_tile.dart
│   │   │   ├── product_rating.dart
│   ├── routes
│   │   ├── app_pages.dart
├── assets
│   ├── images
│   │   ├── splash_image.jpg

## Dependencies

- [GetX](https://pub.dev/packages/get)
- [Dio](https://pub.dev/packages/dio)
- [Freezed](https://pub.dev/packages/freezed)
- [Path Provider](https://pub.dev/packages/path_provider)
- [Sqflite](https://pub.dev/packages/sqflite)

## Usage

- Clone the repository
- Install the dependencies
- Run the app

## Screenshots

repo/screenshots

## Contributing

Contributions are welcome! Feel free to submit a Pull Request.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Krishna Vishwakarma - 9987199169 - krishnavishwakarma.og@gmail.com