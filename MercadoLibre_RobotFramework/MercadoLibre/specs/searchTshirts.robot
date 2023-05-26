***Settings***
Library  Selenium2Library

Resource       ../../MercadoLibre/pagesobjects/searchTshirts-page.robot
Resource       ../../MercadoLibre/facades/mercadoLibre-facade.robot
Resource       ../../MercadoLibre/stepdefinitions/searchTshirts-sd.robot

***Test Cases***
Search T-shirts
   Given the MercadoLibre page is open
   When the search is completed
   Then the user can see the results list

***Keywords***
the MercadoLibre page is open
    Given I am in MercadoLibre page
    Then Print title of MercadoLibre home
    
the search is completed
    When the data filled correnctly

the user can see the results list
    Then shows the results successful