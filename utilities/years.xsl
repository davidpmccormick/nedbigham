<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="years">
	<xsl:param name="started" select="2010" /> <!-- year the site started -->
	<xsl:param name="counter" select="$this-year" /> <!-- count back from this year -->
	<xsl:if test="$counter &gt;= $started">
		<li>
			<xsl:attribute name="class">
				<xsl:if test="$year = $counter">
					<xsl:text>active</xsl:text>
				</xsl:if>
			</xsl:attribute>
			<a href="{$root}/news/year/{$counter}"><xsl:value-of select="$counter" /></a>
		</li>
		<xsl:call-template name="years">
			<xsl:with-param name="counter" select="$counter - 1" />
		</xsl:call-template>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>