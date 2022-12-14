*** Keywords ***

Open Google Webpage
    Open Browser    ${URL}  ${BROWSER}
    Go To    http://www.google.com
    Set Window Size     1920  1080
    Set Selenium Speed  0.3

Insert Search Text
    Input Text    bingo





