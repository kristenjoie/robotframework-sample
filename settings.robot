*** Settings ***
Library                     AppiumLibrary
Library                     Collections

** Variables **
${AUTOMATION_NAME_IOS}      XCUITest
${AUTOMATION_NAME_ANDROID}  UiAutomator2

# Device to run the test on
${DEVICE}           Pixel
${APPIUM_SERVER}    http://0.0.0.0:4723/wd/hub
${PLATFORM}         ${${DEVICE}_PLATFORM}
${DEVICENAME}       ${${DEVICE}_DEVICENAME}
${UDID}             ${${DEVICE}_UDID}
${APPNAME}          ${${DEVICE}_APPNAME}
${AUTOMATION_NAME}  ${${DEVICE}_AUTOMATION_NAME}

#iPhone 13
${iPhone13_DEVICENAME}       iPhone13
${iPhone13_UDID}             <SET_UDID_HERE>
${iphone13_PLATFORM}         iOS
${iPhone13_APPNAME}          dev.example.app
${iPhone13_AUTOMATION_NAME}  ${AUTOMATION_NAME_IOS}

#Google Pixel
${Pixel_DEVICENAME}           Pixel
${Pixel_UDID}                 <SET_UDID_HERE>
${Pixel_PLATFORM}             android
${Pixel_APPNAME}              apk/yourapp.apk
${Pixel_AUTOMATION_NAME}      ${AUTOMATION_NAME_ANDROID}