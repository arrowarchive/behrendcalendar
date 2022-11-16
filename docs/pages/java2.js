function calendar () {

    var fieldset = document.getElementByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', highlight(), false);
    }
}
function highlight() {
    var id = this.id;
    switch (id) {
        case "person": {
            var person = document.getElementsByClassName("person");
            for (var i = 0; i < person.length; i++) {
                person[i].style.backgroundColor = "yellow";
            }
        };
        break;
        case "location": {
            var location = document.getElementsByClassName("location");
            for (var i = 0; i < location.length; i++) {
                location[i].style.backgroundColor = "cyan";
            }
        };
        break;
        case "animal": {
            var animal = document.getElementsByClassName("critter");
            for (var i = 0; i < animal.length; i++) {
                animal[i].style.backgroundColor = "green";
            }
        };
        break;
        case "object": {
            var objects = document.getElementsByClassName("object");
            for (var i = 0; i < object.length; i++) {
                object[i].style.backgroundColor = "pink";
            }
        };
        break;
    }
}

 window.onload = calendar;