<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
<html>
<head>
<title></title>

</head>

<body>
<div id="container">
	<div id="leftpane">
		<form method="" action="" name="" id="">
		<ul>
			<li>
				<label>Events </label>

				<select name="events">
					<xsl:apply-templates select="Event"/>
				</select>
			</li>
		</ul>
		<ul>
			<li>
				<label>Patch Area </label>
				 <select name="patcharea">
				 	<xsl:apply-templates select="/Event/Version"/>
				 </select>
			</li>
		</ul>
		<ul>
			<li>
				<label>Page </label>
				 <select name="page">
				 	<xsl:apply-templates select="/Event/Version/Page"/>
				 </select>
			</li>
		</ul>
		</form>
	
	</div>
</div>	
  </body>
  </html>
</xsl:template>

<xsl:template match="Event">
	<option value="{@EventID}"><xsl:value-of select="@EventName"/>: Event <xsl:value-of select="@EventID"/></option>
</xsl:template>

<xsl:template match="/Event/Version">

	<xsl:for-each select="/Event/Version">
		<option value="{@PatchArea}"><xsl:value-of select="@PatchArea"/></option>
               
	</xsl:for-each>
      
</xsl:template>

<xsl:template match="/Event/Version/Page">

	<xsl:for-each select="/Event/Version/Page">
		<option value="{@Page}"><xsl:value-of select="@Page"/></option>
               
	</xsl:for-each>
      
</xsl:template>



</xsl:stylesheet>






