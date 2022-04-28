# St Augustine CHS New App

The official St Augustine CHS Flutter App

## Getting Started

Please view this doc for guidelines on how to get started and resource links:\
https://docs.google.com/document/d/1xI_6Y7_AyuUj99lc-6ZNNueimvbUyB82yg4f2qUJF_o/edit?usp=sharing

To run:

```
$ flutter run
```

To run in release mode:

```
$ flutter run --release
```

## Versions

Flutter Version: 2.10.2
Dart: 2.16.1

## Linting

To fix linting issues automatically:

- Use VSCode's built in tooltips

## Pushing Code

Note that the main branch is protected, please branch off main to get started.\
When making your PR, the title of your PR should follow the conventional commit template:\
https://www.conventionalcommits.org/en/v1.0.0/#summary

## Working with BloC

To regenerate freezed files, run:

```
$ flutter pub run build_runner build --delete-conflicting-outputs
```

Please note that we are using BloC 8.0.1.

## Making a PR

Before making a PR, please be sure to run locally:

```
$ flutter analyze
$ flutter test
```

## Building Releases

To build a release, run:

```
$ flutter clean
$ flutter build appbundle --obfuscate --split-debug-info=build/app/outputs/symbols
$ flutter build ipa --obfuscate --split-debug-info=build/app/outputs/symbols
```

# Offline Testing

Use bundletool:

```
$ bundletool build-apks --bundle=./build/app/outputs/bundle/release/app-release.aab --output=./build/apks/sta_app.apks --ks=./android/app/upload-keystore.jks --ks-pass=file:./android/keystore.pwd --ks-key-alias=uploadkey --key-pass=file:./android/key.pwd
$ bundletool install-apks --apks=./build/apks/sta_app.apks
```

## Misc Folder

The misc folder includes dev resources that are used to help with the app but should not be included in the final build.\
For example, the original app icons.
