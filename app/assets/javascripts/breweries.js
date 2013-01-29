function showMap(lat, long) {
    var latlng = new google.maps.LatLng(lat, long);
    var myOptions = {
        zoom: 17,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("brew_map"), myOptions);

    var iconBase = 'http://localhost:3000/assets/';

    var iconShadow = new google.maps.MarkerImage(
        iconBase + 'map_marker_shadow.png',
        null,
        null,
        new google.maps.Point(2, 40)
    );

    var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        icon: iconBase + 'map_marker.png',
        shadow: iconShadow
    });

}

$(function(){
    var lat = $('#brew_lat').val();
    var lgt = $('#brew_lgt').val();
    if (lat && lgt)
    {
        $('#brew_map').removeClass('hide');
        showMap(lat, lgt);
    }
});
