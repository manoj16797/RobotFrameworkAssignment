*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Myntra Website
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Navigate to category
    Mouse Over  //*[@class="desktop-main"]
Click on a particular category
    #CLick on sweaters
    Click ELement  //*[@class="desktop-categoryLink" and @data-reactid= "39"]

Select a unique product
   #select brand as Roadster
    Click Element  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[2]/label/div
    BuiltIn.Sleep  3s

#   select a unique sweater
    Scroll Element Into View  ${product1}
    BuiltIn.Sleep  3s
   #click on that sweater
    Click Element  ${product1}
    BuiltIn.Sleep  3s

    Switch Window  NEW
    #select size
    Click Element  //*[@id="sizeButtonsContainer"]/div[2]/div[3]/div[1]/button/p
    BuiltIn.Sleep  3s
    #click on addto cart
    Click Element  ${add to cart}
    BuiltIn.Sleep  3s
    Switch Window  MAIN
    Reload Page
    BuiltIn.Sleep  3s

    #scroll back to roadster
    Scroll Element Into View  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[2]/label
    BuiltIn.Sleep  3s

    #uncheck roadster
    Click Element  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[2]/label/div
    BuiltIn.Sleep  3s

    #check another brand
    Click Element  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[6]/label
    BuiltIn.Sleep  3s

    #sroll a product
    Scroll Element Into View  ${product2}
    BuiltIn.Sleep  3s

    #click on a product
    Click Element  ${product2}
    BuiltIn.Sleep  3s

    #switch to the new window opened
    Switch Window  NEW
    BuiltIn.Sleep  2s

    #Select size
    Click Element  //*[@id="sizeButtonsContainer"]/div[2]/div[3]/div[1]/button/p
    BuiltIn.Sleep  3s

    #click on add to bag
    Click Element  ${add to cart}
    BuiltIn.Sleep  3s

    #switch to main tab
    Switch Window  MAIN
    Reload Page
    BuiltIn.Sleep  5s

    #click on bag
    Click Element  ${bag}
    BuiltIn.Sleep  5s
