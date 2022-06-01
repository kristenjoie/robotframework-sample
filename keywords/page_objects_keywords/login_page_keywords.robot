# elements for Login pack
# xpath = element(android_id) or element(ios_id)

*** Variables ***

${LOGIN_BUTTON}     xpath=//*[@resource-id='package.id:id/login_button' or @name="login_button"]
${TEXTFIELD_USERNAME}     xpath=//*[@resource-id='package.id:id/username_field' or @name="username_field"]
${TEXTFIELD_PASSWORD}     xpath=//*[@resource-id='package.id:id/password_field' or @name="password_field"]
${LOGIN_BUTTON_SUBMIT}     xpath=//*[@resource-id='package.id:id/login_button_submit' or @name="login_button_submit"]
${ERROR_PWD_TEXT}     xpath=//*[@resource-id='package.id:id/error_pwd_text' or @name="error_pwd_text"]

*** Keywords ***

Go to login 
    Wait Until Page Contains Element    ${LOGIN_BUTTON}
    Tap                                 ${LOGIN_BUTTON}

Connect User
    [Arguments]    ${user}    ${pwd}
    [Documentation]    Connection user with ${user} and ${pwd}
    Wait Until Page Contains Element    ${TEXTFIELD_USERNAME}

    Input Text                          ${TEXTFIELD_USERNAME}      ${user}
    Input Text                          ${TEXTFIELD_PASSWORD}      ${pwd}

    Tap                                 ${LOGIN_BUTTON_SUBMIT}

Error password message is displayed
    Element Should Be Visible    ${ERROR_PWD_TEXT}
