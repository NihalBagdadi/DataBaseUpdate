
   function getDatabaseList() {
        alert("ok")
        $.ajax({
            type: "POST",
            url: "DatabaseList.aspx/getDatabaseList",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ sn: document.getElementById('txtServerName').value, uid: document.getElementById('txtUserId').value,ps:document.getElementById('txtPassword').value  }), //"{sn:'" + document.getElementById('txtServerName').value + "',uid:'" + document.getElementById('txtUserId').value + "',ps:'" + document.getElementById('txtPassword').value + "'}",
            dataType: "json",
            success: function () {
                alert("Successfull")
            },
            error: function (d) {
            }
        })
    }
