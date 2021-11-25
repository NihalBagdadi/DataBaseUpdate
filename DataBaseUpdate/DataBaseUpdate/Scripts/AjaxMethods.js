let databaseName = ""
let userId = ""
let txtPassword=""

$("#btnSubmit").click(function () {
    databaseName = document.getElementById('txtServerName').value
    userId = document.getElementById('txtUserId').value
    txtPassword = document.getElementById('txtPassword').value
    
    let id = 0;
    event.preventDefault();
        alert("ok")
        $.ajax({
            type: "POST",
            url: "DatabaseList.aspx/getDatabaseList",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ sn: databaseName, uid: userId, ps: txtPassword }), //"{sn:'" + document.getElementById('txtServerName').value + "',uid:'" + document.getElementById('txtUserId').value + "',ps:'" + document.getElementById('txtPassword').value + "'}",
            dataType: "json",
            success: function (res) {
                $.each(res.d, function (data, value) {
                    id;
                    $("#drpDataBaseList1").append($("<option></option>").val(value.DbName).html(value.DbName))
                    $("#drpDataBaseList2").append($("<option></option>").val(value.DbName).html(value.DbName))
                });
                $("#divdrp1").css("display", "block")
                $("#divdrp2").css("display", "block")
                $("#divInputSection").css("display","none")
                alert("Successfull")
           
            },
            error: function (d) {
            }
        })
    

});

function totalTabels(drp,lbl) {
    database_name = $("#" + drp).val();
    console.log(database_name)
    $.ajax({
        type: "POST",
        url: "DatabaseList.aspx/getColumnsList",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({ databaseName: database_name, sn: databaseName, uid: userId, ps: txtPassword }), //"{sn:'" + document.getElementById('txtServerName').value + "',uid:'" + document.getElementById('txtUserId').value + "',ps:'" + document.getElementById('txtPassword').value + "'}",
        dataType: "json",
        success: function (res) {
            $('#' + lbl).html(res.d)
        },
        failure: function (res) {
            console.log(res.d)
        }
    })

}
