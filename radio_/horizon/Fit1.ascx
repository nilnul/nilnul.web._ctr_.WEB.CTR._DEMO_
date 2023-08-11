<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Fit1.ascx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_.radio_.horizon.Fit1" %>
<%@ OutputCache Duration="3600000" VaryByParam="none" Shared="true" %>
<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web._ctr_.WEB._CTR_.radio_" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>


<%-- this div can be inserted into a vertially aligned flex box and set flex: 1 1 auto;  --%>
<div style="overflow: hidden; height: 100%; display: flex; flex-direction: row; justify-content:right; position: relative;">
	<%-- overflow:hidden must be present or the content will bloat the container --%>

	<cc2:radio__Horizon ID="Radio__Horizon1" runat="server" />
	<div style="display: none;">
		<%-- cache --%>
		<%--buttons--%>
		<span>新建</span>
		<%--			<button>编辑工程项目</button>--%>
		<span>浏览</span>
		<%--			<span>新建其它项目</span>--%>
		<%--			<span style="display:none;">浏览其它项目</span>--%>
	</div>
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</div>

