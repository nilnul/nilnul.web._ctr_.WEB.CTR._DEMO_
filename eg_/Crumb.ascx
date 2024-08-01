<%@ Control Language="C#" AutoEventWireup="true" %>

<style>
	nav {
		border-bottom: 1px solid black;
	}

	.crumbs ol {
		list-style-type: none;
		padding-left: 0;
	}

	.crumb {
		display: inline-block;
	}

		.crumb a::after {
			display: inline-block;
			color: #000;
			content: '>';
			font-size: 80%;
			font-weight: bold;
			padding: 0 3px;
		}
</style>
<nav class="crumbs">
	<ol>
		<li class="crumb"><a href="#">Bikes</a></li>
		<li class="crumb"><a href="#">BMX</a></li>
		<li class="crumb">Jump Bike 3000</li>
	</ol>
</nav>

<h1>Jump Bike 3000</h1>
<p>
	This BMX bike is a solid step into the pro world. It looks as legit as it rides and is built to polish your skills.
</p>
