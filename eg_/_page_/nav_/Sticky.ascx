<%@ Control Language="C#" AutoEventWireup="true" %>

<nav>

</nav>
<style>
	.sticky {

	}


</style>

<script>

	window.addEventListener('scroll', function () {
		var navbar = document.querySelector('nav');
		if (window.pageYOffset >= 50) {
			navbar.classList.add('sticky');
		} else {
			navbar.classList.remove('sticky');
		}
	});  


</script>
