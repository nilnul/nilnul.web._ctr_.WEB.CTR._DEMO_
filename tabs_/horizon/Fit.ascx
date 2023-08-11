<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Fit.ascx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_.tabs_.horizon.Fit" %>
<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web._ctr_.WEB._CTR_.tabs_" TagPrefix="cc2" %>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc1" %>
<%-- implemented as tab, which includes Radio, Alt --%>




<div style="height:100%;overflow:hidden;">

	<cc2:tabs__Horizon ID="Tabs__Horizon1" runat="server" />
	<div style="display:none;"><%-- cache --%>
		<div style=""><%--buttons--%>
			<span>新建工程项目</span>
<%--			<button>编辑工程项目</button>--%>
			<span>浏览工程项目</span>
<%--			<span>新建其它项目</span>--%>
<%--			<span style="display:none;">浏览其它项目</span>--%>

		</div>
		<div>
			<div>alt1</div>
			<div> alt2</div>
		</div>
	</div>
	<cc1:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</div>
