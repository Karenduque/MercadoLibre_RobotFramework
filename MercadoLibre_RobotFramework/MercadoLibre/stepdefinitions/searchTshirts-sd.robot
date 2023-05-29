***Settings***
Library      Collections
Resource      ../../MercadoLibre/pagesobjects/searchTshirts-page.robot
Resource      ../../MercadoLibre/configuration/configuration-dev.robot
Library      ../../MercadoLibre/scripts_python/genera_archivo.py
Library           Process

***Keywords***
the data filled correnctly
    I fill the search bar
    I click on the icon search

Shows the results successful
  #Lista para almacenar todos los articulos
  ${totalLinks}    Create List

  #cuanta cuantos articulos hay en el resultado de la busqueda pagina 1
  #${totalLinks}=    Get Element Count    ${divListaArticulos}
  #Log To Console  cantidad de links pagina 1: ${totalLinks}
  
  #Lista productos pagina 1
  ${elements}=  Get WebElements   ${divListaArticulos}

  #almacena en la lista principal los articulos de la pagina 1
  #${totalLinks}= Combine Lists    ${totalLinks}    ${elements}

  FOR    ${element}    IN    @{elements}

      #Imprime el link del articulo
      ${link}=    Get Element Attribute    ${element}     href
      Log To Console  Link: ${link}

      Agrega Linea Al Archivo  ${link}
#      Run Process 	python3   -c  print('Hello, world!')

      #Imprime el titulo del articulo
      ${title}=    Get Element Attribute    ${element}     title
      Log To Console  Nombre: ${title}
      Agrega Linea Al Archivo  ${title}
      
      #consulta el precio del articulo en su respectivo link
      Open Browser   ${link}  chrome
      #Execute Javascript    location.href =arguments[0];     ARGUMENTS    ${link}
      #Imprime el precio del articulo
      ${amount}=    Get Text    ${precioArticulos}
      Log To Console  Amount: ${amount}
      Agrega Linea Al Archivo  ${amount}
      Close browser
      #Execute Javascript    history.back();     ARGUMENTS    ''

  END

  #cambia a la pagina 2
  ${ele}    Get WebElement    ${siguientePagina}
  Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}  

  #Lista productos pagina 2
  ${elements}=  Get WebElements   ${divListaArticulos}

  #almacena en la lista principal los articulos de la pagina 2
  #${totalLinks}=  Combine Lists    ${elementsInicial}    ${elements}

  FOR    ${element}    IN    @{elements}

      #Imprime el link del articulo
      ${link}=    Get Element Attribute    ${element}     href
      Log To Console  Link: ${link}
      Agrega Linea Al Archivo  ${link}

      #Imprime el titulo del articulo
      ${title}=    Get Element Attribute    ${element}     title
      Log To Console  Nombre: ${title}
      Agrega Linea Al Archivo  ${title}
      
      #consulta el precio del articulo en su respectivo link
      Open Browser   ${link}  chrome
      #Execute Javascript    location.href =arguments[0];     ARGUMENTS    ${link}
      #Imprime el precio del articulo
      ${amount}=    Get Text    ${precioArticulos}
      Log To Console  Amount: ${amount}
      Agrega Linea Al Archivo  ${amount}

      Close browser
      #Execute Javascript    history.back();     ARGUMENTS    ''
      
  END

  #cambia a la pagina 3
  ${ele}    Get WebElement    ${siguientePagina}
  Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}  

  #Lista productos pagina 3
  ${elements}=  Get WebElements   ${divListaArticulos}

  #almacena en la lista principal los articulos de la pagina 3
  #${totalLinks}=  Combine Lists    ${totalLinks}    ${elements}

  FOR    ${element}    IN    @{elements}

      #Imprime el link del articulo
      ${link}=    Get Element Attribute    ${element}     href
      Log To Console  Link: ${link}
      Agrega Linea Al Archivo  ${link}

      #Imprime el titulo del articulo
      ${title}=    Get Element Attribute    ${element}     title
      Log To Console  Nombre: ${title}
      Agrega Linea Al Archivo  ${title}
      
      #consulta el precio del articulo en su respectivo link
      Open Browser   ${link}  chrome
      #Execute Javascript    location.href =arguments[0];     ARGUMENTS    ${link}
      #Imprime el precio del articulo
      ${amount}=    Get Text    ${precioArticulos}
      Log To Console  Amount: ${amount}
      Agrega Linea Al Archivo  ${amount}

      Close browser
      #Execute Javascript    history.back();     ARGUMENTS    ''
      
  END

  #total de articulos en las tres paginas
  #${cantidadTotalArticulos}=  Get Count   ${totalLinks}
  #Log To Console  cantidad de links totales: ${cantidadTotalArticulos}

  #Recorre las tres paginas
#  FOR    ${element}    IN    @{totalLinks}
#
#      #Imprime el link del articulo
#      ${link}=    Get Element Attribute    ${element}     href
#      Log To Console  Link: ${link}
#
#      #Imprime el titulo del articulo
#      ${title}=    Get Element Attribute    ${element}     title
#      Log To Console  Nombre: ${title}
#      
#      #consulta el precio del articulo en su respectivo link
#      Open Browser   ${link}  chrome
#      #Imprime el precio del articulo
#      ${amount}=    Get Text    ${precioArticulos}
#      Log To Console  Amount: ${amount}
#      Close browser
#  END

  Close browser