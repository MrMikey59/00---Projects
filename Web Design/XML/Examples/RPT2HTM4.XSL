<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:gen="#gen-functions" exclude-result-prefixes="msxsl gen">
    	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" cdata-section-elements="msxsl:script" />
	<ox:meta inputtype="ReportML" outputtype="HTML4WebRpt" displayname="HTML 4.0 Sample (XSL)" xmlns:ox="urn:schemas-microsoft-com:officexsl"/>

	<xsl:key name="Grouping" match="/RPTML/REPORT[1]/GROUP-LEVEL" use="GROUP-HEADER='true' or GROUP-FOOTER='true'" />
	<xsl:template match="/">			
		<xsl:value-of select="gen:CacheRPTML(.)" />
		<xsl:value-of disable-output-escaping="yes" select="gen:StylesheetStart()" />
			
<!-- xsl:output element -->
			<xsl:element name="xsl:output">
				<xsl:attribute name="method">html</xsl:attribute>
				<xsl:attribute name="version">4.0</xsl:attribute>
				<xsl:attribute name="indent">yes</xsl:attribute>
			</xsl:element>
			
<!-- Add grouping keys -->
			<xsl:for-each select="key('Grouping','true')">
				<xsl:element name="xsl:key">
					<xsl:attribute name="name"><xsl:value-of select="gen:GetGroupName(.)"/></xsl:attribute>
					<xsl:attribute name="match"><xsl:value-of select="../XML-RECORD-SOURCE"/></xsl:attribute>
					<xsl:attribute name="use"><xsl:value-of select="gen:GetGroupUse(.)"/></xsl:attribute>
				</xsl:element>
			</xsl:for-each>

<!-- xsl:template element -->
			<xsl:element name="xsl:template">
				<xsl:attribute name="match">//dataroot</xsl:attribute>
				<html>
					<xsl:if test="RPTML/REPORT[1]/DIR='right-to-left'">
						<xsl:attribute name="DIR">RTL</xsl:attribute>
					</xsl:if>
					<head>
						<META HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=UTF-8"/>
						<title><xsl:value-of select="RPTML/REPORT[1]/TITLE"/></title>
<!-- General styles -->	
						<style type="text/css">
							<xsl:apply-templates select="RPTML/REPORT[1]/STYLE"/>
						</style>
					</head>
						
<!-- The BODY of the page -->
					<xsl:apply-templates select="RPTML/REPORT[1]"/>	
					
				</html>
			</xsl:element>
			
<!-- Script used in output XSL -->	
			<xsl:element name="msxsl:script" namespace="urn:schemas-microsoft-com:xslt">
				<xsl:attribute name="language">VBScript</xsl:attribute>
				<xsl:attribute name="implements-prefix">fx</xsl:attribute>							
	Option Explicit
	
	' ********************************************************************************** 
	' **  Functions dynamically generated to evaluate expressions used as a Control Source   
	' ********************************************************************************** 
	<xsl:call-template name="Expressions">
		<xsl:with-param name="GlobalPrefix">gExpr_</xsl:with-param>
		<xsl:with-param name="ExprNodes" select="/RPTML/REPORT[1]/SECTION/REPORT-ITEM[ENCODED-CONTROL-SOURCE/@type='expression' and not(RUNNING-SUM = 'over all' or RUNNING-SUM = 'over group')]" />
	</xsl:call-template>
	
	' ********************************************************************************** 
	' **  Functions dynamically generated to evaluate running sums 
	' ********************************************************************************** 
	<xsl:call-template name="Expressions">
		<xsl:with-param name="GlobalPrefix">gRunningSum_</xsl:with-param>
		<xsl:with-param name="ExprNodes" select="/RPTML/REPORT[1]/SECTION/REPORT-ITEM[RUNNING-SUM = 'over all' or RUNNING-SUM = 'over group']" />
	</xsl:call-template>

<xsl:for-each select="key('Grouping','true')">
	<!-- Create CalculateExpressions_[Section] -->
	<xsl:variable name="GroupID" select="@id" />
	<xsl:call-template name="Calculations">
		<xsl:with-param name="Section" select="../SECTION[@idref = $GroupID]" />
		<xsl:with-param name="SectionName" select="$GroupID" />
		<xsl:with-param name="SectionVBName"  select="gen:GenerateVBName(string(@id))" />
		<xsl:with-param name="ResetRunningSums">true</xsl:with-param>
		<xsl:with-param name="NextGroup"  select="position()+1" />
	</xsl:call-template>	
</xsl:for-each>

	<!-- Create CalculateExpressions_Detail -->
	<xsl:call-template name="Calculations">
		<xsl:with-param name="Section" select="/RPTML/REPORT[1]/SECTION[@type = 'detail']" />
		<xsl:with-param name="SectionName">Detail</xsl:with-param>
		<xsl:with-param name="SectionVBName">Detail</xsl:with-param>
	</xsl:call-template>

	<!-- Create CalculateExpressions_Global -->
	<xsl:call-template name="Calculations">
		<xsl:with-param name="Section" select="/RPTML/REPORT[1]/SECTION[@type = 'report_header' or @type = 'page_header' or @type = 'page_footer' or @type = 'report_footer']" />
		<xsl:with-param name="SectionName">Global</xsl:with-param>
		<xsl:with-param name="SectionVBName">Global</xsl:with-param>
	</xsl:call-template>

	' ********************************************************************************** 
	' **  Functions dynamically generated to be used for sorting and grouping
	' ********************************************************************************** 
	
<xsl:for-each select="/RPTML/REPORT[1]/GROUP-LEVEL[ENCODED-CONTROL-SOURCE/@type='expression']">
	' This expression was <xsl:value-of select="ENCODED-CONTROL-SOURCE"/>
	' There is no formatting on Sorting/Grouping fields
	Function GroupExpr_<xsl:value-of select="gen:GenerateVBName(string(@id))"/>(nodelist)
		Set objCurrNodeT = objCurrNode
		Set objCurrNode = nodelist.item(0)
		
		GroupExpr_<xsl:value-of select="gen:GenerateVBName(string(@id))"/> = <xsl:value-of select="gen:FixExpression(ENCODED-CONTROL-SOURCE, 1)" disable-output-escaping="yes"/>

		Set objCurrNode = objCurrNodeT
	End Function
</xsl:for-each>

	' ********************************************************************************** 
	' **  Code staticly copied for expressions to use    
	' ********************************************************************************** 
	
	'variable declaration
	Dim objCurrNode
	Dim objCurrNodeT
	Dim cGroupCount
	Dim objGroupNodes

	Set objGroupNodes = Nothing
	Set objCurrNode = Nothing
	cGroupCount = 0
	
	Function PrepExpressions(CurrentNode, GroupNodes)		
		CacheCurrentNode CurrentNode
		CacheGroupNodes GroupNodes
		PrepExpressions = ""
	End Function
	
	Function CacheCurrentNode(objNodeList)		
		Set objCurrNode = objNodeList.item(0)
		CacheCurrentNode = ""
	End Function
	
	Function CacheGroupNodes(objNodeList)
		Set objGroupNodes = objNodeList
		cGroupCount = objGroupNodes.length
		CacheGroupNodes = ""
	End Function

	Function GroupValue_quarter(strValue)
		GroupValue_quarter = Left(strValue, 4) &amp; DatePart("q", BuildDateFromStr(strValue, False))
	End Function
	
	Function GroupValue_week(strValue)
		GroupValue_week = Left(strValue, 4) &amp; DatePart("ww", BuildDateFromStr(strValue, False))
	End Function
	
	Function GroupValue_interval(nValue, nInterval)
		GroupValue_interval = Int(nValue / nInterval)
	End Function

	Function Page()
		Page = 1
	End Function
	
	Function Pages()
		Pages = 1
	End Function

	Function ToString(varValue)
		On Error Resume Next
		ToString = ""
		ToString = CStr(varValue)
	End Function

	Function ToNumber(varValue)
		On Error Resume Next
		ToNumber = 0
		ToNumber = CDbl(varValue)
	End Function
	
	Function FormatFromXSL(strRef, strFormat, iNumDecimals, LCID, nType)
		FormatFromXSL = ToString(Format(GetValue(strRef, nType), strFormat, iNumDecimals, LCID, nType))
	End Function

	Function Format(varValue, strFormat, iNumDecimals, LCID, nType)
		Dim FormatTemp
		Dim strTemp
										
		If IsDate(varValue) Then
			Select Case strFormat
				Case "General Date"
					FormatTemp = FormatDateTime(varValue, vbGeneralDate)
				Case "Long Date"
					FormatTemp = FormatDateTime(varValue, vbLongDate)
				Case "Medium Date"
					If GetLocale = 1054 Then ' Special case for thai year
						FormatTemp = Day(varValue) &amp; "-" &amp; MonthName(Month(varValue), True) &amp; "-" &amp; Right(FormatDateTime(varValue, vbShortDate), 2)
					Else
						FormatTemp = Day(varValue) &amp; "-" &amp; MonthName(Month(varValue), True) &amp; "-" &amp; Mid(Year(varValue), 3, 2)
					End If
				Case "Short Date"
					FormatTemp = FormatDateTime(varValue, vbShortDate)
				Case "Long Time"
					FormatTemp = FormatDateTime(varValue, vbLongTime)							
				Case "Medium Time"
					strTemp = FormatDateTime(varValue, vbLongTime)
					If (IsNumeric(Mid(strTemp, 2, 1))) Then
						FormatTemp = Mid(strTemp,1,5) &amp; Mid(strTemp, 9)
					Else
						FormatTemp = Mid(strTemp,1,4) &amp; Mid(strTemp, 9)
					End If
				Case "Short Time"
					FormatTemp = FormatDateTime(varValue, vbShortTime)
				Case Else
					Select Case LCase(strFormat)
						Case "yyyy", "q", "m", "y", "d", "w", "ww", "h", "n", "s"
							FormatTemp = DatePart(LCase(strFormat), varValue)
						Case Else
							' This does not currently support custom formats such as dd-mmm-yyyy										
							FormatTemp = FormatDateTime(varValue, vbGeneralDate)
					End Select
			End Select
		ElseIf IsNumeric(varValue) Then
			Select Case strFormat
				Case "General Number"
					FormatTemp = varValue
				Case "Currency"
					FormatTemp = FormatCurrencyPerLocale(varValue, iNumDecimals, LCID)
				Case "Euro"
					' This does not really support the Euro format.
					FormatTemp = FormatCurrencyPerLocale(varValue, iNumDecimals, LCID)
				Case "Fixed"
					If IsNumeric(iNumDecimals) Then
						FormatTemp = FormatNumber(varValue, iNumDecimals, vbTrue, vbUseDefault, vbFalse)
					Else
						FormatTemp = FormatNumber(varValue, 2, vbTrue, vbUseDefault, vbFalse)
					End If
				Case "Standard"
					If IsNumeric(iNumDecimals) Then
						FormatTemp = FormatNumber(varValue, iNumDecimals, vbUseDefault, vbUseDefault, vbTrue)
					Else
						FormatTemp = FormatNumber(varValue, 2, vbUseDefault, vbUseDefault, vbTrue)
					End If
				Case "Percent"
					If IsNumeric(iNumDecimals) Then
						FormatTemp = FormatPercent(varValue, iNumDecimals)
					Else
						FormatTemp = FormatPercent(varValue)
					End If
				Case "Scientific"
					Dim nExp
					Dim nValue
					If (varValue = 0)  Then
						nExp = 0
					Else
				      		nExp = Int(Log(Abs(varValue)) / Log(10))
					End If
					nValue = Round(CDbl(varValue)/(10^CDbl(nExp)), 2)
					If (Sgn(nExp) &lt; 0) Then
						FormatTemp = FormatNumber(nValue, 2, vbTrue, vbFalse, vbFalse) &amp; "E" &amp; nExp
					Else
						FormatTemp = FormatNumber(nValue, 2, vbTrue, vbFalse, vbFalse) &amp; "E+" &amp; nExp
					End If
				Case "True/False"
					If (CBool(varValue)) Then
						FormatTemp = "True"
					Else
						FormatTemp = "False"
					End If
				Case "Yes/No"
					If (CBool(varValue)) Then
						FormatTemp = "Yes"
					Else
						FormatTemp = "No"
					End If 
				Case "On/Off"
					If (CBool(varValue)) Then
						FormatTemp = "On"
					Else
						FormatTemp = "Off"
					End If 
				Case Else 	' This is a custom format				
					If nType = 6 Then ' This is a currency
						FormatTemp = FormatCurrencyPerLocale(varValue, iNumDecimals, LCID) 
					End If
			End Select
		End If

		If IsEmpty(FormatTemp) Then								
			FormatTemp = varValue
		End If

		If FHasNoContent(FormatTemp) Then
			Format = " "
		Else
			Format = FormatTemp
		End If
						
	End Function

	Function 	FormatCurrencyPerLocale(varValue, iNumDecimals, LCID)
		Dim CurrentLCID
		If LCID &gt;&lt; "" Then	CurrentLCID = SetLocale(LCID)
		If IsNumeric(iNumDecimals) Then
			FormatCurrencyPerLocale = FormatCurrency(varValue, iNumDecimals)
		Else
			FormatCurrencyPerLocale = FormatCurrency(varValue)
		End If
		If Not IsEmpty(CurrentLCID) Then SetLocale CurrentLCID 
	End Function
	
	Function FHasNoContent(objValue)
		FHasNoContent = True
		
		If IsNull(objValue) Then Exit Function
		If IsEmpty(objValue) Then Exit Function
		If Not IsObject(objValue) Then 
			If objValue = "" Then Exit Function
		Else
			If objValue Is Nothing Then Exit Function
		End if

		FHasNoContent = False
	End Function

	Function IIf(fCond, varTrue, varFalse)
		If fCond Then
			IIf = varTrue
		Else
			IIf = varFalse
		End If
	End Function

	Function Nz(varValue, varReplace)
		If FHasNoContent(varValue) Then
			Nz = varReplace
		Else
			Nz = varValue
		End If
	End Function

	Function Sum(strExpr)
		Dim nSum, i

		nSum = 0
		Set objCurrNodeT = objCurrNode

		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			nSum = nSum + ToNumber(Eval(strExpr))
		Next
				
		Set objCurrNode = objCurrNodeT
		Sum = nSum
	End Function
	
	Function Count(strExpr)
		Dim nCount, i
		
		If strExpr = "*" Then
			Count = cGroupCount
			Exit Function
		End If
		
		Set objCurrNodeT = objCurrNode
		nCount = 0
		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			If Not FHasNoContent(Eval(strExpr)) Then
				nCount = nCount + 1
			End If	
		Next

		Set objCurrNode = objCurrNodeT
		Count = nCount
	End Function
		
	Function Avg(strExpr)
		Dim nSum
		Dim nCount
		nSum = Sum(strExpr)
		nCount = Count(strExpr)
		If nCount &gt; 0 Then
			Avg = nSum / nCount
		Else
			Avg = nSum
		End If
	End Function

	Function Min(strExpr)
		Dim varMin, i
		Dim varTemp
		
		Set objCurrNodeT = objCurrNode

		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			varTemp = Eval(strExpr)
			If IsEmpty(varMin) Or (varTemp &lt; varMin) Then
				varMin = varTemp
			End If	
		Next

		Set objCurrNode = objCurrNodeT
		Min = varMin
	End Function
	
	Function Max(strExpr)
		Dim varMax, i
		Dim varTemp
	
		varMax = Eval(strExpr)
		Set objCurrNodeT = objCurrNode
		
		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			varTemp = Eval(strExpr)
			If IsEmpty(varMax) Or (varTemp &gt; varMax) Then
				varMax = varTemp
			End If	
		Next
		
		Set objCurrNode = objCurrNodeT
		Max = varMax
	End Function
	
	Function GetValue(strRef, nType)
		' Set Null as the default return value
		GetValue = Null

		' Return Null if anything goes wrong
		On Error Resume Next
	
		Dim objNode
		Set objNode = objCurrNode.selectSingleNode(strRef)
		If (objNode Is Nothing) Or IsNull(objNode) Or IsEmpty(objNode) Or Not IsObject(objNode) Then
			Exit Function
		End If

		Dim CurrentLCID
		CurrentLCID = SetLocale(1033)
		
		Select Case nType
			Case 2		 	' adSmallInt
				GetValue = CLng(objNode.text)

			Case 3 		' adInteger
				GetValue = CLng(objNode.text)

			Case 20		' adBigInt
				GetValue = CLng(objNode.text)

			Case 17		' adUnsignedTinyInt
				GetValue = CLng(objNode.text)

			Case 18		' adUnsignedSmallInt
				GetValue = CLng(objNode.text)

			Case 19		' adUnsignedInt
				GetValue = CLng(objNode.text)

			Case 21		' adUnsignedBigInt
				GetValue = CLng(objNode.text)

			Case 4		' adSingle
				GetValue = CDbl(objNode.text)

			Case 5		' adDouble
				GetValue = CDbl(objNode.text)

			Case 6		' adCurrency
				GetValue = CCur(objNode.text)

			Case 14		' adDecimal
				GetValue = CDbl(objNode.text)

			Case 131		' adNumeric
				GetValue = CDbl(objNode.text)

			Case 139		' adVarNumeric
				GetValue = CDbl(objNode.text)

			Case 11		' adBoolean
				GetValue = CBool(objNode.text)

			Case 7 		' adDate
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 133		' adDBDate
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 134		' adDBTime
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 135		' adDBTimeStamp
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 8		' adBSTR
				GetValue = objNode.text				

			Case 120		' adChar
				GetValue = objNode.text				

			Case 200		' adVarChar
				GetValue = objNode.text				

			Case 201		' adLongVarChar
				GetValue = objNode.text				

			Case 130		' adWChar:
				GetValue = objNode.text				

			Case 202		' adVarWChar
				GetValue = objNode.text				

			Case 203		' adLongVarWChar	
				GetValue = objNode.text		

			Case -7 		' Special value used to get just the date.
				GetValue = BuildDateFromStr(objNode.text, False)				

			Case Else
				GetValue = objNode.text				
		End Select

		SetLocale CurrentLCID
	End Function

	Dim gStaticDate
	Function StaticDate()
		If IsEmpty(gStaticDate) Then gStaticDate = GetValue("/*/@generated", -7)
		StaticDate = gStaticDate
	End Function

	Dim gStaticNow
	Function StaticNow()
		If IsEmpty(gStaticNow) Then gStaticNow = GetValue("/*/@generated", 7)
		StaticNow = gStaticNow
	End Function
	
	Function BuildDateFromStr(strDate, fIncludeTime)
		Dim CurrentLCID
		CurrentLCID = SetLocale(1033)
		' This requires that the Locale be set to en-us (1033).
		BuildDateFromStr = CDate(Left(strDate,10))

		If (fIncludeTime) Then
			BuildDateFromStr = BuildDateFromStr  + CDate(Right(strDate,8))
		End If
		SetLocale CurrentLCID
	End Function

	Function ArrayItem(arr, index)
		If index > UBound(arr) Then
			ArrayItem = ""
		Else
			ArrayItem = arr(index)
		End If
	End Function

	Function HyperlinkPartFromNodeList(nodelist, nPart)
		If nodelist.length = 0 Then
			HyperlinkPartFromNodeList = ""
		Else
			HyperlinkPartFromNodeList = HyperlinkPartFromString(nodelist.item(0).text, nPart)
		End If
	End Function
	
	Function HyperlinkPart(strRef, nPart)
		HyperlinkPart = HyperlinkPartFromString(GetValue(strRef, 200), nPart)
	End Function
	
	Function HyperlinkPartFromString(strHyperlink, nPart)
		Dim arrParts
		Dim strHyperlinkPart
		Dim strAddress, strSubAddress
		
		arrParts = Split(strHyperlink, "#")

		Select Case nPart
			Case 0 		' acDisplayedValue
				strHyperlinkPart = ArrayItem(arrParts, 0)
				If strHyperlinkPart = "" Then
					strAddress = ArrayItem(arrParts, 1)
					strSubAddress = ArrayItem(arrParts, 2)

					If strAddress = "" and strSubAddress = "" Then
						strHyperlinkPart = ""
					ElseIf strSubAddress = "" Then
						strHyperlinkPart = strAddress
					ElseIf strAddress = "" Then
						strHyperlinkPart = strSubAddress
					Else
						strHyperlinkPart = strAddress &amp; " - " &amp; strSubAddress
					End If
				End If
			Case 1 		' acDisplayText
				strHyperlinkPart = ArrayItem(arrParts, 0)
			Case 2 		' acAddress
				strHyperlinkPart = ArrayItem(arrParts, 1)
			Case 3 		' acSubAddress
				strHyperlinkPart = ArrayItem(arrParts, 2)
			Case 4 		' acScreenTip
				strHyperlinkPart = ArrayItem(arrParts, 3)
			Case 5 		' acFullAddress
				strAddress = ArrayItem(arrParts, 1)
				strSubAddress = ArrayItem(arrParts, 2)
				
				If strAddress = "" and strSubAddress = "" Then
					strHyperlinkPart = "#"
				ElseIf strSubAddress = "" Then
					strHyperlinkPart = strAddress
				Else
					strHyperlinkPart = strAddress &amp; "#" &amp; strSubAddress
				End If
		End Select
		HyperlinkPartFromString = strHyperlinkPart
	End Function
			</xsl:element>
		<xsl:value-of disable-output-escaping="yes" select="gen:StylesheetEnd()"/>
	</xsl:template>

<!-- Expression template -->
	<xsl:template name="Expressions">
		<xsl:param name="GlobalPrefix" />
		<xsl:param name="ExprNodes" />
	<xsl:for-each select="$ExprNodes">
	<xsl:variable name="VBName" select="gen:GenerateVBName(string(@id))" />

	' [<xsl:value-of select="@id"/>] = <xsl:value-of select="ENCODED-CONTROL-SOURCE"/>
	' Format: "<xsl:value-of select="FORMAT"/>"
	' Decimal Places: "<xsl:value-of select="DECIMAL-PLACES"/>"
	' Running Sum: "<xsl:value-of select="RUNNING-SUM"/>"
	Dim <xsl:value-of select="$GlobalPrefix"/><xsl:value-of select="$VBName"/>
	Function ExprFromXSL_<xsl:value-of select="$VBName"/>()
		ExprFromXSL_<xsl:value-of select="$VBName"/> = ToString(<xsl:value-of select="gen:AddFormatting('Format', concat($GlobalPrefix, $VBName), ENCODED-CONTROL-SOURCE)" disable-output-escaping="yes"/>)
	End Function
	</xsl:for-each>
	</xsl:template>

<!-- Calculation template -->
	<xsl:template name="Calculations">
		<xsl:param name="Section" />
		<xsl:param name="SectionName" />
		<xsl:param name="SectionVBName" />
		<xsl:param name="ResetRunningSums" />
		<xsl:param name="NextGroup" />

	<xsl:if test="$ResetRunningSums">
	' This function will reset the sums for the <xsl:value-of select="$SectionName"/> section
	Function ResetRunningSums_<xsl:value-of select="$SectionVBName"/>()
	<xsl:choose>
		<xsl:when test="key('Grouping','true')[$NextGroup]">
			<xsl:for-each select="$Section/../SECTION[@idref = key('Grouping','true')[$NextGroup]/@id]/REPORT-ITEM[RUNNING-SUM = 'over group']">
		gRunningSum_<xsl:value-of select="gen:GenerateVBName(string(@id))"/> = Empty
			</xsl:for-each>
		</xsl:when>
		<xsl:otherwise>
			<xsl:for-each select="$Section/../SECTION[@type = 'detail']/REPORT-ITEM[RUNNING-SUM = 'over group']">
		gRunningSum_<xsl:value-of select="gen:GenerateVBName(string(@id))"/> = Empty
			</xsl:for-each>
		</xsl:otherwise>
	</xsl:choose>
		ResetRunningSums_<xsl:value-of select="$SectionVBName"/> = ""
	End Function
	</xsl:if>
		
	' This function will calculate the running sums and expressions for the <xsl:value-of select="$SectionName"/> section
	Function CalculateExpressions_<xsl:value-of select="$SectionVBName"/>(CurrentNode, GroupNodes)
		PrepExpressions CurrentNode, GroupNodes
		<xsl:if test="$ResetRunningSums">ResetRunningSums_<xsl:value-of select="$SectionVBName"/></xsl:if>
		
		On Error Resume Next
	<xsl:for-each select="$Section/REPORT-ITEM[RUNNING-SUM = 'over group' or RUNNING-SUM = 'over all']">
		<xsl:variable name="VBName" select="gen:GenerateVBName(string(@id))" />

		' [<xsl:value-of select="@id"/>] = <xsl:value-of select="ENCODED-CONTROL-SOURCE"/>
		gRunningSum_<xsl:value-of select="$VBName"/> = gRunningSum_<xsl:value-of select="$VBName"/> + <xsl:value-of select="gen:FixExpression(ENCODED-CONTROL-SOURCE, 0)" disable-output-escaping="yes"/>
	</xsl:for-each>

	<xsl:for-each select="$Section/REPORT-ITEM[ENCODED-CONTROL-SOURCE/@type='expression' and not(RUNNING-SUM = 'over all' or RUNNING-SUM = 'over group')]">
		<xsl:variable name="VBName" select="gen:GenerateVBName(string(@id))" />

		' [<xsl:value-of select="@id"/>] = <xsl:value-of select="ENCODED-CONTROL-SOURCE"/>
		gExpr_<xsl:value-of select="$VBName"/> = Empty
		gExpr_<xsl:value-of select="$VBName"/> = <xsl:value-of select="gen:FixExpression(ENCODED-CONTROL-SOURCE, 1)" disable-output-escaping="yes"/>
	</xsl:for-each>
	
		CalculateExpressions_<xsl:value-of select="$SectionVBName"/> = ""
	End Function
	</xsl:template>

<!-- style template -->
	<xsl:template match="STYLE">
		.<xsl:value-of select="@id"/> { <xsl:value-of select="gen:GetTextStyle(., false())"/> }
	</xsl:template>

<!-- REPORT template -->
	<xsl:template match="REPORT">

<!-- BODY element -->
		<xsl:element name="body">
			<xsl:attribute name="link"><xsl:value-of select="gen:GetNodeTextFromNodeList(., 'LINK', '#0000ff')"/></xsl:attribute>
			<xsl:attribute name="vlink"><xsl:value-of select="gen:GetNodeTextFromNodeList(., 'VLINK', '#800080')"/></xsl:attribute>
			<xsl:if test="BACKGROUND-IMAGE">
				<xsl:attribute name="style"><xsl:value-of select="gen:GetBodyStyle(.)"/></xsl:attribute>
			</xsl:if>
			<xsl:choose>
				<xsl:when test="XML-RECORD-SOURCE">
					<xsl:choose>
						<xsl:when test="LAYOUT='grid'">
<!-- Table/Query scenario -->
							<table border="1" bgcolor="#ffffff" cellspacing="0" cellpadding="0">
								<xsl:attribute name="id"><xsl:value-of select="gen:GetNextCtrlID()"/></xsl:attribute>
<!-- COLGROUP element -->
								<colgroup>
										<xsl:apply-templates select="SECTION[@type='page_header']/REPORT-ITEM/COLUMN-WIDTH"/>
								</colgroup>
<!-- TBODY header element -->
								<tbody>
									<tr>
										<xsl:apply-templates select="SECTION[@type='page_header']/REPORT-ITEM"/>
									</tr>
								</tbody>
<!-- TBODY table element -->
								<tbody>																	
									<xsl:attribute name="id"><xsl:value-of select="gen:GetNextCtrlID()"/></xsl:attribute>
									<xsl:element name="xsl:for-each">
										<xsl:attribute name="select"><xsl:value-of select="XML-RECORD-SOURCE"/></xsl:attribute>
										<xsl:if test="SECTION[@type='detail']/REPORT-ITEM">
<!-- Apply details section -->								
											<xsl:comment> Cache the current node incase the a field is formatted </xsl:comment>
											<xsl:element name="xsl:value-of">
												<xsl:attribute name="select">fx:CacheCurrentNode(.)</xsl:attribute>
											</xsl:element>	
											<xsl:apply-templates select="SECTION[@type='detail']"/>
										</xsl:if>
									</xsl:element>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
<!-- Form/Report scenario -->
<!-- Apply page & report headers -->
							<xsl:element name="xsl:variable">
								<xsl:attribute name="name">GlobalGroup</xsl:attribute>
								<xsl:attribute name="select"><xsl:value-of select="XML-RECORD-SOURCE"/></xsl:attribute>
							</xsl:element>
							<xsl:comment> Calculate expressions and running sums </xsl:comment>
							<xsl:element name="xsl:value-of">
								<xsl:attribute name="select">fx:CalculateExpressions_Global($GlobalGroup[1], $GlobalGroup)</xsl:attribute>
							</xsl:element>								

							<xsl:apply-templates select="SECTION[@type='report_header']"/>
							<xsl:apply-templates select="SECTION[@type='page_header']"/>

							<xsl:for-each select="key('Grouping','true')">
<!-- Create grouping loops -->							
								<xsl:value-of disable-output-escaping="yes" select="gen:GetGroupForEachStart(.)" />
								<xsl:comment> Calculate expressions and running sums </xsl:comment>
								<xsl:element name="xsl:value-of">
									<xsl:attribute name="select">fx:CalculateExpressions_<xsl:value-of select="gen:GenerateVBName(string(@id))"/>(., <xsl:value-of select="gen:GetGroupKey(.)"/>)</xsl:attribute>
								</xsl:element>								
								
<!-- Apply group headers -->						
								<xsl:apply-templates select="../SECTION[@type='group_header' and @idref=current()/@id]"/>
							</xsl:for-each>
								
							<xsl:if test="SECTION[@type='detail']/REPORT-ITEM">
								<xsl:attribute name="id"><xsl:value-of select="gen:GetNextCtrlID()"/></xsl:attribute>
								<xsl:element name="xsl:for-each">
									<xsl:choose>
										<xsl:when  test="key('Grouping','true')">
											<xsl:attribute name="select"><xsl:value-of select="gen:GetGroupKey(key('Grouping','true')[last()])"/></xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="select"><xsl:value-of select="XML-RECORD-SOURCE"/></xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:if test="GROUP-LEVEL">
										<xsl:value-of disable-output-escaping="yes" select="gen:GetGroupSort(GROUP-LEVEL[last()])"/>
									</xsl:if>
<!-- Apply details section -->					
									<xsl:comment> Calculate expressions and running sums </xsl:comment>
									<xsl:element name="xsl:value-of">
										<xsl:attribute name="select">fx:CalculateExpressions_Detail(., $GlobalGroup)</xsl:attribute>
									</xsl:element>								
									
									<xsl:apply-templates select="SECTION[@type='detail']"/>
								</xsl:element>							
							</xsl:if>
			
<!-- This is done in reverse order because we are closing the groupings from last to first. -->
							<xsl:for-each select="key('Grouping','true')">
<!-- Close grouping loops -->							
								<xsl:sort select="position()" order="descending" />
<!-- Apply group footers -->					
								<xsl:comment> Prepare for any expressions in the group footer </xsl:comment>
								<xsl:element name="xsl:value-of">
									<xsl:attribute name="select">fx:PrepExpressions(., <xsl:value-of select="gen:GetGroupKey(.)"/>)</xsl:attribute>
								</xsl:element>	
					
								<xsl:apply-templates select="../SECTION[@type='group_footer' and @idref=current()/@id]"/>
								<xsl:value-of disable-output-escaping="yes" select="gen:GetGroupForEachEnd(.)" />
							</xsl:for-each>
								
<!-- Apply page & report footers -->							
							<xsl:comment> Prepare for any expressions in the report or page footer </xsl:comment>
							<xsl:element name="xsl:value-of">
								<xsl:attribute name="select">fx:PrepExpressions($GlobalGroup[1], $GlobalGroup)</xsl:attribute>
							</xsl:element>	
							
							<xsl:apply-templates select="SECTION[@type='report_footer']"/>
							<xsl:apply-templates select="SECTION[@type='page_footer']"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="SECTION[@type='report_header']"/>
					<xsl:apply-templates select="SECTION[@type='page_header']"/>
					<xsl:apply-templates select="SECTION[@type='report_footer']"/>
					<xsl:apply-templates select="SECTION[@type='page_footer']"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:element>
	</xsl:template>

<!-- SECTION templates -->
	<xsl:template match="SECTION[../LAYOUT='absolute']">
		<xsl:element name="div">
			<xsl:attribute name="style"><xsl:value-of select="gen:GetTextStyle(., true)"/>; POSITION: relative</xsl:attribute>
			<xsl:apply-templates select="REPORT-TEXT|REPORT-ITEM"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="SECTION[../LAYOUT='grid']">
		<tr>
			<xsl:apply-templates select="REPORT-TEXT|REPORT-ITEM"/>
		</tr>
	</xsl:template>

<!-- REPORT-TEXT template -->
	<xsl:template match="REPORT-TEXT">
		<xsl:value-of disable-output-escaping="yes" select="text()"/>
	</xsl:template>

<!-- REPORT-ITEM templates -->
	<xsl:template match="REPORT-ITEM[(@type='text-box' or @type='label' or @type='combo-box' or @type='list-box')]">
		<xsl:choose>
			<xsl:when test="../../LAYOUT='absolute'">
				<xsl:apply-templates select="ENCODED-CONTROL-SOURCE|CAPTION"/>
			</xsl:when>
			<xsl:when test="../../LAYOUT='grid'">
				<xsl:if test="../@type='page_header'">
					<td>
						<div align="center">
							<strong><xsl:value-of select="CAPTION" /></strong>
						</div>
					</td>
				</xsl:if>

				<xsl:if test="../@type='detail'">
					<td>
						<xsl:apply-templates select="ENCODED-CONTROL-SOURCE"/>
					</td>
				</xsl:if>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="REPORT-ITEM[@type='check-box']">
		<xsl:element name="input">
			<xsl:attribute name="type">checkbox</xsl:attribute>			
			<xsl:attribute name="style"><xsl:value-of select="gen:GetCheckboxStyle(.)"/>; POSITION: absolute</xsl:attribute>
			<xsl:element name="xsl:if">
				<xsl:attribute name="test"><xsl:value-of select="gen:GetCheckboxCondition(.)"/></xsl:attribute>
				<xsl:element name="xsl:attribute"><xsl:attribute name="name">checked</xsl:attribute></xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="REPORT-ITEM[@type='line']">
		<xsl:element name="hr">
			<xsl:if test="@id"><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute></xsl:if>
			<xsl:if test="CLASS"><xsl:attribute name="class"><xsl:value-of select="CLASS"/></xsl:attribute></xsl:if>
			<xsl:attribute name="style"><xsl:value-of select="gen:GetLineStyle(.)"/>; POSITION: absolute</xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template match="REPORT-ITEM[@type='rectangle']">
		<xsl:element name="div">
			<xsl:if test="@id"><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute></xsl:if>
			<xsl:if test="CLASS"><xsl:attribute name="class"><xsl:value-of select="CLASS"/></xsl:attribute></xsl:if>
			<xsl:attribute name="style"><xsl:value-of select="gen:GetRectangleStyle(.)"/>; POSITION: absolute</xsl:attribute>
			<xsl:element name="xsl:value-of">
				<xsl:attribute name="disable-output-escaping">yes</xsl:attribute>
				<xsl:attribute name="select">' '</xsl:attribute>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="REPORT-ITEM[@type='image']">
		<xsl:element name="IMG">
			<xsl:if test="@id"><xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute></xsl:if>
			<xsl:if test="CLASS"><xsl:attribute name="class"><xsl:value-of select="CLASS"/></xsl:attribute></xsl:if>
			<xsl:attribute name="style"><xsl:value-of select="gen:GetImageStyle(.)"/>; POSITION: absolute</xsl:attribute>
			<xsl:if test="SRC"><xsl:attribute name="SRC"><xsl:value-of select="SRC"/></xsl:attribute></xsl:if>
		</xsl:element>
	</xsl:template>

<!-- Do nothing templates -->
	<xsl:template match="REPORT-ITEM[@type='button' or @type='radio-button' or @type='option-group' or @type='bound-object-frame' or @type='subform' or @type='chart' or @type='object-frame' or @type='page-break' or @type='activex-control' or @type='toggle-button' or @type='tab-control' or @type='tab-page' or @type='attachment-control']">
	</xsl:template>

	<xsl:template match="ENCODED-CONTROL-SOURCE[text()!='']">
		<xsl:variable name="nDataType" select="gen:GetDataType(string(../CONTROL-SOURCE))" />
		<xsl:choose>
			<xsl:when test="$nDataType=128 or $nDataType=204 or $nDataType=205">
				<xsl:element name="xsl:if">
					<xsl:attribute name="test"><xsl:value-of select="text()"/></xsl:attribute>
					[...]
				</xsl:element>
			</xsl:when>
			<xsl:when test="../../../LAYOUT='grid'">
				<xsl:call-template name="Control">
					<xsl:with-param name="argNode" select="." />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:element name="span">
					<xsl:attribute name="class"><xsl:value-of select="../CLASS"/></xsl:attribute>
					<xsl:attribute name="style"><xsl:value-of select="gen:GetTextStyle(.., false())"/><xsl:if test="../CAN-GROW='false'">; OVERFLOW: hidden</xsl:if>; POSITION: absolute</xsl:attribute>
					<xsl:call-template name="Control">
						<xsl:with-param name="argNode" select="." />
					</xsl:call-template>
				</xsl:element>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="Control">
		<xsl:param name="argNode" />
		<xsl:choose>
			<xsl:when test="$argNode/../BOUND-TO-HYPERLINK='true' or $argNode/../IS-HYPERLINK='true'">
				<xsl:variable name="HLinkName" select="concat('HLINK_', $argNode)"/>
				<xsl:element name="xsl:variable">
					<xsl:attribute name="name"><xsl:value-of select="$HLinkName"/></xsl:attribute>
					<xsl:attribute name="select">string(<xsl:value-of disable-output-escaping="no"  select="gen:ConvertControlSource($argNode)"/>)</xsl:attribute>
				</xsl:element>
				<xsl:element name="xsl:if">	
					<xsl:attribute name="test">string-length($<xsl:value-of select="$HLinkName"/>) &gt; 0</xsl:attribute>
					<xsl:element name="a">
						<xsl:element name="xsl:attribute">
							<xsl:attribute name="name">href</xsl:attribute>
							<xsl:element name="xsl:value-of">		
								<xsl:attribute name="select">fx:HyperlinkPartFromString($<xsl:value-of select="$HLinkName"/>, 5)</xsl:attribute>
							</xsl:element>
						</xsl:element>							
						<xsl:element name="xsl:attribute">
							<xsl:attribute name="name">title</xsl:attribute>
							<xsl:element name="xsl:value-of">		
								<xsl:attribute name="select">fx:HyperlinkPartFromString($<xsl:value-of select="$HLinkName"/>, 4)</xsl:attribute>
							</xsl:element>
						</xsl:element>	
						<xsl:element name="xsl:value-of">
							<xsl:attribute name="select">fx:HyperlinkPartFromString($<xsl:value-of select="$HLinkName"/>, 0)</xsl:attribute>
						</xsl:element>
					</xsl:element>
				</xsl:element>
			</xsl:when>
			<xsl:when test="$argNode/../TEXT-FORMAT='1'">
				<xsl:element name="xsl:value-of">
					<xsl:attribute name="select">
						<xsl:value-of disable-output-escaping="no"  select="gen:ConvertControlSource($argNode)"/>	
					</xsl:attribute>
					<xsl:attribute name="disable-output-escaping">yes</xsl:attribute>
				</xsl:element>
			</xsl:when>
			<xsl:otherwise>
				<xsl:element name="xsl:value-of">
					<xsl:attribute name="select">
						<xsl:value-of disable-output-escaping="no"  select="gen:ConvertControlSource($argNode)"/>	
					</xsl:attribute>
				</xsl:element>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

<!-- CAPTION templates -->
	<xsl:template match="CAPTION">
		<xsl:element name="span">
			<xsl:if test="../CLASS"><xsl:attribute name="class"><xsl:value-of select="../CLASS"/></xsl:attribute></xsl:if>
			<xsl:attribute name="style"><xsl:value-of select="gen:GetTextStyle(.., false())"/>; OVERFLOW: hidden; POSITION: absolute</xsl:attribute>
			<xsl:choose>
				<xsl:when test="../HREF">
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="../HREF" /></xsl:attribute>
						<xsl:value-of select="text()" />
					</xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="text()" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:element>
	</xsl:template>

<!-- COLUMN-WIDTH templates -->
	<xsl:template match="COLUMN-WIDTH">
		<xsl:element name="col">
			<xsl:attribute name="style"><xsl:value-of select="gen:GetTextStyle(../../../SECTION[@type='detail']/REPORT-ITEM[@id=current()/../@parent], false())"/>WIDTH: <xsl:value-of select="text()" /></xsl:attribute>
		</xsl:element>
	</xsl:template>

<!-- Script used in this XSL -->	
	<msxsl:script language="JScript" implements-prefix="gen"  ><![CDATA[

		var gRPTML = null;
		function CacheRPTML(nodelist)
			{
			gRPTML = nodelist.item(0)
			return "";
			}

		function GetGroupNameFromNode(objGroup)
			{
			return GetNodeText(objGroup , "@id", "");
			}
					
		function GetGroupName(nodelist)
			{
			var objGroup = nodelist.item(0);
			return GetGroupNameFromNode(objGroup);
			}			
			
		function GetGroupUse(nodelist)
			{
			var objGroup = nodelist.item(0);
			return GetGroupUseFromNode(objGroup);
			}
			
		function GetGroupUseFromNode(objGroup)
			{
			var prevGroup = GetPreviousGroup(objGroup);
			var strUse = GetGroupOnFromNode(objGroup);

			if (prevGroup == null)
				return "string(" + strUse + ")";
				
			while (prevGroup != null) 
				{
				strUse = GetGroupOnFromNode(prevGroup) + ", '-'," + strUse;
				prevGroup = GetPreviousGroup(prevGroup);
				}
			strUse = "concat(" + strUse + ")";
			return strUse;
			}
			
		function GetGroupOnFromNode(objGroup)
			{
			var strGroupOn = GetNodeText(objGroup, "GROUP-ON", "");
			var strInterval = GetNodeText(objGroup, "GROUP-INTERVAL", "");
			var strControlSource = ConvertControlSourceFromNode(objGroup.selectSingleNode("ENCODED-CONTROL-SOURCE"), true);
			
			switch (strGroupOn) 
				{
				case "each value":
					return strControlSource;
				case "prefix characters":
					break;
				case "year":
					strInterval = "4";
					break;
				case "quarter":
					return "fx:GroupValue_quarter(string(" + strControlSource + "))";
				case "month":
					strInterval = "7";
					break;
				case "week":
					return "fx:GroupValue_week(string(" + strControlSource + "))";
				case "day":
					strInterval = "10";
					break;
				case "hour":
					strInterval = "13";
					break;
				case "minute":
					strInterval = "16";
					break;
				case "interval":
					return "fx:GroupValue_interval(number(" + strControlSource + "), " + strInterval + ")";
				}
			
			return "substring(" + strControlSource + ", 1, " + strInterval + ")";
			}

		function GetPreviousGroup(objGroup)
			{				
			var prevGroup = objGroup.previousSibling;
			while (prevGroup.nodeName == "GROUP-LEVEL") 
				{
				if (GetNodeText(prevGroup, "GROUP-HEADER", "") == "true" || GetNodeText(prevGroup, "GROUP-FOOTER", "") == "true") 
					return prevGroup;
				prevGroup = prevGroup.previousSibling;
				}
			return null;
			}

		function GetGroupSort(nodelist)
			{
			return GetGroupSortFromNode(nodelist.item(0));
			}
		
		function GetGroupSortFromNode(objGroup)
			{
			var strSort = GetSingleGroupSortFromNode(objGroup);
			var prevGroup = objGroup.previousSibling;
			
			while (prevGroup.nodeName == "GROUP-LEVEL") 
				{
				if (GetNodeText(prevGroup, "GROUP-HEADER", "") == "true" || GetNodeText(prevGroup, "GROUP-FOOTER", "") == "true")  
					break;
				strSort = GetSingleGroupSortFromNode(prevGroup) + strSort;
				prevGroup = prevGroup.previousSibling;
				}
				
			return strSort;
			}
						
		function GetSingleGroupSortFromNode(objGroup)
			{
			var strSelect = " select=\"" + GetGroupOnFromNode(objGroup)  + "\"";			
			var strOrder = " order=\"" + GetNodeText(objGroup, "SORT-ORDER", "") + "\"";

			var strDataType = "";
			var strSource = GetNodeText(objGroup, "CONTROL-SOURCE", "");
			if (IsNumberType(GetDataType(strSource), true, true))
				strDataType = " data-type=\"number\"";
			else
				strDataType = " data-type=\"text\"";

			var strSort = "<xsl:sort" + strSelect + strOrder + strDataType +  " />\n";
			
			
			return strSort;
			}			

		function GetGroupKey(nodelist)
			{
			return GetGroupKeyFromNode(nodelist.item(0));
			}

		function GetGroupKeyFromNode(objGroup)
			{
			var strGroupName =  GetGroupNameFromNode(objGroup);
			var strControlSource = GetGroupUseFromNode(objGroup)
			return "key('" + strGroupName + "', " + strControlSource  + ")";
			}
		
		function GetGroupForEachStart(nodelist)
			{
			// e.g. 	<xsl:for-each select="Invoices[count(. | key('Invoices-by-OrderID', OrderID)">
			
			var objGroup = nodelist.item(0);
			var prevGroup = GetPreviousGroup(objGroup);

			var strGroupName =  GetGroupName(nodelist);
			var objGroup = nodelist.item(0);
			var strRecordSource = "";
			
			if (prevGroup == null)
				strRecordSource  = GetNodeText(objGroup , "../XML-RECORD-SOURCE", ""); 
			else
				strRecordSource  = GetGroupKeyFromNode(prevGroup);
				
			var strSelect = strRecordSource + "[count(. | " + GetGroupKeyFromNode(objGroup) + "[1]) = 1]";
			var strSort = GetGroupSort(nodelist);
			
			return  "\n<xsl:for-each select=\"" + strSelect + "\">\n" + strSort;
			}
			
		function GetGroupForEachEnd(nodelist)
			{
			return  "</xsl:for-each>";
			}

		function FixExpression(nodelist, replaceWithExpr)
			{
			var objElem = nodelist.item(0);
			return FixExpressionFromNode(objElem, replaceWithExpr==1);
			}

		var rgTotal = new Array("Sum", "Count", "Avg", "Min", "Max");
		

		function FixExpressionFromNode(objElem, fReplaceWithExpr)
			{
			var objNodes;
			var strExpr = objElem.text;

			//
			// Check for values that are not expressions such as running sums on controls that are not bound to expressions 
			//
			var strType = GetNodeText(objElem, "@type", "");
			if (strType != "expression")
				strExpr = "[" + strExpr + "]";


			strExpr = FixInnerQuotes(strExpr);

			// Replace things like left$( with just left(
			strExpr = strExpr.replace(/\$\(/g, '(');

			// Replace Date() with StaticDate()
			strExpr = strExpr.replace(/date\(\)/gi, 'StaticDate()');

			// Replace Now() with StaticNow()
			strExpr = strExpr.replace(/now\(\)/gi, 'StaticNow()');

			strExpr = strExpr.replace(/\[page\]/gi, 'Page()');
			strExpr = strExpr.replace(/\[pages\]/gi, 'Pages()');

			strExpr = strExpr.replace(/is\s+null/gi, '= \"\"');
			strExpr = strExpr.replace(/is\s+not\s+null/gi, '<> \"\"');

			strExpr = FixNzFunction(strExpr);

			//
			// Replace references to other expressions with the dynamically generated expression gExpr_*
			//

			if (objElem.selectSingleNode("@id") != null)
				objNodes = objElem.selectNodes("/RPTML/REPORT[1]/SECTION/REPORT-ITEM[@id != '' and @id != '" + objElem.selectSingleNode("@id").text + "']");
			else
				objNodes = objElem.selectNodes("/RPTML/REPORT[1]/SECTION/REPORT-ITEM[@id != '']");

			for (var iNode = 0; iNode < objNodes.length; iNode++)
				{
				var objNode = objNodes.item(iNode);					
				var strRunningSum = GetNodeText(objNode, "RUNNING-SUM", "");
				strType = GetNodeText(objNode, "ENCODED-CONTROL-SOURCE/@type", "");

				if (strType == "expression" || strRunningSum == "over group" || strRunningSum == "over all")
					{
					var strNodeID = objNode.selectSingleNode("@id").text;
					var strSource = "";
					if (fReplaceWithExpr)
						strSource = ((strRunningSum == "over group" || strRunningSum == "over all") ? "gRunningSum_" : "gExpr_") + GenerateVBName(strNodeID);
					else if (strType == "expression")
						strSource = objNode.selectSingleNode("ENCODED-CONTROL-SOURCE").text;

					if (strSource != "")
						strExpr = strExpr.replace(new RegExp("\\[" + strNodeID + "\\]", "gi"), "(" + strSource + ")");
					}
				}

			if (!FIsValidExpression(strExpr))
				return "\"\"";

			//
			// Replace all references to fields with GetValue statement
			//

			strExpr = FixGetValue(strExpr);				

			//
			// Fix up all instances of total functions (sum, count, avg, min, max)
			//
			for (var iTotal = 0; iTotal < rgTotal.length; iTotal++)
				{
				strExpr = FixAggregate(rgTotal[iTotal], strExpr);					
				}				

			strExpr = FixFormat(strExpr);

			return strExpr;
			}

		function FixFormat(strExpr)
			{
			var strFunctionName = "Format";
			if (strExpr == null || strExpr.length == 0 || strExpr.match(new RegExp(strFunctionName + "\\(", "i")) == null)
				return strExpr;

			var strInFunction = "";
			var strAfterFunction = "";
			var strBeforeFunction = strExpr.replace(new RegExp("\^(.*)" + strFunctionName + ".*$", "i"), "$1" + strFunctionName + "\(");
			var strTemp = strExpr.replace(new RegExp("\^.*" + strFunctionName + "\\(", "i"), "");
			// find matching parens
			var len = strTemp.length
			var count = 1;
			for(var i=0; i<len; i++)
				{
				if (count > 0) //before the matching paren
					{
					if (strTemp.charAt(i) == '(')
						count++;
					else if (strTemp.charAt(i) == ')')
						count--;
					if (count > 0)
						strInFunction += strTemp.charAt(i);
					}
				else //after the matching paren
					{
					strAfterFunction += strTemp.charAt(i);
					}
				}

			var nType = GetDataType(strInFunction);
			
			return strBeforeFunction + strInFunction + ", \"\", \"\", " + nType + ")" + strAfterFunction;
			}


		function FixAggregate(strFunctionName, strExpr)
			{
			if (strExpr == null || strExpr.length == 0 || strExpr.match(new RegExp(strFunctionName + "\\(", "i")) == null)
				return strExpr;

			var strInFunction = "";
			var strAfterFunction = "";
			// var strBeforeFunction = strExpr.replace(new RegExp("\^(.*)" + strFunctionName + ".*$", "i"), "$1" + strFunctionName + "\(");
			var strBeforeFunction = strExpr.replace(new RegExp("\^(.*)" + strFunctionName + ".*$", "i"), "$1");
			var strTemp = strExpr.replace(new RegExp("\^.*" + strFunctionName + "\\(", "i"), "");
			// find matching parens
			var len = strTemp.length
			var count = 1;
			for(var i=0; i<len; i++)
				{
				if (count > 0) //before the matching paren
					{
					if (strTemp.charAt(i) == '(')
						count++;
					else if (strTemp.charAt(i) == ')')
						count--;
					if (count > 0)
						strInFunction += strTemp.charAt(i);
					}
				else //after the matching paren
					{
					strAfterFunction += strTemp.charAt(i);
					}
				}

			// return strBeforeFunction + "\"" + DoubleQuotes(strInFunction) + "\")" + strAfterFunction;
			return FixAggregate(strFunctionName, strBeforeFunction) + strFunctionName + "(\"" + 
					DoubleQuotes(strInFunction) + "\")" + 
					FixAggregate(strFunctionName, strAfterFunction);
			}

		function FixGetValue(strExpr)
			{
			if (strExpr == null || strExpr.length == 0 || strExpr.match(/^[^\[]*\[[^\]]*\]/) == null)
				return strExpr;
						
			var strBeforeFunction = strExpr.replace(/^([^\[]*)\[.*$/, "$1");
			var strInFunction = FixupFieldNames(strExpr.replace(/^[^\[]*\[([^\]]*)\].*$/, "$1"), false, false);
			var strAfterFunction = strExpr.replace(/^[^\[]*\[[^\]]*\](.*)$/, "$1");
			var nDataType = GetDataType(strInFunction);
			strInFunction = FixupFieldNames(strInFunction, true, false);

			return strBeforeFunction + "GetValue(\"" + strInFunction + "\", " + nDataType + ")" + FixGetValue(strAfterFunction);
			}

		function FixNzFunction(strExpr)
			{
			if (strExpr == null || strExpr.length == 0 || strExpr.match(/nz\(/gi) == null)
				return strExpr;

			var strInFunction = "";
			var strAfterFunction = "";
			var strBeforeFunction = strExpr.replace(new RegExp("\^(.*)nz.*$", "i"), "$1Nz\(");
			var strTemp = strExpr.replace(new RegExp("\^.*nz\\(", "i"), "");
			// find matching parens
			var len = strTemp.length
			var count = 1;
			for(var i=0; i<len; i++)
				{
				if (count > 0) //before the matching paren
					{
					if (strTemp.charAt(i) == '(')
						count++;
					else if (strTemp.charAt(i) == ')')
						count--;
					if (count > 0)
						strInFunction += strTemp.charAt(i);
					}
				else //after the matching paren
					{
					strAfterFunction += strTemp.charAt(i);
					}
				}

			if (strInFunction.match(/,/) == null)
				return strBeforeFunction + strInFunction + ",\"\")" + strAfterFunction;
			else 
				return strExpr;
			}

		var arrNames = new Array();
		function GenerateVBName(strDesiredName)
			{			
			for (var i=0; i<arrNames.length; i++)
				{
				if (arrNames[i] == strDesiredName)
					return i;
				}

			arrNames = arrNames.concat(strDesiredName);
			return i;
			}

		function ConvertControlSource(nodelist)
			{
			return ConvertControlSourceFromNode(nodelist.item(0), false);
			}
			
		function ConvertControlSourceFromNode(objElem, fGrouping)
			{
			var strType = GetNodeText(objElem, "@type", "");
			var strRunningSum = GetNodeText(objElem, "../RUNNING-SUM", "");

			if (fGrouping && strType == "expression")
				return "fx:GroupExpr_" + GenerateVBName(GetNodeText(objElem, "../@id", "")) + "(.)";
			else if (strType == "expression" || strRunningSum == "over group" || strRunningSum == "over all")
				return "fx:ExprFromXSL_" + GenerateVBName(GetNodeText(objElem, "../@id", "")) + "()";
			else if (fGrouping)
				return objElem.text;
			else
				return AddFormattingFromNode("fx:FormatFromXSL", objElem.text, objElem);
			}

		function AddFormatting(strFunctionName, strRef, nodelist)
			{
			return AddFormattingFromNode(strFunctionName, strRef, nodelist.item(0));
			}
			
		function AddFormattingFromNode(strFunctionName, strRef, objElem)
			{
			if (strRef == "\"\"")
				return strRef;

			var strFormat = GetNodeText(objElem, "../FORMAT", "");
			var strQuote;
			var strFormat;
			var strNewRef;
			var strDecimalPlaces = "";
			var strLcid = "";
			var nType = GetDataType(GetNodeText(objElem, "../CONTROL-SOURCE", ""));
			
			if (strFunctionName == "fx:FormatFromXSL")
				{
				strQuote = "'";
				strFormat = DoubleSingleQuotes(strFormat);
				strNewRef = strQuote + FixupFieldNames(objElem.text, true, false) + strQuote;
				}
			else
				{
				strQuote = "\"";
				strFormat = DoubleQuotes(strFormat);
				strNewRef = strRef;
				}	

			switch (strFormat)
				{		
				case "General Number":
				case "General Date":
				case "Long Date":
				case "Long Time":
				case "Medium Time":
				case "Short Time":
				case "True/False":
				case "Yes/No":
				case "On/Off":
				case "Medium Date":
				case "Short Date":
					break;
				case "Currency":		
					strDecimalPlaces = GetNodeText(objElem, "../DECIMAL-PLACES", "2");
					strLcid = GetNodeText(objElem, "../FORMAT-LCID", "");			
					break;
				case "Euro":
					strDecimalPlaces = GetNodeText(objElem, "../DECIMAL-PLACES", "2");
					strLcid = GetNodeText(objElem, "../FORMAT-LCID", "");			
					break;
				case "Fixed":
				case "Standard":
				case "Percent":
				case "Scientific":
					strDecimalPlaces = GetNodeText(objElem, "../DECIMAL-PLACES", "2");
					break;
				default :
					switch (nType)
						{
						case 6:  		// adCurrency
							strDecimalPlaces = GetNodeText(objElem, "../DECIMAL-PLACES", "2");
							strLcid = GetNodeText(objElem, "../FORMAT-LCID", "");			
							break;
						case 7:		// adDate
						case 133:	// adDBDate
						case 134: 	// adDBTime
						case 135:	// adDBTimeStamp
							break;
						default :
							// Only skip the formatting if the format property was empty and
							// the data type was not currency or date.
							if (strFormat == "")
								{
								// If we are in the report or page header or footer,
								// we need to tack on $GlobalGroup/
								var strSectionType = GetNodeText(objElem, "../../@type", "");
								if (strFunctionName == "fx:FormatFromXSL")
									{
									switch (strSectionType)
										{
										case "report_header":
										case "page_header":
										case "report_footer":
										case "page_footer":
											return "$GlobalGroup/" + strRef;
										}
									}
								return strRef;
								}
							break;
						}
					break;
				}

			return strFunctionName + "(" + strNewRef + ", " 
									+ strQuote + strFormat + strQuote + ", " 
									+ strQuote + strDecimalPlaces + strQuote + ", " 
									+ strQuote + strLcid + strQuote + ", " 
									+ nType + ")";
			}

		function GetDataType(strFieldName)
			{
			var strRecordSource = null;
			var objRowSource = null;
			var datatype = null;

			strRecordSource = GetNodeText(gRPTML, "/RPTML/REPORT/ENCODED-RECORD-SOURCE", "");
			strRecordSource = strRecordSource.replace(/^[ ]*(.+[^ ])[ ]*$/, '$1');		// remove spaces from beginning and end
			objRowSource = gRPTML.selectSingleNode("/RPTML/REPORT[1]/DATA-MODEL/ROW-SOURCE[@id='" + strRecordSource + "']");

			if (objRowSource == null && !CaseInsensitiveCompare("SELECT", strRecordSource.substr(0, 6)))
				{
				// If the RECORD-SOURCE is of the form dbo.Table we need to remove the dbo and try again.
				var arrParts = strRecordSource.split(".");			
				if (arrParts.length == 2)				// If RECORD-SOURCE was split into 2 parts
					{
					strRecordSource = arrParts[1];	// Take the second part.  
					objRowSource = gRPTML.selectSingleNode("/RPTML/REPORT[1]/DATA-MODEL/ROW-SOURCE[@id='" + strRecordSource + "']");
					}
				}

			if (objRowSource != null)
				datatype = objRowSource.selectSingleNode("FIELD[@id='" + FixupFieldNames(strFieldName, false, true) + "']/@datatype");

			if (datatype != null)
				return Number(datatype.text);

			return 8; // string type
			}

		function IsNumberType(nDataType, fIsDateANumber, fDefault)
			{
			switch (nDataType)
				{
				case 16:	// adTinyInt
				case 2:		// adSmallInt
				case 3:		// adInteger
				case 20:	// adBigInt
				case 17:	// adUnsignedTinyInt
				case 18:	// adUnsignedSmallInt
				case 19:	// adUnsignedInt
				case 21:	// adUnsignedBigInt
				case 4:		// adSingle
				case 5:		// adDouble
				case 6:		// adCurrency
				case 14:	// adDecimal
				case 131:	// adNumeric
				case 139:	// adVarNumeric
				case 11:	// adBoolean
					return true;
				case 7:		// adDate
				case 133:	// adDBDate
				case 134:	// adDBTime
				case 135:	// adDBTimeStamp
					return fIsDateANumber;
				case 8:		// adBSTR
				case 120:	// adChar
				case 200:	// adVarChar
				case 201:	// adLongVarChar
				case 130:	// adWChar:
				case 202:	// adVarWChar
				case 203:	// adLongVarWChar
					return false;
				default:
					return fDefault;
				}
			}

		var rgTextAttr = new Array("COLOR", "BACKGROUND-COLOR", "BORDER-WIDTH", "BORDER-COLOR", "TEXT-ALIGN", "WRITING-MODE", "VISIBILITY",
								   "FONT-WEIGHT", "FONT-SIZE", "FONT-FAMILY", "FONT-STYLE", "LEFT", "TOP", "WIDTH", "HEIGHT", "TEXT-DECORATION",
								   "PADDING-TOP", "PADDING-BOTTOM", "PADDING-RIGHT", "PADDING-LEFT");
								   
		function GetTextStyle(nodelist, fIsSection)
			{
			var objSource;
			var objClass;
			var objWidth;
			var objElem = nodelist.item(0);
			var strStyle = GetBorderStyle(objElem);
			objSource = SelectSingleNodeNoThrow(objElem,"CONTROL-SOURCE");
			objClass = SelectSingleNodeNoThrow(objElem, "CLASS");
			objWidth = SelectSingleNodeNoThrow(objElem,"WIDTH");

			var objTextAlign = null;
			if (objClass != null)
				objTextAlign = objElem.selectSingleNode("/RPTML/REPORT[1]/STYLE[@id='" + objClass.text + "']/TEXT-ALIGN");
			if (objSource != null && (objTextAlign == null ||objTextAlign.text == "general") && IsNumberType(GetDataType(objSource.text), true, false))
				strStyle = strStyle + "TEXT-ALIGN: right; ";

			if (objWidth == null && fIsSection)
				{
				var strWidth = GetNodeText(objElem, "/RPTML/REPORT[1]/WIDTH", "");
				if (strWidth != "")
					strStyle = strStyle + "WIDTH: " + strWidth + "; ";
				}
				
			return strStyle + GetItemStyle(objElem, rgTextAttr);
			}

		function GetBorderStyle(objElem)
			{
			var objBS;
			objBS = SelectSingleNodeNoThrow(objElem,"BORDER-STYLE");

			if (objBS != null)
				{
				if (objBS.text == "solid" || objBS.text == "double-solid")
					return "BORDER-STYLE: solid; ";
				if (objBS.text == "dashed" || objBS.text == "short-dashes" || objBS.text == "dash-dot")
					return "BORDER-STYLE: dashed; ";
				if (objBS.text == "dotted" || objBS.text == "sparse-dots" || objBS.text == "dash-dot-dot")
					return "BORDER-STYLE: dotted; ";
				return "BORDER-STYLE: " + objBS.text + "; ";
				}
			return "";
			}

		var rgCheckboxStyle = new Array("LEFT", "TOP", "HEIGHT", "VISIBILITY");

		function GetCheckboxStyle(nodelist)
			{
			return GetItemStyle(nodelist.item(0), rgCheckboxStyle);
			}

		var rgHyperlinkAttr = new Array("BORDER-WIDTH", "BORDER-COLOR", "BORDER-STYLE", "TEXT-ALIGN",
										"FONT-WEIGHT", "FONT-SIZE", "FONT-FAMILY", "FONT-STYLE", "VISIBILITY", "LEFT", "TOP", "WIDTH", "HEIGHT");

		function GetHyperlinkStyle(nodelist)
			{
			return GetItemStyle(nodelist.item(0), rgHyperlinkAttr);
			}

		var rgLineAttr = new Array("COLOR", "BACKGROUND-COLOR", "BORDER-WIDTH", "BORDER-COLOR", "BORDER-STYLE", "VISIBILITY",
								   "LEFT", "TOP");

		function GetLineStyle(nodelist)
			{
			var objElem = nodelist.item(0);
			var strStyle = GetItemStyle(objElem, rgLineAttr);

			var objBorder = GetStyleNode(objElem, "BORDER-WIDTH");
			if (objBorder != null)
				{
				var strWidth = objElem.selectSingleNode("WIDTH").text;
				if (strWidth == "0in")
					strWidth = objBorder.text;

				var strHeight = objElem.selectSingleNode("HEIGHT").text;
				if (strHeight == "0in")
					strHeight = objBorder.text;

				if (strStyle.length > 0)
					strStyle = strStyle + "; ";
				strStyle = strStyle + "WIDTH: " + strWidth;
				strStyle = strStyle + "; HEIGHT: " + strHeight;
				}

			return strStyle;
			}

		var rgRectAttr = new Array("COLOR", "BACKGROUND-COLOR", "BORDER-WIDTH", "BORDER-COLOR", "BORDER-STYLE", "VISIBILITY",
								   "LEFT", "TOP", "WIDTH", "HEIGHT");

		function GetRectangleStyle(nodelist)
			{
			return GetItemStyle(nodelist.item(0), rgRectAttr);
			}

		var rgImageAttr = new Array("BORDER-WIDTH", "BORDER-COLOR", "BORDER-STYLE", "VISIBILITY",
								    "LEFT", "TOP", "WIDTH", "HEIGHT");

		function GetImageStyle(nodelist)
			{
			var objElem = nodelist.item(0);
			var strStyle = GetItemStyle(objElem, rgImageAttr);

			if (strStyle.length > 0)
				strStyle = strStyle + "; ";
			strStyle = strStyle + "BACKGROUND-COLOR: silver";

			return strStyle;
			}

		var rgBodyAttr = new Array("BACKGROUND-POSITION", "BACKGROUND-REPEAT");

		function GetBodyStyle(nodelist)
			{
			var objElem = nodelist.item(0);
			var strStyle = "";
			var objImage = objElem.selectSingleNode("/RPTML/REPORT[1]/BACKGROUND-IMAGE")
			if (objImage != null) 
				{
				strStyle = "BACKGROUND-IMAGE:url('" + objImage.text + "'); ";
				strStyle += GetItemStyle(objElem.selectSingleNode("/RPTML/REPORT[1]"), rgBodyAttr);
				}		
					
			return strStyle;
			}	

		function GetItemStyle(objElem, rgAttr)
			{
			var cStyles = 0;
			var strStyle = "";
			for (var iAttr in rgAttr)
				if (SelectSingleNodeNoThrow(objElem, rgAttr[iAttr]) != null)
					{
					if (cStyles > 0)
						strStyle = strStyle + "; ";
					strStyle = strStyle + rgAttr[iAttr] + ": " + objElem.selectSingleNode(rgAttr[iAttr]).text;
					cStyles++;
					}

			return strStyle;
			}

		function GetStyleNode(objElem, strName)
			{
			var objWidth = objElem.selectSingleNode(strName);
			if (objWidth == null)
				objWidth = objElem.selectSingleNode("/RPTML/REPORT[1]/STYLE[@id='"+objElem.selectSingleNode("CLASS").text+"']/" + strName);
			return objWidth;
			}

		//
		// Gets the Field name from a table.field name, also makes sure field is correct case
		//
		function FixupFieldNames(strField, fConvertSpaces, fRequireDataModel)
			{
			var strFieldName = strField.replace(/.*\./, ''); //strip out table in table.field
			var objFields = gRPTML.selectNodes("/RPTML/REPORT[1]/DATA-MODEL/ROW-SOURCE/FIELD[@id]");
			var strTemp = "";

			for (var i = 0; i < objFields.length; i++)
				{
				strTemp = GetNodeText(objFields.item(i), "@id", "");
				if (CaseInsensitiveCompare(strTemp, strFieldName) || CaseInsensitiveCompare(strTemp, strField))
					{			
					return (fConvertSpaces ? GetNodeText(objFields.item(i), "@encoded-id", "") : strTemp);
					}
				}
			return (fRequireDataModel ? "" : (fConvertSpaces ? CleanUpFieldName(strFieldName) : strFieldName));
			}	

		function CaseInsensitiveCompare(str1, str2)
			{
			return str1.toUpperCase() == str2.toUpperCase();
			}

		function CleanUpFieldName(strFieldName)
			{
			strTemp = strFieldName.replace(/ /g, '_x0020_'); // spaces in data xml are _x0020_
			var lFirstChar = strTemp.charCodeAt(0) - 48;  
			if (lFirstChar > -1 && lFirstChar < 10)
				{
				strTemp = "_x003" + lFirstChar + "_" + strTemp.substr(1); // replace initial #
				}
			return strTemp;
			}

		function DoubleQuotes(strExpr)
			{
			return strExpr.replace(/\"/g, "\"\"");
			}
			
		function DoubleSingleQuotes(strExpr)
			{
			return strExpr.replace(/\'/g, "''");
			}
			
		function GetCheckboxCondition(nodelist)
			{
			var objElem = nodelist.item(0);
			var objSource = objElem.selectSingleNode("ENCODED-CONTROL-SOURCE");
			if (objSource != null)
				{
				if (GetNodeText(objSource, "@type", "") == "expression")
					{
					return ConvertControlSourceFromNode(objSource, false);
					}
				else
					{
					var strSource = FixupFieldNames(objSource.text, true, false);

					// Always return a boolean
					return "fx:GetValue('" + strSource + "', 11)";				
					}
				}
			return '0';
			}
	
		function GetNodeTextFromNodeList(nodelist, strPath, strDefault)
			{			
			return GetNodeText(nodelist.item(0), strPath, strDefault);
			}

		function GetNodeText(objNode, strPath, strDefault)
			{
			var objResult;
			if (objNode != null)
				objResult = objNode.selectSingleNode(strPath);
			return (objResult != null ? objResult.text : strDefault);
			}	

		function FixInnerQuotes(strExpr)
			{
			var fNeedMatchSingleQuote = false;
			var fNeedMatchDoubleQuote = false;
			var fIsSingleQuote = false;
			var fIsDoubleQuote = false;
			var len = strExpr.length;
			var strTemp = "";
			for(var i=0; i<len; i++)
				{
				fIsDoubleQuote = strExpr.charAt(i) == '"';
				fIsSingleQuote = strExpr.charAt(i) == "'";
				if (fIsSingleQuote || fIsDoubleQuote)
					{
					if (fNeedMatchSingleQuote)
						{
						if (fIsDoubleQuote)
							{
							strTemp += "\"\"";
							}
						else
							{
							strTemp += "\"";
							fNeedMatchSingleQuote = false;
							}
						}
					else if (fNeedMatchDoubleQuote)
						{
						if (fIsDoubleQuote)
							{
							strTemp += "\"";
							fNeedMatchDoubleQuote = false;
							}
						else
							{
							strTemp += "'";
							}
						}
					else // found a beginning qoute
						{
						if (fIsDoubleQuote)
							fNeedMatchDoubleQuote = true;
						else
							fNeedMatchSingleQuote = true;
						strTemp += "\"";
						}
					}
				else
					{
					strTemp += strExpr.charAt(i);
					}
				}
				return strTemp;
			}

		function FIsValidExpression(strSource)
			{
			if ((strSource.match(/\!/i) != null) || 
				(strSource.match(/\[Forms\]\!/i) != null) || 
				(strSource.match(/Forms\!/i) != null) ||
				(strSource.match(/Forms\([^\!]*\!/i) != null) ||
				(strSource.match(/\[Reports\]\!/i) != null)  || 
				(strSource.match(/Reports\!/i) != null) ||
				(strSource.match(/Reports\([^\!]*\!/i) != null) ||
				(strSource.match(/\[Form\]\!/i) != null) || 
				(strSource.match(/Form\!/i) != null) ||
				(strSource.match(/Form\([^\!]*\!/i) != null) ||
				(strSource.match(/\[Report\]\!/i) != null)  || 
				(strSource.match(/Report\!/i) != null) ||
				(strSource.match(/Report\([^\!]*\!/i) != null))
				return false;
			else
				return true;
			}

		function SmartTagHTML(fBeginTag)
			{
			var strHTMLtag = "";

			if (fBeginTag)
				strHTMLtag += "<html";
			else
				strHTMLtag += ">";

			return strHTMLtag;
			}

		function NonSmartTagHTML(fOpenTag)
			{
			var strHTMLtag = "";

			if (fOpenTag)
				strHTMLtag += "<html>";
			else
				strHTMLtag += "</html>";

			return strHTMLtag;
			}
			
		function GetSmartTag(nodelist, fOpenTag)
			{
			var objElem = nodelist.item(0);
			var strTag = "<";
			var objTagPrefix = objElem.selectSingleNode("SMART-TAG-PREFIX");
			var objTagName = objElem.selectSingleNode("SMART-TAG-NAME");
			var strTagPrefix = objTagPrefix.text;
			var strTagName = objTagName.text;

			if (!fOpenTag)
				strTag += "/";

			strTag += strTagPrefix;
			strTag += ":";
			strTag += strTagName;
			strTag += ">";

			return strTag;
			}

		var iCtrlID = 1;
		function GetNextCtrlID()
			{
			return "CTRL" + (iCtrlID++);
			}

		function StylesheetStart()
			{
			return "<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt' xmlns:fx='#fx-functions' exclude-result-prefixes='msxsl fx'>\n";
			}

		function StylesheetEnd()
			{
			return "\n</xsl:stylesheet>";
			}
			
		function SelectSingleNodeNoThrow(objElm, strXPath)
		{
			var objRet;
			try
			{
				objRet = objElm.selectSingleNode(strXPath);
			}
			catch(e)
			{
			}
			return objRet;
		}
			
	]]></msxsl:script>

</xsl:stylesheet>

