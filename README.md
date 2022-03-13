# St Augustine CHS New App

The official St Augustine CHS Flutter App

## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Please view this doc for guidelines on how to get started and resource links:
https://docs.google.com/document/d/1xI_6Y7_AyuUj99lc-6ZNNueimvbUyB82yg4f2qUJF_o/edit?usp=sharing

To run: `flutter run`

## Versions

Flutter Version: 2.10.2
Dart: 2.16.1

## Linting

To fix linting issues automatically:

- Use VSCode's built in tooltips

## Pushing Code

Note that the main branch is protected, please branch off main to get started.
When making your PR, the title of your PR should follow the conventional commit template:
https://www.conventionalcommits.org/en/v1.0.0/#summary

## Working with BloC

To regenerate freezed files, run: `flutter pub run build_runner build --delete-conflicting-outputs`
Please note that we are using BloC 8.0.1.

## Making a PR

Before making a PR, please be sure to run locally:

- `flutter analyze`
- `flutter test`
