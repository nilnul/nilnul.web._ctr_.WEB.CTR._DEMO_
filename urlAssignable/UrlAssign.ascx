<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UrlAssign.ascx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_.urlAssignable.UrlAssign" %>
<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web._ctr_.WEB._CTR_.filable._fil.js" TagPrefix="cc3" %>
<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web._ctr_.WEB._CTR_.urlAssignable._urlAssign.js" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web._ctr_.WEB._CTR_.ajax.cors.failMsged" TagPrefix="cc1" %>
<div data-url="<%=ResolveUrl("~") %>">
	<cc1:ajax_cors_failMsged_Fill ID="Ajax_cors_failMsged_Fill1" runat="server" />
	<cc2:urlAssignable__urlAssign_js_OnLoad ID="UrlAssignable__urlAssign_js_OnLoad1" runat="server" />
	<cc3:filable__fil_js_OnLoad ID="Filable__fil_js_OnLoad1" runat="server" />
</div>
