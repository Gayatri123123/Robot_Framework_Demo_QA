*** Settings ***
Library     SeleniumLibrary
variables        ./demo_QA_Elements.py



*** Variables ***
${book_store}     xpath://*[@id="app"]/div/div/div[2]/div/div[6]/div/div[3]/h5
${elements}        xpath://*[@id="app"]/div/div/div[2]/div/div[1]/div/div[3]
${file_path}       C:\\Users\\G51\\Downloads\\sampleFile.jpeg
${elements_book_store}     //*[@id="app"]/div/div/div/div[1]/div/div/div[6]/span/div/div[1]


*** Keywords ***
Elements_page

    Scroll Element Into View        ${book_store}
    capture element screenshot      ${elements}
    capture page screenshot         Screenshots.custom_name.png
    Click Element       ${elements}

Elements_text_box

    Click Element       ${Text_Box_ElementsPage.text_box}
    #Click Button        ${text_box}
    input text          ${Text_Box_ElementsPage.user_name}     Gayatri
    sleep       3
    input text          ${Text_Box_ElementsPage.user_email}     Gayatri@gmail.com
    sleep       3
    input text          ${Text_Box_ElementsPage.current_address}     Gayatri H:N0 1/72
    sleep       3
    input text          ${Text_Box_ElementsPage.permanent_address}     Gayatri H:NO 1/72
    sleep       3
    Scroll Element into view   ${elements_book_store}
    sleep       5
    click button        ${Text_Box_ElementsPage.submit_btn}

Elements_check_box

    click element   ${Check_Box_ElementsPage.check_box}
    sleep       3
    click element   ${Check_Box_ElementsPage.expand_all}
    sleep       3
    click element   ${Check_Box_ElementsPage.document}
    sleep       3
#    check box should not be selected   ${Check_Box_ElementsPage.document}
    click element   ${Check_Box_ElementsPage.collapse_all}
    sleep       3


Elements_radio_btn
    click element   ${Radio_btn_ElementsPage.radio_btn}
    sleep       3
    click element   ${Radio_btn_ElementsPage.yes_radio}
    sleep       3
    click element   ${Radio_btn_ElementsPage.impressive_radio}
    sleep       3

Elements_web_tables
    Scroll Element into view   ${Text_Box_ElementsPage.dynamic_properties}
    click element   ${Web_Tables_ElementsPage.web_tables}
    click element   ${Web_Tables_ElementsPage.add}
    input text      ${Web_Tables_ElementsPage.first_name}   Gayatri
    input text      ${Web_Tables_ElementsPage.last_name}    Reddy
    input text      ${Web_Tables_ElementsPage.email}        gayatrireddy@gmail.com
    input text      ${Web_Tables_ElementsPage.age}          25
    input text      ${Web_Tables_ElementsPage.salary}       25000
    input text      ${Web_Tables_ElementsPage.department}   IT
    sleep           3
    click element   ${Web_Tables_ElementsPage.submit}
    sleep           3
    click element   ${Web_Tables_ElementsPage.delete}

Elements_buttons
    Scroll Element into view   ${Text_Box_ElementsPage.dynamic_properties}
    sleep           3
    click element           ${Buttons_ElementsPage.buttons}
    sleep           3
    double click element    ${Buttons_ElementsPage.double_click}
    sleep           3
    open context menu       ${Buttons_ElementsPage.right_click}
    sleep           3
    Scroll Element into view   ${Text_Box_ElementsPage.dynamic_properties}
    click element           ${Buttons_ElementsPage.click_me}
    sleep           3

Elements_links
    click element       ${Links_ElementsPage.links}
    click element       ${Links_ElementsPage.home}
    switch window

    click element       ${Links_ElementsPage.not_found}
    sleep           5

Elements_Broken_links_images
    click element       ${Broken_links_images.broken_links}
    sleep       3
    Scroll Element into view   ${Upload_Download.upload_download}
    sleep       3
    click element       ${Broken_links_images.click_here_for_valid_link}
    go back
    Scroll Element into view   ${Text_Box_ElementsPage.dynamic_properties}
    click element       ${Broken_links_images.click_here_for_broken_link}
    go back


Elements_upload_download
    Scroll Element into view   ${Text_Box_ElementsPage.dynamic_properties}
    sleep       3
    click element       ${Upload_Download.upload_download}
    sleep       3
    click element       ${Upload_Download.download}
    sleep       3
    choose file      ${Upload_Download.choose_file}    ${file_path}
    sleep       3
    go back
    sleep       5

