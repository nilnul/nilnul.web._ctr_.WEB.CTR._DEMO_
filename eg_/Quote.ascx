<%@ Control Language="C#" AutoEventWireup="true" %>
<div>

	<style scoped>
		/* NOTE: you must add the closing smart quote as q's automatic quotes are added with pseudo elements */
		q.show-cite[cite]::after {
			content: "” (" attr(cite) ") ";
		}

		q.on-hover[cite]::before {
			content: "“";
		}

		q.on-hover[cite]:hover::after {
			content: "” (" attr(cite) ") ";
		}
		q.styled::before {
			content:open-quote;
		}
		q.styled::after{
			content:close-quote;
		}

		q.childed {
			quotes:'"' '"' "''" "''"  /* can recur more than two levels down*/
		}

		q.descendanted {
			quotes:'"' '"' "''" "''" '<' '>'  /* can recur more than two levels down*/
		}


		
	</style>

	<p>The officer left a note saying <q cite="https://johnrhea.com/summons" class="show-cite">You have been summoned to appear on the 4th day of January on charges of attempted reader bribery.</q></p>

	<p>The officer left a note saying <q cite="https://johnrhea.com/summons" class="on-hover">You have been summoned to appear on the 4th day of January on charges of attempted reader bribery.</q></p>

</div>
