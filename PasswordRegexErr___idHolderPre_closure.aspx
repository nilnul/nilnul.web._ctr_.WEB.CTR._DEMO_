<%@ Page Title="" Language="C#" MasterPageFile="~/_master/JqueryUi_NilNul.Master" AutoEventWireup="true" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>

<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web.ctr._web._ctr" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



	<div id="msgBoxer" runat="server">
		<cc1:PasswordRegexErr ID="PasswordRegexErr1" runat="server" />

		<cc2:ClientIdHolder ID="ClientIdHolder1" runat="server">
		</cc2:ClientIdHolder>
		<script id="<%=ClientIdHolder1.ClientID %>">
			(function (password1) {
				password1.regexStrOp("^.{3,9}$");
				password1.errYesMsgOp("请输入密码");

			})(
				document.getElementById("<%=ClientIdHolder1.ClientID%>").previousElementSibling
			);
		</script>
	</div>


</asp:Content>
