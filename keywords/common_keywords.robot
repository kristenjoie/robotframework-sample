#   Commons Keywords

*** Keywords ***

Open app
    Open Application    ${APPIUM_SERVER}    udid=${UDID}      platformName=${PLATFORM}
    ...     automationName=${AUTOMATION_NAME}    deviceName=${DEVICENAME}    app=${APPNAME}

Close app
    Close Application

Reset App
    Reset Application