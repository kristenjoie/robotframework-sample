# elements for Home pack

*** Variables ***

${HOME_BUTTON}     xpath=//*[@resource-id='package.id:id/home_button' or @name="home_button"]
${WELCOME_TEXT}     xpath=//*[@resource-id='package.id:id/welcome_text' or @name="welcome_text"]
${DISCONNECT_BUTTON}     xpath=//*[@resource-id='package.id:id/disconnect_button' or @name="disconnect_button"]

*** Keywords ***

Disconnect User
    Wait Until Page Contains Element    ${DISCONNECT_BUTTON}
    Tap                                 ${DISCONNECT_BUTTON}

Home page is displayed
    Element Should Be Visible    ${HOME_BUTTON}
    Element Should Be Visible    ${WELCOME_TEXT}