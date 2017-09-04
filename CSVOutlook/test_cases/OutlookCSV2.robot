*** Settings ***
Documentation    Prueba CSV de Robot Framework.
#Library          Colletions
Library          CSVLibrary
Library          Selenium2Library

Resource         ../resource.robot

*** Test Cases ***   
Leer el CSV
    ${all_user}=    read csv file to list    ${CURDIR}\\..\\csv\\data_1.csv
    :FOR    ${user}  in  @{all_user}
    \    Open Browser                  ${URL}             ${BROWSER_2}       
    \    Maximize Browser Window       
    \    Set Selenium Speed            ${DELAY}       
    \    Input Text                    i0116              @{user}[0]
    \    Click Button                  idSIButton9
#    \    ${status}=  
    \    Run keyword and ignore error    Wait Until Page Contains      Esta cuenta Microsoft no existe.          5
#    \    Run keyword if    '${status}' == 'FAIL'                
    \    Capture Page Screenshot       ${SCREENSHOT_PATH_1}\\outlook-{index}.png     
    \    Set Selenium Speed            ${DELAY}      
    \    Input Password                i0118              @{user}[1]
    \    Click Button                  idSIButton9      
    \    Capture Page Screenshot       ${SCREENSHOT_PATH_1}\\outlook-{index}.png
    \    Close Browser 
#    Log  Exited
    