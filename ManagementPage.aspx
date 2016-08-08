<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagementPage.aspx.cs" Inherits="ManagementPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Management</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:HyperLink id ="musicLink" NavigateUrl ="MusicPage.aspx" Text ="Music" runat ="server" />
    <p></p>
    <asp:HyperLink id ="photosLink" NavigateUrl ="PhotosPage.aspx" Text="Photos" runat="server" />
    <p></p>
    <asp:HyperLink id ="graphicLink" NavigateUrl ="GraphicPage.aspx" Text="Graphic Design" runat="server" />
    <p></p>
    <asp:HyperLink id ="videoLink" NavigateUrl ="VideoPage.aspx" Text="Videos" runat="server" />
    <p></p>
    <asp:HyperLink id ="podcastLink" NavigateUrl ="PodcastPage.aspx" Text="Podcasts" runat="server" />
    </div>
    </form>
</body>
</html>
