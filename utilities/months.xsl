<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="months"> <!-- display a list of 12 months counting back from current month (for e.g. archive) -->
	<xsl:param name="displaymonth" select="$this-month"/> <!-- what we're going to display, starting with current month number -->
	<xsl:param name="countmonths" select="12" /> <!-- months in a year (duh!) -->
	<xsl:variable name="last-year" select="$this-year - 1" /> <!-- last year -->
	
	<xsl:if test="$countmonths &gt; 0">
		<xsl:choose>
			<!-- THIS YEAR -->
			<xsl:when test="$displaymonth &gt; 0">
				<li>
					<xsl:if test="$current-page-id = 6 and $date = concat($this-year,'-',format-number($displaymonth,'00'))">
						<xsl:attribute name="class">
							<xsl:text>active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a href="{$root}/news/archive/{concat($this-year,'-',format-number($displaymonth,'00'))}">
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="concat($this-year,'-',format-number($displaymonth,'00'))" />
						<xsl:with-param name="format" select="'M'" />
					</xsl:call-template>
					</a>
				</li>
			</xsl:when>
			<!-- LAST YEAR -->
			<xsl:otherwise>
				<li>
					<a href="{$root}/news/archive/{concat($last-year,'-',format-number(($displaymonth + 12),'00'))}">
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="concat($last-year,'-',format-number(($displaymonth + 12),'00'))" />
						<xsl:with-param name="format" select="'M'" />
					</xsl:call-template>
					</a>
				</li>
			</xsl:otherwise>
		</xsl:choose>
	
		<xsl:call-template name="months">
			<xsl:with-param name="displaymonth" select="$displaymonth - 1"/>
			<xsl:with-param name="countmonths" select="$countmonths - 1"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>