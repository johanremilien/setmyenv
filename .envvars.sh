ANDROID_HOME=$HOME/Library/Android/sdk
ANDROID_NDK_HOST=darwin-x86_64
ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

Qt_ROOT=$HOME/Qt

Qt5_VERSION=5.15.2
Qt5_DIR=${Qt_ROOT}/${Qt5_VERSION}/clang_64
Qt5_DIR_IOS=${Qt_ROOT}/${Qt5_VERSION}/ios
Qt5_DIR_ANDROID=${Qt_ROOT}/${Qt5_VERSION}/android
Qt5_DIR_WASM=${Qt_ROOT}/${Qt5_VERSION}/wasm_32

Qt6_VERSION=6.2.4
Qt6_DIR=${Qt_ROOT}/${Qt6_VERSION}/macos
Qt6_DIR_IOS=${Qt_ROOT}/${Qt6_VERSION}/ios
Qt6_DIR_ANDROID=${Qt_ROOT}/${Qt6_VERSION}/android

JAVA_HOME=/opt/homebrew/opt/openjdk@11