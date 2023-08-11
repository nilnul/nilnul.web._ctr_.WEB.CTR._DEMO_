<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Paged.Master" AutoEventWireup="true"  %>

<%@ Register Src="~/time/bound_/day_/LeNow.ascx" TagPrefix="uc1" TagName="LeNow" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:LeNow runat="server" ID="LeNow" />
</asp:Content>
