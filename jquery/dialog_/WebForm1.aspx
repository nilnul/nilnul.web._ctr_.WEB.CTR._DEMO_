<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Jquery.Master" AutoEventWireup="true"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
		    #modal-background {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: white;
        opacity: .50;
        -webkit-opacity: .5;
        -moz-opacity: .5;
        filter: alpha(opacity=50);
        z-index: 1000;
    }
    
    #modal-content {
        background-color: white;
        border-radius: 10px;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        box-shadow: 0 0 20px 0 #222;
        -webkit-box-shadow: 0 0 20px 0 #222;
        -moz-box-shadow: 0 0 20px 0 #222;
        display: none;
        height: 240px;
        left: 50%;
        margin: -120px 0 0 -160px;
        padding: 10px;
        position: absolute;
        top: 50%;
        width: 320px;
        z-index: 1000;
    }

    #modal-background.active, #modal-content.active {
        display: block;
    }
	</style>
	<h1>Bacon ipsum dolor sit amet</h1>

	<p>Magna adipisicing eu, pig ex pariatur non biltong nisi consequat do exercitation. Biltong exercitation consequat aute. Excepteur velit ribeye, et salami pariatur sed consequat enim ham. Tenderloin consequat et, in pastrami aute meatloaf beef spare ribs tri-tip beef ribs sed ut jerky strip steak. Fugiat turkey shank frankfurter pork loin pastrami.</p>

	<button id="modal-launcher">Launch Modal Window</button>

	<div id="modal-background"></div>
	<div id="modal-content">
		<button id="modal-close">Close Modal Window</button>
	</div>
	<script>
		$(function () {
			$("#modal-launcher, #modal-background, #modal-close").click(function () {
				$("#modal-content,#modal-background").toggleClass("active");
			});
		});
	</script>
</asp:Content>
