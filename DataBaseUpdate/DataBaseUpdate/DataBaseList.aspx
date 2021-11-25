<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBaseList.aspx.cs" Inherits="DataBaseUpdate.DataBaseList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Home</title>
    <link href="BootstrapFiles/CSS/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>


</head>
<body>
    <form id="form1" runat="server">
        <div id="divMain">
            <div id="divInputSection" class="modal-dialog modal-dialog-centered" >
                <div class="modal-content">
                    <div class="modal-body">
                    <div id="divServername" class="m-0">
                    <span>Server Name</span>
                    <asp:TextBox ID="txtServerName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div id="divUserId">
                    <span>User Id</span>
                    <asp:TextBox ID="txtUserId" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div id="divPassword">
                    <span>Password</span>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                            <div id="divSubmit" class="ml-5">
                    <input type="button" value="Submit" id="btnSubmit" class="mt-3 btn btn-success " />
                </div>
                        </div>
                    </div>
 
                

            </div>
        
            <div id="divdrp1"  style="display:none" class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                       <div   class="input-group">
                <select id="drpDataBaseList1" class="custom-select"  onchange="totalTabels('drpDataBaseList1','lbltotalTables1')">
                    <option value="0">Choose Database</option>
                </select>
             
                <%--<asp:DropDownList ID="drpDataBaseList1" runat="server"></asp:DropDownList>--%>
            </div>
                        <div>
                            Total Tables
                            <h6 id="lbltotalTables1"></h6>
                        </div>
                        </div>
                </div>
         
                </div>

              <div id="divdrp2"  style="display:none" class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                       <div   class="input-group">
                <select id="drpDataBaseList2" class="custom-select"  onchange="totalTabels('drpDataBaseList2','lbltotalTables2')">
                    <option value="0">Choose Database</option>
                </select>
             
                <%--<asp:DropDownList ID="drpDataBaseList1" runat="server"></asp:DropDownList>--%>
            </div>
                        <div>
                            Total Tables
                            <h6 id="lbltotalTables2"></h6>
                        </div>
                        </div>
                </div>
         
                </div>

        </div>
    </form>
    <script src="jquery/jquery-3.6.0.js"></script>
    <script src="jquery/jquery-3.6.0.min.js"></script>
    <script src="Scripts/AjaxMethods.js"></script>
</body>
</html>
