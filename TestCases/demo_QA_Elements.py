class Text_Box_ElementsPage:
    text_box= 'xpath://*[@id="item-0"]/span'
    user_name= '//*[@id="userName"]'
    user_email= '//*[@id="userEmail"]'
    current_address= '//*[@id="currentAddress"]'
    permanent_address= '//*[@id="permanentAddress"]'
    submit_btn= '//*[@id="submit"]'


    dynamic_properties= '//*[@id="item-8"]/span'


class Check_Box_ElementsPage:
    check_box= 'xpath://*[@id="item-1"]'
    expand_all= '//*[@id="tree-node"]/div/button[1]'
    document= '//*[@id="tree-node"]/ol/li/ol/li[2]/span/label'
    collapse_all = '//*[@id="tree-node"]/div/button[2]'

class Radio_btn_ElementsPage:
    radio_btn = '//*[@id="item-2"]'
    yes_radio = "//*[text()='Yes']"
    impressive_radio = "//*[text()='Impressive']"

class Web_Tables_ElementsPage:
    web_tables = '//span[text()="Web Tables"]'
    add = '//*[@id="addNewRecordButton"]'
    first_name = '//*[@id="firstName"]'
    last_name = '//*[@id="lastName"]'
    email = '//*[@id="userEmail"]'
    age = '//*[@id="age"]'
    salary = '//*[@id="salary"]'
    department = '//*[@id="department"]'
    submit = '//*[@id="submit"]'
    delete = '//*[@id="delete-record-4"]'

class Buttons_ElementsPage:
    buttons = '//span[text()="Buttons"]'
    double_click = '//*[@id="doubleClickBtn"]'
    right_click = '//*[@id="rightClickBtn"]'
    click_me = '//*[text()="Click Me"]'

class Links_ElementsPage:
    links = '//*[text()="Links"]'
    home  = '//*[@id="simpleLink"]'
    not_found = '//*[@id="invalid-url"]'

class Broken_links_images:
    broken_links = '//span[text()="Broken Links - Images"]'
    click_here_for_valid_link = '//*[text()="Click Here for Valid Link"]'
    click_here_for_broken_link = '//*[text()="Click Here for Broken Link"]'

class Upload_Download:
    upload_download = '//*[@id="item-7"]/span'
    download = '//*[@id="downloadButton"]'
    choose_file = '//*[@id="uploadFile"]'
