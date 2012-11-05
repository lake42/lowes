<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="class">
    <html>
    <body>
    <xsl:apply-templates select="student"/>
    	<xsl:value-of select="@util"/>

    </body>
    </html>
</xsl:template>
<xsl:template match="student">
    <p>
	<xsl:value-of select="@id"/> - 
    <xsl:value-of select="."/> -
    <xsl:apply-templates select="class"/>
    </p>
</xsl:template>

</xsl:stylesheet>