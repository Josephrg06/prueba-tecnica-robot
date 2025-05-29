*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Open Form Page
    Open Browser    https://demoqa.com/automation-practice-form    chrome
    Maximize Browser Window
    Sleep    3s

*** Test Cases ***
Name and Last Name Form

    Input Text    id:firstName    Joseph
    Input Text    id:lastName     Rujano
    Input Text    id:userEmail    josephrg06@gmail.com

    Click Element    xpath://label[@for="gender-radio-1"]    # Male
    Sleep    2s
    Input Text       id:userNumber    1234567891
    Sleep    3s

*** Test Cases***
Birthday Form
    Click Element    id:dateOfBirthInput
    Sleep    1s
    Select From List By Value    class:react-datepicker__month-select    3
    Select From List By Value    class:react-datepicker__year-select     1988
    Sleep    1s
    Click Element    xpath://div[contains(@class,'react-datepicker__day--006') and not(contains(@class, 'outside-month'))]
    Sleep    2s
    Execute JavaScript    window.scrollBy(0, 200)
    Sleep    1s

*** Test Cases***
Subjects & Hobbies Form 
    # Subjects (autocomplete: type and press Enter)
    Click Element    id:subjectsInput
    Input Text       id:subjectsInput    History
    Press Keys       id:subjectsInput    ENTER
    Sleep    2s
    Input Text       id:subjectsInput    Arts
    Press Keys       id:subjectsInput    ENTER
    Sleep    3s
    
    # Hobbies (checkboxes: select 2)
    Click Element    xpath://label[@for='hobbies-checkbox-1']    # Sports
    Click Element    xpath://label[@for='hobbies-checkbox-3']    # Music
    Sleep    2s

*** Test Cases***
Selection Picture & Address 
    # Picture
    ${RELATIVE PATH}=    Set Variable    ${CURDIR}/../resources/test01.JPEG
    ${ABSOLUTE PATH}=    Normalize Path    ${RELATIVE PATH}
    Choose File          id:uploadPicture    ${ABSOLUTE PATH}

    Sleep    2s

    # Adress
    Input Text    id:currentAddress    Woodlands, Panama Pacifico
    Sleep    2s
    Execute JavaScript    window.scrollBy(0, 200)
    Sleep    1s

    # State and City
    Click Element    id:state
    Click Element    xpath://div[contains(@id,'react-select') and text()='NCR']
    Click Element    id:city
    Click Element    xpath://div[contains(@id,'react-select') and text()='Delhi']
    Sleep    2s
    
    Click Button    id:submit
    Sleep    2s

    Element Should Contain    css:.modal-title    Thanks for submitting the form
    Sleep    2s
    Execute JavaScript    document.getElementById("closeLargeModal").click()

    Sleep    10s