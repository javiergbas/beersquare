function showMap(lat, long) {
    var latlng = new google.maps.LatLng(lat, long);
    var myOptions = {
        zoom: 17,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("brew_map"), myOptions);

    var marker = new google.maps.Marker({
        position: latlng,
        map: map
    });

}

$(function(){
    alert('ashfklsaf');
    var lat = $('#brew_lat').val();
    var lgt = $('#brew_lgt').val();
    if (lat && lgt)
    {
        $('#brew_map').removeClass('hide');
        showMap(lat, lgt);
    }
});
