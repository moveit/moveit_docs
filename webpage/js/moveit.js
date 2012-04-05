!function ($) {
    $('#moveitCarousel').carousel()
    $('#moveitCarousel').hover(function () {
      $(this).carousel('pause')
    }, function () {
      $(this).carousel('cycle')
    })

    searchBox = new SearchBox("searchBox", "search",false,'Search API');
    searchBox.OnSelectItem(0);

}(window.jQuery)
