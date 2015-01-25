$(function() {
    $('a[id^="fav_"]').click(function(){
        $('#'+ this.id).text('Added to Favorites').contents().unwrap();

    });
});
