<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Debug="true" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

    <title>Weird</title>
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
  <header>
    <div class="nav">
      <ul>
        <li class="home"><a href="Default.aspx" class="active">home</a></li>
        <li class="music"><a href="MusicPage.aspx">music</a></li>
        <li class="podcast"><a href="PodcastPage">podcast</a></li>
        <li class="video"><a href="VideoPage">video</a></li>
        <li class="about"><a href="#">about</a></li>          
        <li class="login"><a href="WebLogin.aspx">login</a></li>
      </ul>
    </div>
  </header>
  <div class="sidebar">
    <ul class="event-list">
      <li class="sidebar-header">Upcoming Events</li>
      <br>
      <li class="event">Event
         <img class="event-img" src="PhotoGallery/DepartingPoloField.jpg" />
      </li>
      <li class="event">'nother event
          <img class="event-img" src="PhotoGallery/GrassLanding.jpg" />
      </li>
      <li class="event">and one more
          <img class="event-img" src="PhotoGallery/OverEngland.jpg" />
      </li>
  </div>
    <div class="main-content">
       <p>weird weird weird farts</p>
    </div>
</body>
</html>