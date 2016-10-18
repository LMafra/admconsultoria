function initMap() {

	var myLatLng = {lat: -15.7584793, lng: -47.8716533};
  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 17
  });
  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'AD&M Consultoria Empresarial'
  });
}