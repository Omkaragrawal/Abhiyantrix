//Donot uncomment any line. dare not uncommenting any line untill permission granted.
// Donot use the access key  and the function verify() untill permission granted.
// set endpoint and your access key



var access_key = '266ed6808bba3caef727f3ee2e93dcf';
var email_address;

// verify email address via AJAX call
function verify()
{
$.ajax({
    url: 'http://apilayer.net/api/check?access_key=' + access_key + '&email=' + email_address,
    dataType: 'jsonp',
    success: function validate(json) {

        // Access and use your preferred validation result objects
        console.log(json.format_valid);
        console.log(json.smtp_check);
        console.log(json.score);
        console.log("disposable:   "+json.disposable);

    }
});
}


    //document.getElementById('SUSbmtBtn').onclick(function () {

    //    email_address = document.getElementById('TextBox11').value;
    //    document.getElementById('Label5').textContent = email_address;

    //});
    function setmail()
    {
        email_address = document.getElementById('TextBox11').value;
        document.getElementById('Label5').textContent = email_address;
        //verify();
    }