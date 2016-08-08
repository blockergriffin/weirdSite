<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewPhotos.aspx.cs" Inherits="ViewPhotos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Photos</title>
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
    <form id="form1" runat="server">
    <div>
    <h1>Photo Gallery</h1>
            <%  DisplayRecords(); %>
        <div class="spacer">
          &nbsp;
        </div>
    </div>
    </form>
</body>
</html>
