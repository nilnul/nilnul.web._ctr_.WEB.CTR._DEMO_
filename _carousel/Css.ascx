﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Css.ascx.cs" Inherits="nilnul.web._ctr_.WEB.CTR._DEMO_._carousel.Css" %>
<% #if (false) %>
<style>
	<% #endif %>

@charset "UTF-8";
.carousel {
  display: block;
  font-size: 0;
  border-radius: 8px;
  padding: 8px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
  background: white;
  transform: translateZ(0);
  height: 200px;
  -webkit-overflow-scrolling: touch;
  /* for tablets */
}
.touch .carousel {
  overflow: auto;
}
.carousel[data-at*=left] > .wrap::before {
  opacity: 1;
  text-indent: -50px;
}
.carousel[data-at*=right] > .wrap::after {
  opacity: 1;
  text-indent: -50px;
}
.carousel::after {
  content: "";
  pointer-events: none;
  position: absolute;
  z-index: 4;
  bottom: -4px;
  left: 0;
  background: #D82B6A;
  height: 4px;
  border-radius: 4px;
  opacity: 0;
  width: var(--scrollWidth, 0);
  left: var(--scrollLleft, 0);
  transition: opacity 0.2s, bottom 0.2s;
}
.carousel:hover::after {
  opacity: 1;
  bottom: -10px;
}
.carousel > .wrap {
  overflow: hidden;
  border-radius: 4px;
}
.carousel > .wrap::before, .carousel > .wrap::after {
  content: "‹";
  opacity: 0;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  z-index: 2;
  width: 50px;
  font-size: 80px;
  text-indent: -30px;
  line-height: 200px;
  font-family: monospace;
  color: #555;
  font-weight: bold;
  border-radius: 8px;
  pointer-events: none;
  transition: 0.2s ease-out;
  background: linear-gradient(to right, white 20%, transparent);
}
.carousel > .wrap::after {
  transform: rotate(180deg);
  left: auto;
  right: 0;
}
.carousel > .wrap > ul {
  list-style: none;
  white-space: nowrap;
  height: 200px;
}
.carousel > .wrap > ul > li {
  display: inline-block;
  vertical-align: middle;
  height: 100%;
  margin: 0 0 0 5px;
  position: relative;
  overflow: hidden;
  transition: 0.25s ease-out;
}
.carousel > .wrap > ul > li:first-child {
  margin: 0;
}
.carousel > .wrap > ul > li > img {
  display: block;
  height: 100%;
  margin: auto;
  vertical-align: bottom;
  position: relative;
  z-index: 1;
  transition: 1s ease;
}

body {
  background: #EEE;
}

.carousel {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 50%;
  max-width: 900px;
  min-width: 550px;
  margin: auto;
}

	<% #if (false) %>
</style>
<% #endif %>
