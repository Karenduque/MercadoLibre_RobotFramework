***Settings***

***Variables***
${resultTitle}  css:ui-search-breadcrumb__title.shops-custom-primary-font
${resultsTitle}  css:ui-search-item__group__element.shops__items-group-details.ui-search-link
${nextButton}    css:andes-pagination__button.andes-pagination__button--next.shops__pagination-button
${iconSearch}    css:.nav-search-btn .nav-icon-search
${navSearchInput}    id:cb1-edit

***Keywords***
I fill the search bar
    input Text    ${navSearchInput}    camisetas

I click on the icon search
    Click Element    ${iconSearch}