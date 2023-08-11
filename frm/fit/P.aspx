<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Paged.Master" AutoEventWireup="true"  %>
<%@ Register src="../Fit.ascx" tagname="Fit" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<uc1:Fit ID="Fit1" runat="server" />
</asp:Content>
