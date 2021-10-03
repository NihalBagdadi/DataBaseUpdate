<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBaseList.aspx.cs" Inherits="DataBaseUpdate.DataBaseList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Home</title>
    <link href="BootstrapFiles/CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="jquery/jquery-3.6.0.js"></script>
    <script src="jquery/jquery-3.6.0.min.js"></script>
    <script src="Scripts/AjaxMethods.js"></script>
  
</head>
<body>
    <form id="form1" runat="server">
        <div id="divMain" class="form-control" >
            <div id="divInputSection" class="col-1">
                <div id="divServername" class="m-0">
                    <span>Server Name</span>
                    <asp:TextBox ID="txtServerName" runat="server"></asp:TextBox>
                </div>
                <br />
                <div id="divUserId">
                    <span>User Id</span>
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                </div>
                <br />
                <div id="divPassword">
                    <span>Password</span>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </div>
                <br />
                   <div id="divSubmit">
                    <input type="button" value="Submit" id="btnSubmit" onclick="getDatabaseList()"/>
                </div>
                <br />
                
            </div>
            <div runat="server" id="divdrp">
                <asp:DropDownList ID="drpDataBaseList1" runat="server"></asp:DropDownList>
            </div>
        </div>
    </form>
   
</body>
</html>
