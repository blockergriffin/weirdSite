﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebLogin.aspx.cs" Inherits="WebLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Title</title>
    <script type="text/javascript" language="javascript">
        function SetRefresh()
        {
        // Because this code is only fired on the client via 
        // the Submit button, page refreshes (F5) won't call it
        var o = document.getElementById('__REFRESHSTAMP');
        var i = Number(o.value);
        i++;
        o.value = i;
        }
    </script>
    <style type="text/css" media="screen">
	@import url( StyleSheet.css );
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <asp:Literal id="userLabel" Text="Username:" runat="server" />
    <asp:TextBox id="userBox" runat="server" />
    <p></p>
    <asp:Literal id="passwordLabel" Text="Password:" runat="server"/>
    <asp:TextBox id="passwordBox" TextMode="Password" runat="server" />
    <p></p>
    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    </div>
    </form>
</body>
</html>
