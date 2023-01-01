# HAIBARRR
This package help you build Mobile Flutter Project with GetX Architecture

## INSTALLATION
add flutter dependency:

### INSTALL FROM PUB.DEV
```bash
flutter pub add haibarrr
```

## Init HAIBARRR
Init HAIBARRR to your flutter project and boom :
```bash
flutter pub run haibarrr:init
```

## Generate Feature
Generate your feature app with :
```bash
flutter pub run haibarrr:generate Example
```

## Run Flutter
```bash
flutter run -t lib/main_staging.dart 
```

## IMPORTANT after init HAIBARRR
Change value "/splash" to "/" at lib/route/route.constant.dart
```bash
static const splash = '/'; 
```

If your project error when running the app, do this way :
<br>
Go to android/app/build.gradle
```bash
android {
    compileSdkVersion 33
    ...
    ...
    
    defaultConfig {
        minSdkVersion 19
    }
}
```

## Sources
This framework is inspired by open source plugin [ametory_framework](https://pub.dev/packages/ametory_framework)
<br>
Big Thanks to Pa Amet

## Author
Halo salam kenal semua, [Bariman Susiyanto](https://github.com/barimans)