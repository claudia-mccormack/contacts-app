// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


function getData() {
  var divGardens = document.getElementById('gardens');
  $.get('https://data.cityofnewyork.us/resource/yes4-7zbb.json', function(response) {
    var htmlString = "<ul>";
    for (var i = 0; i < response.length; i++) {
      htmlString += "<li onclick='changeColor(this)' class='gardens'>" + response[i].garden_name + "</li>" + "<ul><li>" + response[i].boro + "</li></ul>" + "<ul><li>" + response[i].address + "</li></ul>";
    }
    htmlString += "</ul>";
    divGardens.innerHTML = htmlString;
  });
}

// function filterByBrooklyn() {
//   var gardens = document.querySelectorAll('.gardens');
//   for (i = 0; i < gardens.length; i++) {
//     var garden = gardens[i];
//     if (garden.innerHTML.indexOf("B") === -1) {
//     garden.style.display= "none";
//     }
//   }
// }

function changeColor(listitem) {
  listitem.style.color = "green";
}
