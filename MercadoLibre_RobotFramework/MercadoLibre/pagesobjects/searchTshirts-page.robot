***Settings***

***Variables***
${resultTitle}  css:ui-search-breadcrumb__title.shops-custom-primary-font
${resultsTitle}  css:ui-search-item__group__element.shops__items-group-details.ui-search-link
${nextButton}    css:andes-pagination__button.andes-pagination__button--next.shops__pagination-button
${iconSearch}    css:.nav-search-btn .nav-icon-search
${navSearchInput}    id:cb1-edit
#${divListaArticulos}    css:.ui-search-layout__item
${divListaArticulos}    css:.ui-search-item__group__element.shops__items-group-details.ui-search-link
${precioArticulos}    css:.andes-money-amount__fraction
${siguientePagina}    css:.andes-pagination__link.shops__pagination-link.ui-search-link
#${siguientePagina}    xpath:/html/body/main/div/div[2]/section/div[10]/ul/li[3]/a

***Keywords***
I fill the search bar
    input Text    ${navSearchInput}    camisetas

I click on the icon search
    Click Element    ${iconSearch}