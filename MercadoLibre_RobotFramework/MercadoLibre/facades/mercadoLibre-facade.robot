*** Settings ***
Resource       ../../MercadoLibre/configuration/configuration-dev.robot

*** Variables ***

*** Keywords ***
I am in MercadoLibre page
    Open Browser   ${URL_MercadoLibre}  chrome
    Maximize Browser Window

Print title of MercadoLibre home
  ${title}=  Get Title
  Log To Console  ${title}