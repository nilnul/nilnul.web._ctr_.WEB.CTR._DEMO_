<%@ Page Title="" Language="C#" MasterPageFile="~/_master/JqueryUi.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<%--
		You're correct, .position() is the way to go here, like this:
​$("#dialog").dialog()
            .parent() //remember .dialog() wraps the content in another <div>
            .position({ my: 'center', at: 'center', of: '#parent' });
  //or just .position({ of: '#parent' });

​ In the above #parent it the parent element selector, you can give it a try here. You want the my and at properties to be center so they're centered op top of one another, then the of selector is the parent selector you want it centered in.

I specified all relevant options for illustration, but since center is the default for my and at, you can specify just the of like I have in the commented line above.

		
		--%>
	<style>
		#parent {
			border: solid 1px #ddd;
			width: 500px;
			height: 400px;
		}
	</style>
	<div id="parent">
	</div>

	<div id="dialog">Test Content</div>
	<script>
		$("#dialog").dialog({ width: 200, height: 100 }).parent().position({
			my: 'left', at: 'left center', of: '#parent'
		});

	</script>
</asp:Content>
