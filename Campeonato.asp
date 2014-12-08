<HTML>
<HEAD>
<LINK HREF="Campeonato.css" REL="STYLESHEET" TYPE="text/CSS">
<TITLE>Campeonato</TITLE>
</HEAD>
<BODY bgcolor="#D3D3D3">
<BR><BR>

<Form name="Campeonato" method="post" action="Resultado.asp">
<hr size="2" noshade="noshade" color="black" />	<p class="titu"><font size=6>Campeonato</font></p> 		<hr size="2" noshade="noshade" color="black" /> <BR>

<%
    'Dim time(9)
	Dim i, temp, ttimes

	'For i = 0 to 9
	'	temp = "t"&(i+1)
    '    time(i) = Request.Form(temp)
	'Next
	
	For i = 0 to 9
		ttimes = "time"&(i+1)
		temp = "t"&(i+1)
       session(ttimes) = Request.Form(temp)	'ex: session("time1")
	Next
	
%>

<p class="titu">Rodada 1</p>
<p class="f1">Partida 1 - 01/05/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja1" size=2> x <input type="text" name="jb1" size=2> <% Response.Write(session("time2")) %></p></p>
<p class="f1">Partida 2 - 01/05/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time3")) %> <input type="text" name="ja2" size=2> x <input type="text" name="jb2" size=2> <% Response.Write(session("time5")) %></p></p>
<p class="f1">Partida 3 - 01/05/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time4")) %> <input type="text" name="ja3" size=2> x <input type="text" name="jb3" size=2> <% Response.Write(session("time7")) %></p></p>
<p class="f1">Partida 4 - 01/05/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time6")) %> <input type="text" name="ja4" size=2> x <input type="text" name="jb4" size=2> <% Response.Write(session("time9")) %></p></p>
<p class="f1">Partida 5 - 01/05/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time8")) %> <input type="text" name="ja5" size=2> x <input type="text" name="jb5" size=2> <% Response.Write(session("time10")) %></p></p><hr width="600">

<p class="titu">Rodada 2</p>
<p class="f1">Partida 1 - 08/05/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja6" size=2> x <input type="text" name="jb6" size=2> <% Response.Write(session("time3")) %></p></p>
<p class="f1">Partida 2 - 08/05/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja7" size=2> x <input type="text" name="jb7" size=2> <% Response.Write(session("time4")) %></p></p>
<p class="f1">Partida 3 - 08/05/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time5")) %> <input type="text" name="ja8" size=2> x <input type="text" name="jb8" size=2> <% Response.Write(session("time9")) %></p></p>
<p class="f1">Partida 4 - 08/05/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time6")) %> <input type="text" name="ja9" size=2> x <input type="text" name="jb9" size=2> <% Response.Write(session("time10")) %></p></p>
<p class="f1">Partida 5 - 08/05/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time7")) %> <input type="text" name="ja10" size=2> x <input type="text" name="jb10" size=2> <% Response.Write(session("time8")) %></p></p><hr width="600">

<p class="titu">Rodada 3</p>
<p class="f1">Partida 1 - 15/05/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja11" size=2> x <input type="text" name="jb11" size=2> <% Response.Write(session("time4")) %></p></p>
<p class="f1">Partida 2 - 15/05/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja12" size=2> x <input type="text" name="jb12" size=2> <% Response.Write(session("time5")) %></p></p>
<p class="f1">Partida 3 - 15/05/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time3")) %> <input type="text" name="ja13" size=2> x <input type="text" name="jb13" size=2> <% Response.Write(session("time6")) %></p></p>
<p class="f1">Partida 4 - 15/05/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time7")) %> <input type="text" name="ja14" size=2> x <input type="text" name="jb14" size=2> <% Response.Write(session("time10")) %></p></p>
<p class="f1">Partida 5 - 15/05/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time8")) %> <input type="text" name="ja15" size=2> x <input type="text" name="jb15" size=2> <% Response.Write(session("time9")) %></p></p><hr width="600">

<p class="titu">Rodada 4</p>
<p class="f1">Partida 1 - 22/05/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja16" size=2> x <input type="text" name="jb16" size=2> <% Response.Write(session("time5")) %></p></p>
<p class="f1">Partida 2 - 22/05/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja17" size=2> x <input type="text" name="jb17" size=2> <% Response.Write(session("time6")) %></p></p>
<p class="f1">Partida 3 - 22/05/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time3")) %> <input type="text" name="ja18" size=2> x <input type="text" name="jb18" size=2> <% Response.Write(session("time7")) %></p></p>
<p class="f1">Partida 4 - 22/05/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time4")) %> <input type="text" name="ja19" size=2> x <input type="text" name="jb19" size=2> <% Response.Write(session("time8")) %></p></p>
<p class="f1">Partida 5 - 22/05/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time9")) %> <input type="text" name="ja20" size=2> x <input type="text" name="jb20" size=2> <% Response.Write(session("time10")) %></p></p><hr width="600">

<p class="titu">Rodada 5</p>
<p class="f1">Partida 1 - 29/05/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja21" size=2> x <input type="text" name="jb21" size=2> <% Response.Write(session("time6")) %></p></p>
<p class="f1">Partida 2 - 29/05/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja22" size=2> x <input type="text" name="jb22" size=2> <% Response.Write(session("time7")) %></p></p>
<p class="f1">Partida 3 - 29/05/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time3")) %> <input type="text" name="ja23" size=2> x <input type="text" name="jb23" size=2> <% Response.Write(session("time8")) %></p></p>
<p class="f1">Partida 4 - 29/05/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time4")) %> <input type="text" name="ja24" size=2> x <input type="text" name="jb24" size=2> <% Response.Write(session("time9")) %></p></p>
<p class="f1">Partida 5 - 29/05/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time5")) %> <input type="text" name="ja25" size=2> x <input type="text" name="jb25" size=2> <% Response.Write(session("time10")) %></p></p><hr width="600">

<p class="titu">Rodada 6</p>
<p class="f1">Partida 1 - 05/06/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja26" size=2> x <input type="text" name="jb26" size=2> <% Response.Write(session("time7")) %></p></p>
<p class="f1">Partida 2 - 05/06/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja27" size=2> x <input type="text" name="jb27" size=2> <% Response.Write(session("time8")) %></p></p>
<p class="f1">Partida 3 - 05/06/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time3")) %> <input type="text" name="ja28" size=2> x <input type="text" name="jb28" size=2> <% Response.Write(session("time9")) %></p></p>
<p class="f1">Partida 4 - 05/06/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time4")) %> <input type="text" name="ja29" size=2> x <input type="text" name="jb29" size=2> <% Response.Write(session("time10")) %></p></p>
<p class="f1">Partida 5 - 05/06/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time5")) %> <input type="text" name="ja30" size=2> x <input type="text" name="jb30" size=2> <% Response.Write(session("time6")) %></p></p><hr width="600">

<p class="titu">Rodada 7</p>
<p class="f1">Partida 1 - 12/06/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja31" size=2> x <input type="text" name="jb31" size=2> <% Response.Write(session("time8")) %></p></p>
<p class="f1">Partida 2 - 12/06/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja32" size=2> x <input type="text" name="jb32" size=2> <% Response.Write(session("time9")) %></p></p>
<p class="f1">Partida 3 - 12/06/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time3")) %> <input type="text" name="ja33" size=2> x <input type="text" name="jb33" size=2> <% Response.Write(session("time10")) %></p></p>
<p class="f1">Partida 4 - 12/06/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time4")) %> <input type="text" name="ja34" size=2> x <input type="text" name="jb34" size=2> <% Response.Write(session("time5")) %></p></p>
<p class="f1">Partida 5 - 12/06/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time6")) %> <input type="text" name="ja35" size=2> x <input type="text" name="jb35" size=2> <% Response.Write(session("time7")) %></p></p><hr width="600">

<p class="titu">Rodada 8</p>
<p class="f1">Partida 1 - 19/06/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja36" size=2> x <input type="text" name="jb36" size=2> <% Response.Write(session("time9")) %></p></p>
<p class="f1">Partida 2 - 19/06/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja37" size=2> x <input type="text" name="jb37" size=2> <% Response.Write(session("time10")) %></p></p>
<p class="f1">Partida 3 - 19/06/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time3")) %> <input type="text" name="ja38" size=2> x <input type="text" name="jb38" size=2> <% Response.Write(session("time4")) %></p></p>
<p class="f1">Partida 4 - 19/06/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time5")) %> <input type="text" name="ja39" size=2> x <input type="text" name="jb39" size=2> <% Response.Write(session("time7")) %></p></p>
<p class="f1">Partida 5 - 19/06/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time6")) %> <input type="text" name="ja40" size=2> x <input type="text" name="jb40" size=2> <% Response.Write(session("time8")) %></p></p><hr width="600">

<p class="titu">Rodada 9</p>
<p class="f1">Partida 1 - 26/05/2011 - 16:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time1")) %> <input type="text" name="ja41" size=2> x <input type="text" name="jb41" size=2> <% Response.Write(session("time10")) %></p></p>
<p class="f1">Partida 2 - 26/05/2011 - 16:00h - Palestra Itália</p>	<p class="f2"><% Response.Write(session("time2")) %> <input type="text" name="ja42" size=2> x <input type="text" name="jb42" size=2> <% Response.Write(session("time3")) %></p></p>
<p class="f1">Partida 3 - 26/05/2011 - 16:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time4")) %> <input type="text" name="ja43" size=2> x <input type="text" name="jb43" size=2> <% Response.Write(session("time6")) %></p></p>
<p class="f1">Partida 4 - 26/05/2011 - 18:00h - Morumbi</p>	<p class="f2"><% Response.Write(session("time5")) %> <input type="text" name="ja44" size=2> x <input type="text" name="jb44" size=2> <% Response.Write(session("time8")) %></p></p>
<p class="f1">Partida 5 - 26/05/2011 - 18:00h - Pacaembu</p>	<p class="f2"><% Response.Write(session("time7")) %> <input type="text" name="ja45" size=2> x <input type="text" name="jb45" size=2> <% Response.Write(session("time9")) %></p></p><hr width="600">


<input type="submit" value="Enviar">
<input type="Reset" value="Limpar">
</FORM>
</BODY>
</HTML>