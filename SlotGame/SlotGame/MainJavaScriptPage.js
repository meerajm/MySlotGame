function DisableBackButton() {
    window.history.forward()
}


function Button1_Click() {
    var val = document.getElementById("hdnImgArr").value;
    var Arr = val.split("||");
    document.getElementById("imgR1R1").src = Arr[0];
    document.getElementById("imgR1R2").src = Arr[1];
    document.getElementById("imgR1R3").src = Arr[2];
    document.getElementById("imgR2R1").src = Arr[3];
    document.getElementById("imgR2R2").src = Arr[4];
    document.getElementById("imgR2R3").src = Arr[5];
    document.getElementById("imgR3R1").src = Arr[6];
    document.getElementById("imgR3R2").src = Arr[7];
    document.getElementById("imgR3R3").src = Arr[8];
}