<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabelEmailValidator.aspx.cs" Inherits="nilnul.web.ctr._web._ctr._Demo_web.LabelEmailValidator" %>

<%@ Register Assembly="nilnul.web.ctr._web._ctr" Namespace="nilnul.web.ctr._web._ctr" TagPrefix="cc1" %>


<%@ Register Assembly="nilnul.web.js._web._ctr(131127" Namespace="nilnul.web.js._web._ctr" TagPrefix="cc2" %>




<%@ Register assembly="nilnul.web.js._web._ctr(131127" namespace="nilnul.web.script.webctrl" tagprefix="cc3" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   

	<cc2:CommonScriptsControl3 ID="CommonScriptsControl2" runat="server"></cc2:CommonScriptsControl3>

    	<cc1:LabelEmailValidator ID="LabelEmailValidator1" runat="server" />

		<script>
		//	document.write(("<%=LabelEmailValidator1.ClientID%>"+"_key"));

		</script>
    
    
</body>
</html>
