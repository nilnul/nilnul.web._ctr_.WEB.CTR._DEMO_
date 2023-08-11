<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_.carousel_.scrollable.WebForm1" %>

<%@ Register Src="~/carousel_/_scrollable/Css.ascx" TagPrefix="uc1" TagName="Css" %>
<%@ Register Src="~/carousel_/Scrollable.ascx" TagPrefix="uc1" TagName="Scrollable" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<asp:Literal ID="Literal1" runat="server"></asp:Literal>
	<uc1:Css runat="server" ID="Css" />
	<asp:Literal ID="Literal2" runat="server"></asp:Literal>


</head>
<body>

	<uc1:Scrollable runat="server" ID="Scrollable" />
</body>
</html>
