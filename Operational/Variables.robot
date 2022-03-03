*** Variables ***

#-----browser settings----
${url} =  https://www.myntra.com/

#-----url variables----
${browser} =  chrome

#---add to cart btn----
${add to cart} =  //*[@class="myntraweb-sprite pdp-whiteBag sprites-whiteBag pdp-flex pdp-center"]

#---bag btn -----
${bag} =  //*[@class="desktop-userTitle" and @data-reactid=878]

#---product1----
${product1} =  //*[@id="desktopSearchResults"]/div[2]/section/ul/li[8]/a/div[1]/div

#---product 2 ----
${product2} =  //*[@id="desktopSearchResults"]/div[2]/section/ul/li[8]/a/div[2]/div/span[1]/span[2]