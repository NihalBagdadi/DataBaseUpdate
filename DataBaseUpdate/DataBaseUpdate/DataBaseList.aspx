<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBaseList.aspx.cs" Inherits="DataBaseUpdate.DataBaseList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divMain">
            <div id="divInputSection">
                <div id="divServername">
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
                    <input type="button" value="Submit"/>
                </div>
                <br />
                
            </div>
            <div>
                <asp:DropDownList ID="drpDataBaseList1" runat="server"></asp:DropDownList>
            </div>
        </div>
    </form>
</body>
</html>
