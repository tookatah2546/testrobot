*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    https://automationexercise.com/   chrome

*** Variables ***
${name}         tookatah
${email}        semay@gmail.com
${firstname}    raksita
${lastName}     singhkhra
${password}     Test64se
${company}      se.up
${address}      payao
${address2}     university of singapore
${state}        -
${city}         singapore
${zipcode}      571150
${MobileNumber}  0986029804


*** Keywords ***

Click signup Element
    Click Element       //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    
Input name
    [Arguments]    ${name}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[2]    ${name}

Input Email
    [Arguments]    ${email}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]    ${email}

Click signup button
    Click Button       //*[@id="form"]/div/div/div[3]/div/form/button

Click mrs button
    Click Element       //*[@id="id_gender2"]

Input password
    [Arguments]    ${password}
    Input Text    //*[@id="password"]    ${password}

Click day select
    Click Element       //*[@id="days"]

Select From List By day Value
    Select From List By Value    days      4 

Click months select
    Click Element       //*[@id="months"]

Select From List By month Index
    select from list by label    months      May

Click years select
    Click Element       //*[@id="years"]

Select From List By years Value
    Select From List By Value    years      2004 

Checked Checkbox
    Click Element    //*[@id="newsletter"]
    Click Element    //*[@id="optin"]

Input firstName
    [Arguments]    ${firstname}
    Input Text    //*[@id="first_name"]    ${firstname}

Input lastName
    [Arguments]    ${lastName}
    Input Text    //*[@id="last_name"]    ${lastName} 

Input company
    [Arguments]    ${company}
    Input Text    //*[@id="company"]    ${company} 

Input address
    [Arguments]    ${address}
    Input Text    //*[@id="address1"]    ${address}  

Input address2
    [Arguments]    ${address2}
    Input Text    //*[@id="address2"]    ${address2}

Click country select
    Click Element       //*[@id="country"]

Select From List By country Index
    select from list by label    country      Singapore

Input state
    [Arguments]    ${state}
    Input Text    //*[@id="state"]    ${state} 

Input city
    [Arguments]    ${city}
    Input Text    //*[@id="city"]    ${city} 

Input zipcode
    [Arguments]    ${zipcode}
    Input Text    //*[@id="zipcode"]    ${zipcode}  

Input MobileNumber
    [Arguments]    ${MobileNumber}
    Input Text    //*[@id="mobile_number"]    ${MobileNumber}

Click create button
    Click Button    //*[@id="form"]/div/div/div/div[1]/form/button

Click con button
    Click Button    //*[@id="form"]/div/div/div/div/a

Click deleta button
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

*** Test Cases ***
Register with valid info
   [Documentation]    Test the login functionality with valid credentials
    Click signup Element
    Input name    ${name}
    Input Email    ${email}
    Click signup button
    Click mrs button
    Input password    ${password}
    Click day select
    Select From List By day Value
    Click months select
    Select From List By month Index
    Click years select
    Select From List By years Value
    Checked Checkbox
    Input firstName    ${firstname}
    Input lastName    ${lastName}
    Input company    ${company}
    Input address    ${address}
    Input address2    ${address2}
    Click country select
    Select From List By country Index
    Input state    ${state}
    Input city    ${city}
    Input zipcode    ${zipcode}
    Input MobileNumber    ${MobileNumber}
    Click create button
    Click con button
    Click deleta button
    Click con button