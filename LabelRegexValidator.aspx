<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabelRegexValidator.aspx.cs" Inherits="nilnul.web.ctr._web._ctr._Demo_web.LabelRegexValidator" %>

<%@ Register assembly="nilnul.web.ctrl.webCtrl(130116" namespace="nilnul.web.ctrl.webCtrl" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 

	<cc1:LabelRegexValidator ID="LabelRegexValidator1" runat="server" regex="~!@#$%^&*()_+-=`[]\|}{:\&quot;;'? /,./ /" regex2="=,&c=d/ab$"  />
   
</body>
</html>
