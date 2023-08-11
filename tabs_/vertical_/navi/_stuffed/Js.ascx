<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul.web._ctr_.WEB._CTR_._Demo_web.tabs_.vertical_.navi._stuffed.Js" %>


<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web.ctr._web._ctr.radio_" TagPrefix="cc3" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>

<%@ Register Assembly="nilnul.web._ctr_.WEB._CTR_" Namespace="nilnul.web.ctr._web._ctr.tabs_.vertical_" TagPrefix="cc1" %>

<div>

	<cc1:tabs_vertical__Navi ID="Tabs_vertical__Navi1" runat="server" />
	<div>
		<div>
			<button>1</button>
			<button>2</button>
		</div>
		<div>
			<div>a</div>
			<div>b</div>
		</div>
	</div>
	<cc2:OnLoadScript ID="OnLoadScript1" runat="server" />
</div>
