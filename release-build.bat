cordova build --release android
cd platforms
cd android
cd ant-build
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore GWW.keystore CordovaApp-release-unsigned.apk GWW
set PATH=%PATH%;C:\java\android-sdk\build-tools\21.1.2
zipalign -v 4 CordovaApp-release-unsigned.apk GWW.apk