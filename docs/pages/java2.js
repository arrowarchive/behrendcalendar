function calendar () {

    var fieldset = document.getElementByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', highlight, false);
    }
}
function highlight() {
    var id = this.id;
    switch (id) {
        case "person": {
            var chars = document.getElementsByClassName("person");
            for (var i = 0; i < chars.length; i++) {
                chars[i].style.backgroundColor = "yellow";
            }
        };
        break;
        case "locations": {
            var chars = document.getElementsByClassName("location");
            for (var i = 0; i < places.length; i++) {
                chars[i].style.backgroundColor = "cyan";
            }
        };
        break;
        case "animals": {
            var animals = document.getElementsByClassName("critter");
            for (var i = 0; i < objects.length; i++) {
                chars[i].style.backgroundColor = "green";
            }
        };
        break;
        case "objects": {
            var objects = document.getElementsByClassName("objects");
            for (var i = 0; i < objects.length; i++) {
                chars[i].style.backgroundColor = "pink";
            }
        };
        break;
    }
}

 window.onload = calendar;