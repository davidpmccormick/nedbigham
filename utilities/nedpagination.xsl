<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="nedpagination">
	<xsl:param name="path" select="''" />
	<xsl:call-template name="pagination">
		<xsl:with-param name="pagination" select="$path" />
		<xsl:with-param name="pagination-url">
			<xsl:value-of select="$root" /><xsl:text>/news/$</xsl:text>
		</xsl:with-param>
		<xsl:with-param name="show-navigation" select="true()" />
		<xsl:with-param name="show-range" select="10" />
	</xsl:call-template>
</xsl:template>


</xsl:stylesheet>