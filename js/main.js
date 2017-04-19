/*Login*/
function logIn() {
    var input = document.getElementById("name");
    var h4 = document.getElementById("user");
    h4.innerHTML = "Hello " + input.value
}
function adminlogIn() {
    var input = document.getElementById("name");
    var h4 = document.getElementById("user");
    h4.innerHTML = "Hello  Admin " + input.value
}
//Login submit button keypress(on enter)
function searchKeyPress(e) {
    e = e || window.event;
    if (e.keyCode == 13) {
        document.getElementById('btnclick').click();
        return false;
    }
    return true;
}

/*Result Div*/
function displayForm() {
    document.getElementById("result").style.display = "block";
}

/*Hide and Show Login*/
function hideLogIn() {
    document.getElementById("logindiv").style.display = "none";
    document.getElementById("result").style.paddingTop = "50px";
}

function showLogIn() {
    document.getElementById("logindiv").style.display = "block";
    document.getElementById("result").style.paddingTop = "50px";
}
function showadLogIn() {
    document.getElementById("adlogindiv").style.display = "block";
    document.getElementById("resultdiv").style.paddingTop = "50px";
}
function displayadmin(){
    document.getElementById("resultdiv").style.display = "block";
} 
function hideadmin(){
    document.getElementById("adlogindiv").style.display = "none";
    document.getElementById("resultdiv").style.paddingTop = "50px";
}

/*Password*/
function showPassword() {
    if (document.getElementById("showPwd").checked) {
        document.getElementById("pwd").setAttribute("type", "text");
    } else {
        document.getElementById("pwd").setAttribute("type", "password");
    }
}
/*new Password*/
function shownewPassword() {
    if (document.getElementById("shownewPwd").checked) {
        document.getElementById("newpwd").setAttribute("type", "text");
    } else {
        document.getElementById("newpwd").setAttribute("type", "password");
    }
}
/*Footer*/
function changeFooter() {
    document.getElementById("myfooter").style.textAlign = "center";
    document.getElementById("myfooter").style.position = "initial";
    document.getElementById("myfooter").style.width = "100%";
    document.getElementById("myfooter").style.height = "50px";
}

function changeFooterAgain() {
    document.getElementById("myfooter").style.textAlign = "center";
    document.getElementById("myfooter").style.position = "absolute";
    document.getElementById("myfooter").style.bottom = "0";
    document.getElementById("myfooter").style.left = "0";
    document.getElementById("myfooter").style.width = "100%";
    document.getElementById("myfooter").style.height = "75px";
}




/* function displayResult() {
    document.getElementById("resultdiv").style.display = "block";
    document.getElementById("result").style.display = "none";

}

 */
function hideResult() {
    document.getElementById("result").style.display = "none";
}
function hideResultDiv() {
    document.getElementById("resultdiv").style.display = "none";
}

/*Reset*/


function resetLogIn() {
    document.getElementById("form").reset();
}