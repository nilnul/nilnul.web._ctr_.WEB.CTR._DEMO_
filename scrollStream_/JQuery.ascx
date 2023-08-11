<%@ Control Language="C#" AutoEventWireup="true" %>
<p>
	Usage – HTML
</p>
<ul id="posts">
	<li>
		<article>content<br />
		</article>
	</li>
	<li>
	…

	</li>

</ul>

<p id="loading">
	<img src="images/loading.gif" alt="Loading…" />
</p>

<p>
	Usage – 
</p>
<p>
	&nbsp;
</p>

<script>
	//jQuery
	$(document).ready(function () {
		var win = $(window);

		// Each time the user scrolls
		win.scroll(function () {
			// End of the document reached?
			if ($(document).height() - win.height() == win.scrollTop()) {
				$('#loading').show();

				$.ajax({
					url: 'get-post.php',
					dataType: 'html',
					success: function (html) {
						$('#posts').append(html);
						$('#loading').hide();
					}
				});
			}
		});
	});
</script>
