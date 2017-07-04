//Donot uncomment any line. dare not uncommenting any line untill permission granted.
// Donot use the access key  and the function verify() untill permission granted.
// set endpoint and your access key



var access_key = '266ed6808bba3caef727f3ee2e93dcf';
var email_address;
var valid_format, smtp_check, disposable, mxfound, Urole;
function setmail() {
    email_address = document.getElementById('TextBox11').value;
    document.getElementById('Label5').textContent = email_address;
    //verify();
}

// verify email address via AJAX call
function verify()
{
$.ajax({
    url: 'http://apilayer.net/api/check?access_key=' + access_key + '&email=' + email_address,
    dataType: 'jsonp',
    success: function validate(json) {

        // Access and use your preferred validation result objects
        //console.log(json.format_valid);
        //console.log(json.smtp_check);
        //console.log(json.score);
        //console.log("disposable:   "+json.disposable);
        //console.log(json.role);
        //console.log(json.mxfound);



        //valid_format = json.valid_format ;
        //smtp_check = json.smtp_check ;
        //disposable = json.disposable;
        //mxfound = json.mxfound ;
        //Urole = json.role;

        document.getElementById("HFformatvalid").innerHTML = json.valid_format;
        document.getElementById("HFsmtpcheck").innerHTML = json.smtp_check;
        document.getElementById("HFdisposable").innerHTML = json.disposable;
        document.getElementById("HFmxfound").innerHTML = json.mxfound;
        document.getElementById("HFrole").innerHTML = json.role;
        emailchck("HFformatvalid", "HFsmtpcheck", "HFdisposable", "HFmxfound", "HFrole");
    }
});
}

function emailchck(id1,id2,id3,id4,id5)
{
    valid_format = document.getElementById(id1).innerText ;
    smtp_check = document.getElementById(id2).innerText;
    disposable = document.getElementById(id3).innerText;
    mxfound = document.getElementById(id4).innerText;
    Urole = document.getElementById(id5).innerText;
    if ((valid_format == "true" && smtp_check == "true" && disposable == "false" && mxfound=="true" && Urole == "false"))
    {
        //document.getElementById("HFemail").innerText = document.getElementById("TextBox11").innerText;
        document.getElementById("HFemail").innerText = email_address;
    }
    else
    {
       // document.getElementById("Label17").innerText = "";
        if (valid_format == "false")
        {
            document.getElementById("Label17").innerHTML += "Invalid email format" + "<br />";
        }
        if (smtp_check == "false")
        {
            document.getElementById("Label17").innerHTML += "Invalid email" + "<br />";
        }
        if (disposable == "true") {
            document.getElementById("Label17").innerHTML += "Please Donot use diaposable email" + "<br />";
        }
        if (mxfound == "false") {
            document.getElementById("Label17").innerHTML += "Cannot send email to your mail. Please use a genuine email id" + "<br />";
        }
        if (Urole == "true") {
            document.getElementById("Label17").innerHTML += "Invalid email.Use proper email id" + "<br />";
        }
    }
}
function assign(idfrom,idto)
{

    document.getElementById(idto).innerText = document.getElementById(idfrom).innerText;
}

function verify()
{

}


    //document.getElementById('SUSbmtBtn').onclick(function () {

    //    email_address = document.getElementById('TextBox11').value;
    //    document.getElementById('Label5').textContent = email_address;

    //});
