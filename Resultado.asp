<%

    Dim i, j
    Dim min, aux
    Dim vtime1, vtime2 
    Dim golt1, golt2
	Dim igolt1, igolt2
    Dim njogo
   ''' Dim pontos As Integer                '45: número de partidas, 9:rodadas e 5:partidas por rodada
	
    Dim time1(8), time2(8), time3(8), time4(8), time5(8), time6(8), time7(8), time8(8), time9(8), time10(8)     'o valor do vetor equivale aos índices do time nos jogos	
    Dim qtde1(45), qtde2(45)
	Dim tvit1(45), tvit2(45)
	Dim tder1(45), tder2(45)
	Dim tgols1(45), tgols2(45)
	Dim tglev1(45), tglev2(45)
	Dim times(9)
    Dim qtde(9), tvit(9), tder(9), tgols(9), tglev(9), pts(9), emp(9), salg(9)
    Dim clas(9)
	
    For i=0 To 8
        For j=1 To 5
            'i2=IntToStr(i)
            njogo=5 * i + j                    'Numero do jogo atual= rodadas*5 jogos+jogo da rodada

            vtime1="ja" & njogo    'ex: ja1			'Monta os times a serem trabalhados
            vtime2="jb" & njogo    'ex: jb1
            
            golt1=Request.Form(vtime1)       'Pega os gols t1 e t2
            golt2=Request.Form(vtime2)
            igolt1 = Val(golt1)
            igolt2 = Val(golt2)                  'Cuidar, se não criar outra (fica 1 string e outra int pra receber a conversão)
            If (golt1 <> Nothing) Or (golt2 <> Nothing) Then
                qtde1(njogo) = 1
                qtde2(njogo) = 1
            End If
            tgols1(njogo) = igolt1       'Marca gols pro 
            tgols2(njogo) = igolt2
            tglev1(njogo) = igolt2       'Marca gols sofridos
            tglev2(njogo) = igolt1
            
            '	-----------	  "	    "-----------"	"			
            If (golt1 > golt2) Then           'Distribui Pontos
                tvit1(njogo) = 1
                tder2(njogo) = 1
				
            Else
                If (golt1 < golt2) Then
                    tvit2(njogo) = 1
                    tder1(njogo) = 1
                End If
                'arrumar empate
            End If
        Next

    Next
    Response.Write("<BR><BR>")
	
	
	
	
    time1(0)=qtde1(1) : time1(1)=qtde1(6) : time1(2)=qtde1(11) : time1(3)=qtde1(16) : time1(4)=qtde1(21) : time1(5)=qtde1(26) : time1(6)=qtde1(31) : time1(7)=qtde1(36) : time1(8)=qtde1(41)
    time2(0)=qtde2(1) : time2(1)=qtde1(7) : time2(2)=qtde1(12) : time2(3)=qtde1(17) : time2(4)=qtde1(22) : time2(5)=qtde1(27) : time2(6)=qtde1(32) : time2(7)=qtde1(37) : time2(8)=qtde1(42)
    time3(0)=qtde1(2) : time3(1)=qtde2(6) : time3(2)=qtde1(13) : time3(3)=qtde1(18) : time3(4)=qtde1(23) : time3(5)=qtde1(28) : time3(6)=qtde1(33) : time3(7)=qtde1(38) : time3(8)=qtde2(42)
    time4(0)=qtde1(3) : time4(1)=qtde2(7) : time4(2)=qtde2(11) : time4(3)=qtde1(19) : time4(4)=qtde1(24) : time4(5)=qtde1(29) : time4(6)=qtde1(34) : time4(7)=qtde2(38) : time4(8)=qtde1(43)
    time5(0)=qtde2(2) : time5(1)=qtde1(8) : time5(2)=qtde2(12) : time5(3)=qtde2(16) : time5(4)=qtde1(25) : time5(5)=qtde1(30) : time5(6)=qtde2(34) : time5(7)=qtde1(39) : time5(8)=qtde1(44)
    time6(0)=qtde1(4) : time6(1)=qtde1(9) : time6(2)=qtde2(13) : time6(3)=qtde2(17) : time6(4)=qtde2(21) : time6(5)=qtde2(30) : time6(6)=qtde1(35) : time6(7)=qtde1(40) : time6(8)=qtde2(43)
    time7(0)=qtde2(3) : time7(1)=qtde1(10) : time7(2)=qtde1(14) : time7(3)=qtde2(18) : time7(4)=qtde2(22) : time7(5)=qtde2(26) : time7(6)=qtde2(35) : time7(7)=qtde2(39) : time7(8)=qtde1(45)
    time8(0)=qtde1(5) : time8(1)=qtde2(10) : time8(2)=qtde1(15) : time8(3)=qtde2(19) : time8(4)=qtde2(23) : time8(5)=qtde2(27) : time8(6)=qtde2(31) : time8(7)=qtde2(40) : time8(8)=qtde2(44)
    time9(0)=qtde2(4) : time9(1)=qtde2(8) : time9(2)=qtde2(15) : time9(3)=qtde1(20) : time9(4)=qtde2(24) : time9(5)=qtde2(28) : time9(6)=qtde2(32) : time9(7)=qtde2(36) : time9(8)=qtde2(45)
    time10(0)=qtde2(5) : time10(1)=qtde2(9) : time10(2)=qtde2(14) : time10(3)=qtde2(20) : time10(4)=qtde2(25) : time10(5)=qtde2(29) : time10(6)=qtde2(33) : time10(7)=qtde2(37) : time10(8)=qtde2(41)
    For i=0 To 8          'qtde de partidas jogadas pelo time 
        qtde(0)=qtde(0) + time1(i) : qtde(1)=qtde(1) + time2(i) : qtde(2)=qtde(2) + time3(i) : qtde(3)=qtde(3) + time4(i) : qtde(4)=qtde(4) + time5(i)
        qtde(5)=qtde(5) + time6(i) : qtde(6)=qtde(6) + time7(i) : qtde(7)=qtde(7) + time8(i) : qtde(8)=qtde(8) + time9(i) : qtde(9)=qtde(9) + time10(i)
    Next
		
    time1(0)=tvit1(1) : time1(1)=tvit1(6) : time1(2)=tvit1(11) : time1(3)=tvit1(16) : time1(4)=tvit1(21) : time1(5)=tvit1(26) : time1(6)=tvit1(31) : time1(7)=tvit1(36) : time1(8)=tvit1(41)
    time2(0)=tvit2(1) : time2(1)=tvit1(7) : time2(2)=tvit1(12) : time2(3)=tvit1(17) : time2(4)=tvit1(22) : time2(5)=tvit1(27) : time2(6)=tvit1(32) : time2(7)=tvit1(37) : time2(8)=tvit1(42)
    time3(0)=tvit1(2) : time3(1)=tvit2(6) : time3(2)=tvit1(13) : time3(3)=tvit1(18) : time3(4)=tvit1(23) : time3(5)=tvit1(28) : time3(6)=tvit1(33) : time3(7)=tvit1(38) : time3(8)=tvit2(42)
    time4(0)=tvit1(3) : time4(1)=tvit2(7) : time4(2)=tvit2(11) : time4(3)=tvit1(19) : time4(4)=tvit1(24) : time4(5)=tvit1(29) : time4(6)=tvit1(34) : time4(7)=tvit2(38) : time4(8)=tvit1(43)
    time5(0)=tvit2(2) : time5(1)=tvit1(8) : time5(2)=tvit2(12) : time5(3)=tvit2(16) : time5(4)=tvit1(25) : time5(5)=tvit1(30) : time5(6)=tvit2(34) : time5(7)=tvit1(39) : time5(8)=tvit1(44)
    time6(0)=tvit1(4) : time6(1)=tvit1(9) : time6(2)=tvit2(13) : time6(3)=tvit2(17) : time6(4)=tvit2(21) : time6(5)=tvit2(30) : time6(6)=tvit1(35) : time6(7)=tvit1(40) : time6(8)=tvit2(43)
    time7(0)=tvit2(3) : time7(1)=tvit1(10) : time7(2)=tvit1(14) : time7(3)=tvit2(18) : time7(4)=tvit2(22) : time7(5)=tvit2(26) : time7(6)=tvit2(35) : time7(7)=tvit2(39) : time7(8)=tvit1(45)
    time8(0)=tvit1(5) : time8(1)=tvit2(10) : time8(2)=tvit1(15) : time8(3)=tvit2(19) : time8(4)=tvit2(23) : time8(5)=tvit2(27) : time8(6)=tvit2(31) : time8(7)=tvit2(40) : time8(8)=tvit2(44)
    time9(0)=tvit2(4) : time9(1)=tvit2(8) : time9(2)=tvit2(15) : time9(3)=tvit1(20) : time9(4)=tvit2(24) : time9(5)=tvit2(28) : time9(6)=tvit2(32) : time9(7)=tvit2(36) : time9(8)=tvit2(45)
    time10(0)=tvit2(5) : time10(1)=tvit2(9) : time10(2)=tvit2(14) : time10(3)=tvit2(20) : time10(4)=tvit2(25) : time10(5)=tvit2(29) : time10(6)=tvit2(33) : time10(7)=tvit2(37) : time10(8)=tvit2(41)
    For i=0 To 8        'qtde de vitórias do time 
        tvit(0)=tvit(0) + time1(i) : tvit(1)=tvit(1) + time2(i) : tvit(2)=tvit(2) + time3(i) : tvit(3)=tvit(3) + time4(i) : tvit(4)=tvit(4) + time5(i)
        tvit(5)=tvit(5) + time6(i) : tvit(6)=tvit(6) + time7(i) : tvit(7)=tvit(7) + time8(i) : tvit(8)=tvit(8) + time9(i) : tvit(9)=tvit(9) + time10(i)
    Next

    time1(0)=tder1(1) : time1(1)=tder1(6) : time1(2)=tder1(11) : time1(3)=tder1(16) : time1(4)=tder1(21) : time1(5)=tder1(26) : time1(6)=tder1(31) : time1(7)=tder1(36) : time1(8)=tder1(41)
    time2(0)=tder2(1) : time2(1)=tder1(7) : time2(2)=tder1(12) : time2(3)=tder1(17) : time2(4)=tder1(22) : time2(5)=tder1(27) : time2(6)=tder1(32) : time2(7)=tder1(37) : time2(8)=tder1(42)
    time3(0)=tder1(2) : time3(1)=tder2(6) : time3(2)=tder1(13) : time3(3)=tder1(18) : time3(4)=tder1(23) : time3(5)=tder1(28) : time3(6)=tder1(33) : time3(7)=tder1(38) : time3(8)=tder2(42)
    time4(0)=tder1(3) : time4(1)=tder2(7) : time4(2)=tder2(11) : time4(3)=tder1(19) : time4(4)=tder1(24) : time4(5)=tder1(29) : time4(6)=tder1(34) : time4(7)=tder2(38) : time4(8)=tder1(43)
    time5(0)=tder2(2) : time5(1)=tder1(8) : time5(2)=tder2(12) : time5(3)=tder2(16) : time5(4)=tder1(25) : time5(5)=tder1(30) : time5(6)=tder2(34) : time5(7)=tder1(39) : time5(8)=tder1(44)
    time6(0)=tder1(4) : time6(1)=tder1(9) : time6(2)=tder2(13) : time6(3)=tder2(17) : time6(4)=tder2(21) : time6(5)=tder2(30) : time6(6)=tder1(35) : time6(7)=tder1(40) : time6(8)=tder2(43)
    time7(0)=tder2(3) : time7(1)=tder1(10) : time7(2)=tder1(14) : time7(3)=tder2(18) : time7(4)=tder2(22) : time7(5)=tder2(26) : time7(6)=tder2(35) : time7(7)=tder2(39) : time7(8)=tder1(45)
    time8(0)=tder1(5) : time8(1)=tder2(10) : time8(2)=tder1(15) : time8(3)=tder2(19) : time8(4)=tder2(23) : time8(5)=tder2(27) : time8(6)=tder2(31) : time8(7)=tder2(40) : time8(8)=tder2(44)
    time9(0)=tder2(4) : time9(1)=tder2(8) : time9(2)=tder2(15) : time9(3)=tder1(20) : time9(4)=tder2(24) : time9(5)=tder2(28) : time9(6)=tder2(32) : time9(7)=tder2(36) : time9(8)=tder2(45)
    time10(0)=tder2(5) : time10(1)=tder2(9) : time10(2)=tder2(14) : time10(3)=tder2(20) : time10(4)=tder2(25) : time10(5)=tder2(29) : time10(6)=tder2(33) : time10(7)=tder2(37) : time10(8)=tder2(41)
    For i=0 To 8          'qtde de Derrotas do time 
        tder(0)=tder(0) + time1(i) : tder(1)=tder(1) + time2(i) : tder(2)=tder(2) + time3(i) : tder(3)=tder(3) + time4(i) : tder(4)=tder(4) + time5(i)
        tder(5)=tder(5) + time6(i) : tder(6)=tder(6) + time7(i) : tder(7)=tder(7) + time8(i) : tder(8)=tder(8) + time9(i) : tder(9)=tder(9) + time10(i)
    Next
	
    time1(0)=tgols1(1) : time1(1)=tgols1(6) : time1(2)=tgols1(11) : time1(3)=tgols1(16) : time1(4)=tgols1(21) : time1(5)=tgols1(26) : time1(6)=tgols1(31) : time1(7)=tgols1(36) : time1(8)=tgols1(41)
    time2(0)=tgols2(1) : time2(1)=tgols1(7) : time2(2)=tgols1(12) : time2(3)=tgols1(17) : time2(4)=tgols1(22) : time2(5)=tgols1(27) : time2(6)=tgols1(32) : time2(7)=tgols1(37) : time2(8)=tgols1(42)
    time3(0)=tgols1(2) : time3(1)=tgols2(6) : time3(2)=tgols1(13) : time3(3)=tgols1(18) : time3(4)=tgols1(23) : time3(5)=tgols1(28) : time3(6)=tgols1(33) : time3(7)=tgols1(38) : time3(8)=tgols2(42)
    time4(0)=tgols1(3) : time4(1)=tgols2(7) : time4(2)=tgols2(11) : time4(3)=tgols1(19) : time4(4)=tgols1(24) : time4(5)=tgols1(29) : time4(6)=tgols1(34) : time4(7)=tgols2(38) : time4(8)=tgols1(43)
    time5(0)=tgols2(2) : time5(1)=tgols1(8) : time5(2)=tgols2(12) : time5(3)=tgols2(16) : time5(4)=tgols1(25) : time5(5)=tgols1(30) : time5(6)=tgols2(34) : time5(7)=tgols1(39) : time5(8)=tgols1(44)
    time6(0)=tgols1(4) : time6(1)=tgols1(9) : time6(2)=tgols2(13) : time6(3)=tgols2(17) : time6(4)=tgols2(21) : time6(5)=tgols2(30) : time6(6)=tgols1(35) : time6(7)=tgols1(40) : time6(8)=tgols2(43)
    time7(0)=tgols2(3) : time7(1)=tgols1(10) : time7(2)=tgols1(14) : time7(3)=tgols2(18) : time7(4)=tgols2(22) : time7(5)=tgols2(26) : time7(6)=tgols2(35) : time7(7)=tgols2(39) : time7(8)=tgols1(45)
    time8(0)=tgols1(5) : time8(1)=tgols2(10) : time8(2)=tgols1(15) : time8(3)=tgols2(19) : time8(4)=tgols2(23) : time8(5)=tgols2(27) : time8(6)=tgols2(31) : time8(7)=tgols2(40) : time8(8)=tgols2(44)
    time9(0)=tgols2(4) : time9(1)=tgols2(8) : time9(2)=tgols2(15) : time9(3)=tgols1(20) : time9(4)=tgols2(24) : time9(5)=tgols2(28) : time9(6)=tgols2(32) : time9(7)=tgols2(36) : time9(8)=tgols2(45)
    time10(0)=tgols2(5) : time10(1)=tgols2(9) : time10(2)=tgols2(14) : time10(3)=tgols2(20) : time10(4)=tgols2(25) : time10(5)=tgols2(29) : time10(6)=tgols2(33) : time10(7)=tgols2(37) : time10(8)=tgols2(41)
    For i=0 To 8          'qtde de Gols do time 
        tgols(0)=tgols(0) + time1(i) : tgols(1)=tgols(1) + time2(i) : tgols(2)=tgols(2) + time3(i) : tgols(3)=tgols(3) + time4(i) : tgols(4)=tgols(4) + time5(i)
        tgols(5)=tgols(5) + time6(i) : tgols(6)=tgols(6) + time7(i) : tgols(7)=tgols(7) + time8(i) : tgols(8)=tgols(8) + time9(i) : tgols(9)=tgols(9) + time10(i)
    Next
	
    time1(0)=tglev1(1) : time1(1)=tglev1(6) : time1(2)=tglev1(11) : time1(3)=tglev1(16) : time1(4)=tglev1(21) : time1(5)=tglev1(26) : time1(6)=tglev1(31) : time1(7)=tglev1(36) : time1(8)=tglev1(41)
    time2(0)=tglev2(1) : time2(1)=tglev1(7) : time2(2)=tglev1(12) : time2(3)=tglev1(17) : time2(4)=tglev1(22) : time2(5)=tglev1(27) : time2(6)=tglev1(32) : time2(7)=tglev1(37) : time2(8)=tglev1(42)
    time3(0)=tglev1(2) : time3(1)=tglev2(6) : time3(2)=tglev1(13) : time3(3)=tglev1(18) : time3(4)=tglev1(23) : time3(5)=tglev1(28) : time3(6)=tglev1(33) : time3(7)=tglev1(38) : time3(8)=tglev2(42)
    time4(0)=tglev1(3) : time4(1)=tglev2(7) : time4(2)=tglev2(11) : time4(3)=tglev1(19) : time4(4)=tglev1(24) : time4(5)=tglev1(29) : time4(6)=tglev1(34) : time4(7)=tglev2(38) : time4(8)=tglev1(43)
    time5(0)=tglev2(2) : time5(1)=tglev1(8) : time5(2)=tglev2(12) : time5(3)=tglev2(16) : time5(4)=tglev1(25) : time5(5)=tglev1(30) : time5(6)=tglev2(34) : time5(7)=tglev1(39) : time5(8)=tglev1(44)
    time6(0)=tglev1(4) : time6(1)=tglev1(9) : time6(2)=tglev2(13) : time6(3)=tglev2(17) : time6(4)=tglev2(21) : time6(5)=tglev2(30) : time6(6)=tglev1(35) : time6(7)=tglev1(40) : time6(8)=tglev2(43)
    time7(0)=tglev2(3) : time7(1)=tglev1(10) : time7(2)=tglev1(14) : time7(3)=tglev2(18) : time7(4)=tglev2(22) : time7(5)=tglev2(26) : time7(6)=tglev2(35) : time7(7)=tglev2(39) : time7(8)=tglev1(45)
    time8(0)=tglev1(5) : time8(1)=tglev2(10) : time8(2)=tglev1(15) : time8(3)=tglev2(19) : time8(4)=tglev2(23) : time8(5)=tglev2(27) : time8(6)=tglev2(31) : time8(7)=tglev2(40) : time8(8)=tglev2(44)
    time9(0)=tglev2(4) : time9(1)=tglev2(8) : time9(2)=tglev2(15) : time9(3)=tglev1(20) : time9(4)=tglev2(24) : time9(5)=tglev2(28) : time9(6)=tglev2(32) : time9(7)=tglev2(36) : time9(8)=tglev2(45)
    time10(0)=tglev2(5) : time10(1)=tglev2(9) : time10(2)=tglev2(14) : time10(3)=tglev2(20) : time10(4)=tglev2(25) : time10(5)=tglev2(29) : time10(6)=tglev2(33) : time10(7)=tglev2(37) : time10(8)=tglev2(41)
    For i=0 To 8          'qtde de Gols Sofridos pelo time 
        tglev(0)=tglev(0) + time1(i) : tglev(1)=tglev(1) + time2(i) : tglev(2)=tglev(2) + time3(i) : tglev(3)=tglev(3) + time4(i) : tglev(4)=tglev(4) + time5(i)
        tglev(5)=tglev(5) + time6(i) : tglev(6)=tglev(6) + time7(i) : tglev(7)=tglev(7) + time8(i) : tglev(8)=tglev(8) + time9(i) : tglev(9)=tglev(9) + time10(i)
    Next
    
	'Conta dos montáveis
    For i=0 To 9
        emp(i) = qtde(i) - tvit(i) - tder(i)             'Empates do time
        pts(i) = pts(i) + ((tvit(i) * 3) + emp(i))      'Pontos do time
        salg(i) = tgols(i) - tglev(i)                   'Saldo de gols, tem q converter tgols pra int antes
    Next
%>

<html>
	<head>
	<LINK HREF="Campeonato.css" REL="STYLESHEET" TYPE="text/CSS">
		<title>Tabela do Campeonato</title>
	</head>
	<body>
	<table align="center" border=2 bgcolor="#D3D3D3">
		<tr><td colspan=9 align="center"><b><p class="titu">Campeonato do Brasil</p></b></td></tr>
		<tr><td><p class="f2">Time</p></td><td align="center"><p class="f2">Jogos</p></td><td><p class="f2">Pts Ganhos</p></td><td><p class="f2">Qtde Vitórias</p></td><td><p class="f2">Qtde Derrotas</p></td><td><p class="f2">Qtde Empates</p></td><td><p class="f2">Gols Marcados</p></td><td><p class="f2">Gols Sofridos</p></td><td><p class="f2">Saldo de Gols</p></td></tr>

		<%    
		    qtde(8) = qtde(8) - 1       'Arruma o problema do 7º e 9º time ter um ponto, empate e jogo a mais
		    qtde(6) = qtde(6) - 1
		    
		    'emp(8) = emp(8) - 1
		    'emp(6) = emp(6) - 1
		    
		    'pts(8) = pts(8) - 1
		    'pts(6) = pts(6) - 1
		    
		    'For i = 0 To 9      'Selection sort ->  pts(9) - clas(9) com val int
		    '    clas(i) = pts(i)
		    'Next
 
		    'For i = 0 To 9
		    '    min = i
		    '    For j = i + 1 To 9
		    '        If clas(j) < clas(min) Then min = j
		    '    Next j
 
		    '    aux = clas(i)
		    '    clas(i) = clas(min)
		    '    clas(min) = aux
		    'Next i
		    
		    'For i = 0 To 9
		    '    Response.Write(clas(i))
		    'Next
		    
		    'For i = 0 To 9          'Define a classificação
		    '    For j = 0 To 9      'Define o n do time
		    '        If (clas(i) = pts(j)) Then      'Converter os pontos gravados no numero do time
		    '            clas(i) = j
		    '        End If
		    '    Next
		    'Next
		
		    times(0) = session("time1")
		    times(1) = session("time2")
		    times(2) = session("time3")
		    times(3) = session("time4")						'Puxar a variável time() criada no campeonato.asp
		    times(4) = session("time5")						'mas para usar o ordenado substitui (t) por (clas(t))  ERRO!
		    times(5) = session("time6")
		    times(6) = session("time7")
		    times(7) = session("time8")
		    times(8) = session("time9")
		    times(9) = session("time10")
		
		    For t = 0 To 9
		        %>
				<tr><td> <%times(t)%> & "</td>")                       
		        <td><p class="f2"> <%qtde(t)%> </p></td>    
		        <td><p class="f2"> <%pts(t)%> </p></td>                  
		        <td><p class="f2"> <%tvit(t)%> </p></td>
		        <td><p class="f2"> <%tder(t)%> </p></td>
		        <td><p class="f2"> <%emp(t)%> </p></td>
		        <td><p class="f2"> <%tgols(t)%> </p></td>
		        <td><p class="f2"> <%tglev(t)%> </p></td>
		        <td><p class="f2"> <%salg(t)%>  </p></td>
		        </tr>
		    <%Next%>
				
	</table>

    </body>
</html>	
		