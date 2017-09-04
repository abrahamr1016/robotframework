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
    \    Input Text                    i0116              @{user}[0]
    \    Set Selenium Speed            ${DELAY}
    \    Capture Page Screenshot       ${SCREENSHOT_PATH_1}outlook-{index}.png    
    \    Click Button                  idSIButton9
    \    Set Selenium Speed            ${DELAY}
    \    Capture Page Screenshot       ${SCREENSHOT_PATH_1}outlook-{index}.png      
    \    Input Password                i0118              @{user}[1]
    \    Set Selenium Speed            ${DELAY}
    \    Capture Page Screenshot       ${SCREENSHOT_PATH_1}outlook-{index}.png    
    \    Click Button                  idSIButton9  
    \    Set Selenium Speed            ${DELAY}
    \    Capture Page Screenshot       ${SCREENSHOT_PATH_1}outlook-{index}.png
    \    Close Browser 
#    Log  Exited
    