*** Settings ***
Resource        ../setup_resource.robot

#What to do on test/suite setup/teardown
Suite Setup     Open app
Suite Teardown  Close App
Test Setup      Reset App

*** Test Cases ***

Validate invalid password
    Given Go to login 
    When Connect User    myUser    myInvalidP@ssword
    Then Error password message is displayed

Validate corect password
    Given Go to login 
    When Connect User    myUser    myP@ssword
    Then Home page is displayed
