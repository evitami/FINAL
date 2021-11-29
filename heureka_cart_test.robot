*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
    [Tags]    DEBUG tag
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test