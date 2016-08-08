<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotosPage.aspx.cs" Inherits="PhotosPage" %>

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
    <form id="form1" enctype="multipart/form-data" onsubmit="javascript:SetRefresh();" runat="server">
    <div>
        <h1>Photo Gallery</h1>
            <%  DisplayRecords(); %>
        <div class="spacer">
          &nbsp;
        </div>
        <p>
            Upload an image...<br />
            <asp:fileupload ID="UploadFile" runat="server"></asp:fileupload><br />
            <asp:Button ID="Upload" runat="server" Text="Upload" OnClick="Button1_Click" />&nbsp;
            <asp:HiddenField ID="__REFRESHSTAMP" runat="server" />
        </p>
        <p>
            <font color="red">
            <asp:Label ID="Message" runat="server"></asp:Label></font>
            
        </p>
    </div>
    </form>
</body>
</html>
