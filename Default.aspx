<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Debug="true" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Photo Gallery</title>
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
    <h1>About</h1>
    <p>About stuff goes here. Make this shit look good.</p>
    <form id="form1" enctype="multipart/form-data" onsubmit="javascript:SetRefresh();" runat="server">
    <div>
        <asp:HyperLink id ="hyperlink1" NavigateUrl ="WebLogin.aspx" Text ="Login" runat ="server" />
        <p></p>
        <asp:HyperLink id ="hyperlink2" NavigateUrl ="ViewPhotos.aspx" Text="Photos" runat ="server" />
    </div>
    </form>
</body>
</html>