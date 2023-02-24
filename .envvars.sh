ANDROID_HOME=$HOME/Library/Android/sdk
ANDROID_SDK_ROOT=$HOME/Library/Android/sdk

LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

Qt_ROOT=$HOME/Qt

Qt5_VERSION=5.15.2
Qt5_DIR=${Qt_ROOT}/${Qt5_VERSION}/macos
Qt5_DIR_IOS=${Qt_ROOT}/${Qt5_VERSION}/ios
Qt5_DIR_ANDROID=${Qt_ROOT}/${Qt5_VERSION}/android

Qt6_VERSION=6.2.4
Qt6_DIR=${Qt_ROOT}/${Qt6_VERSION}/macos
Qt6_DIR_IOS=${Qt_ROOT}/${Qt6_VERSION}/ios
Qt6_DIR_ANDROID=${Qt_ROOT}/${Qt6_VERSION}/android

JAVA_HOME=/opt/homebrew/opt/openjdk@11