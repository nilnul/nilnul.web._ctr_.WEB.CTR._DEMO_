<%@ Page Title="" Language="C#" MasterPageFile="~/_master/JqueryUi_NilNul.Master" AutoEventWireup="true" %>

<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web.ctr._web._ctr" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div id="msgBoxer" runat="server">

		<cc1:Msg ID="Msg1" runat="server" />
		<script>
			(function (boxer) {

				var msg = boxer.firstElementChild
				;
				msg.err("error msg");

			}(
				document.getElementById("<%=msgBoxer.ClientID%>")
			));
		</script>
	</div>


</asp:Content>
