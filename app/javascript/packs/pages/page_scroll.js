const loadNextPage = ()=> {
  if ($('#next_link').data("loading")){
    return
  }
  const records_table = document.getElementById('records_table');

  if (records_table == null){
    return
  }
  const wBottom  = $(window).scrollTop() + $(window).height();
  const elBottom = $('#records_table').offset().top + $('#records_table').height();

  const page = $('#pageScroll').attr('data-page');
  const loader = document.getElementById('loader');
  if (wBottom > elBottom){
    const nextLink = document.getElementById('next_link');
    if (nextLink == null){
      return 
    }
    $('#next_link')[0].click();
    $('#next_link').data("loading", true);
  }
};

window.addEventListener('resize', loadNextPage);
window.addEventListener('scroll', loadNextPage);
window.addEventListener('load',   loadNextPage);
