
$("#btnSubmit").click(function () {
    let id = 0;
    event.preventDefault();
        alert("ok")
        $.ajax({
            type: "POST",
            url: "DatabaseList.aspx/getDatabaseList",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ sn: document.getElementById('txtServerName').value, uid: document.getElementById('txtUserId').value, ps: document.getElementById('txtPassword').value }), //"{sn:'" + document.getElementById('txtServerName').value + "',uid:'" + document.getElementById('txtUserId').value + "',ps:'" + document.getElementById('txtPassword').value + "'}",
            dataType: "json",
            success: function (res) {
                $.each(res.d, function (data, value) {
                    id;
                    $("#drpDataBaseList1").append($("<option></option>").val(value.dbid).html(value.DbName))
                   
                });
                $("#divdrp").css("display","block")
                alert("Successfull")
           
            },
            error: function (d) {
            }
        })
    

});
