<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Fit.ascx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_.frm.Fit" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>
<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web._ctr_.WEB._CTR_" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>
<%@ Register Src="~/frm/_fit/Feed.ascx" TagPrefix="uc1" TagName="Feed" %>



<%-- this div can be inserted into a vertially aligned flex box and set flex: 1 1 auto;  --%>
<div style="overflow: hidden; height: 100%; display: flex; flex-direction: row; position: relative;">
	<%-- overflow:hidden must be present or the content will bloat the container --%>
	<cc2:Frm ID="Frm1" runat="server" />
	<div style="display: none;">
		<uc1:Feed runat="server" ID="Feed" />

	</div>

	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</div>

