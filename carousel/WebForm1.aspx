<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_.carousel.WebForm1" %>

<%@ Register Src="~/Carousel.ascx" TagPrefix="uc1" TagName="Carousel" %>
<%@ Register Src="~/_carousel/Js.ascx" TagPrefix="uc1" TagName="Js" %>
<%@ Register Src="~/_carousel/Css.ascx" TagPrefix="uc1" TagName="Css" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<asp:Literal ID="Literal1" runat="server"></asp:Literal>
<uc1:Css runat="server" id="Css" />
		<asp:Literal ID="Literal2" runat="server"></asp:Literal>

	
</head>
<body>
	<uc1:Carousel runat="server" id="Carousel" />
	<script>
		<uc1:Js runat="server" id="Js" />
	</script>
</body>
</html>
