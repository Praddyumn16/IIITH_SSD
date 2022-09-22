function validate_password() {

    const error = document.getElementById("error2");

    if (document.getElementById('server_password').value != document.getElementById('confirm_password').value) {
        error.innerHTML = "Password mismatch";
        return true;
    }
    else {
        error.innerHTML = "";
        return true;
    }
}

function validate_username() {
    const uname = document.getElementById("username");
    const error = document.getElementById("error1");

    if (uname.validity.patternMismatch) {
        error.innerHTML = "Invalid Username";
    }
    else {
        error.innerHTML = "";
    }
}

function validateMyForm() {
    return !(document.getElementById("error2").innerHTML == "Password mismatch");
}

function check_submit() {
    const x = document.getElementById("error2");
    if (x.innerHTML == "Password mismatch") {
        validateMyForm();
    }
    else {
        const mname = document.getElementById("manager_name");
        const email = document.getElementById("group_email");
        const uname = document.getElementById("username");
        const lead = document.getElementById("team_lead");
        // const members = document.getElementById("team_members");
        const temp = "Name: " + mname.value + "\n" + "Email: " + email.value + "\n" + "Username: " + uname.value + "\n" +
            "Team Lead: " + lead.value + "\n" + "Team Members: ";
        alert(temp);
    }
}

function isKeyPressed(event) {
    var element = document.body;
    if (event.ctrlKey && event.keyCode == 77) {
        element.classList.toggle("dark-mode");
    }
}