*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Users opens Myntra Homepage
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Navigate to category
    #Mouse Over  //*[@id="desktop-header-cnt"]/div[2]/nav/div/div[1]/div/a
    Mouse Over  //*[@class="desktop-main"]
Click on a particular category
    Click ELement  //*[@class="desktop-categoryLink" and @data-reactid= "39"]
    #Click Element  //*[@id="desktop-header-cnt"]/div[2]/nav/div/div[1]/div/div/div/div/li[1]/ul/li[6]/a

Select a unique product
   #select brand as Roadster
    Click Element  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[2]/label/div
    BuiltIn.Sleep  3s

#    Click Element  //*[@type="checkbox" and @value="Roadster"]
#    Scroll Element into View  //*[@title="Roadster Men Black & Charcoal Grey Colourblocked Sweater"]
#    BuiltIn.Sleep  3s
#    Wait Until Element Is Visible  .//*[@title="Roadster Men Black & Charcoal Grey Colourblocked Sweater"]
#    Click Element  //*[@class="img-responsive" and @title="Roadster Men Black & Charcoal Grey Colourblocked Sweater"]


#   select a unique sweater
    Scroll Element Into View  //*[@id="desktopSearchResults"]/div[2]/section/ul/li[8]/a/div[1]/div
    BuiltIn.Sleep  3s
   #click on that sweater
    Click Element  //*[@id="desktopSearchResults"]/div[2]/section/ul/li[8]/a/div[1]/div
    BuiltIn.Sleep  3s

    Switch Window  NEW
    #Press Keys  CTRL+TAB
    #select size
    Click Element  //*[@id="sizeButtonsContainer"]/div[2]/div[3]/div[1]/button/p
    BuiltIn.Sleep  3s
    #click on addto cart
    Click Element  ${add to cart}
#    Click Element  //*[@id="mountRoot"]/div/div/div/main/div[2]/div[2]/div[3]/div/div[1]
    BuiltIn.Sleep  3s

    #Select Window  MAIN
    #Close Window
    #BuiltIn.Sleep  2s

    Switch Window  MAIN

    Reload Page
    BuiltIn.Sleep  3s

    #scroll back to roadster
    Scroll Element Into View  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[2]/label
    BuiltIn.Sleep  3s

    #uncheck roadster
    Click Element  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[2]/label/div
    BuiltIn.Sleep  3s

    #check uspolo
    Click Element  //*[@id="mountRoot"]/div/div[1]/main/div[3]/div[1]/section/div/div[2]/ul/li[6]/label
    BuiltIn.Sleep  3s

    #sroll a product
    Scroll Element Into View  //*[@id="desktopSearchResults"]/div[2]/section/ul/li[8]/a/div[2]/div/span[1]/span[2]
    BuiltIn.Sleep  3s

    #click on a product
    Click Element  //*[@id="desktopSearchResults"]/div[2]/section/ul/li[8]/a/div[2]/div/span[1]/span[2]
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
    Click Element  //*[@id="desktop-header-cnt"]/div[2]/div[2]/a[2]/span[3]
    BuiltIn.Sleep  5s

    #PLace Order-Leading to login page
    #Click Element  //*[@id="appContent"]/div/div/div/div/div[2]/div[3]/a/div