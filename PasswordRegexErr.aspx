<%@ Page Title="" Language="C#" MasterPageFile="~/_master/JqueryUi_NilNul.Master" AutoEventWireup="true" %>

<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web.ctr._web._ctr" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



	<div id="msgBoxer" runat="server">
		<cc1:PasswordRegexErr ID="PasswordRegexErr1" runat="server" />

		<script>
			(function (boxer) {

				var regexErr = boxer.firstElementChild
				;
				regexErr.regexStrOp("^b[bc]$");
				regexErr.errYesMsgOp("must be b[bc]");


			}(
				document.getElementById("<%=msgBoxer.ClientID%>")
			));
		</script>
	</div>


</asp:Content>
