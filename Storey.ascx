<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Storey.ascx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_.Storey" %>
<%-- 
    how you store things: stack one upon another


    supposing along the z-index, we have many planes with different z-index. the bigger the z-index is, the nearer it is to the viewer.

    z-index =0 means the tier is ground. z-index <0 means it's underground.

    each tier is a plane, that is, infinite along x-axis and y-axis.
    each tier can be zoomed. and the zooming ratio might be different from one tier to another.
    tier can be of opacity between [0,1]. opacity 0 means fully transparent, totaly hidden from viewer. tier can be of opacity 1, covering all tiers underneath.

    the click cannot be captured by any underneath tiers; but underneath tiers can be viewed. In all, tiers has visual effect(mostly operated by Css), but not behavior (mostly operated by Js) effect.

    the coordinates of each tier can be the same, or different independently.

    --%>


