<%@ Page Title="" Language="C#" MasterPageFile="~/_master/JqueryUi_NilNul.Master" AutoEventWireup="true" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>

<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web.ctr._web._ctr" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



		<cc1:PasswordRegexErr ID="PasswordRegexErr1" runat="server" />

		<cc2:ClientIdHolder ID="ClientIdHolder1" runat="server">
		</cc2:ClientIdHolder>
		<script id="<%=ClientIdHolder1.ClientID %>">
			var regexErr = document.getElementById("<%=ClientIdHolder1.ClientID%>").previousElementSibling;
			regexErr.regexStrOp("^a[bc]$");
			regexErr.errYesMsgOp("must be a[bc]");


		</script>


</asp:Content>
