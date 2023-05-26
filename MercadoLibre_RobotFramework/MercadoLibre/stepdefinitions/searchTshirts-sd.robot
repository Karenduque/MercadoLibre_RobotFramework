***Settings***
Resource      ../../MercadoLibre/pagesobjects/searchTshirts-page.robot
Resource      ../../MercadoLibre/configuration/configuration-dev.robot
***Keywords***
the data filled correnctly
    I fill the search bar
    I click on the icon search

Shows the results successful
  ${responseM1}    Get Text    ${resultTitle}
  Should Be Equal As Strings    ${responseM1}    camisetas
  ${responseM2}    Get Text    ${resultsTitle}
  Should Be Equal As Strings    ${responseM2}     camisetas
  Click Element    ${nextButton}
  Should Be Equal As Strings    ${responseM2}     camisetas
  Click Element    ${nextButton}
  Should Be Equal As Strings    ${responseM2}     camisetas
  Close browser