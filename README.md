# Antimine - Minesweeper

### Description

Antimine is a minesweeper-like puzzle game. The objective is to flag the spaces with mines to make the field a safer place without exploding any of them.

You win the game when you've flagged every mine in the minefield. Be careful not to trigger one!

## Internationalization

Run:

```
dart run slang
```

### Setup Game Services

https://akdebuging.com/posts/integrate-gamekit-and-google-play-services/

## Android

### Android build

```
flutter build appbundle  --release 
```

## iOS

### iOS Build Error

Delete the Podfile.lock in the root directory

```
pod install
```

### iOS Build

Release build:

```
flutter build ipa --obfuscate --split-debug-info=./debug-info
```

```
flutter build appbundle
```

AppConnect: https://appstoreconnect.apple.com/

You need to:
- You need to create a new certificate using the `Keychain Access` app. You can do this by going to `Keychain Access` > `Certificate Assistant` > `Request a Certificate from a Certificate Authority`. Left the `CA Email Address` empty and select `Saved to disk`. You will need to upload this file to the Apple Developer website.
- [Install Xcode](https://developer.apple.com/xcode/)
- [Install CocoaPods](https://cocoapods.org/)
- Run `pod install` in the `ios` directory
- [Set up a device](https://developer.apple.com/account/resources/devices/list). The macbook, maybe.
- [Set up a Provisioning Profile](https://developer.apple.com/account/resources/profiles/list).
- You need to import the certificate provided by the provisioning profile to your keychain. You can do this by double clicking the certificate file.
- If you have any weird error, try to remove duplicated certificates from your keychain.
- On Xcode, open Runner.xcworkspace. Tap on it and go to settings.
- Turn of `Automatically manage signing`.
- Go to `Signing & Capabilities` and select your team.
