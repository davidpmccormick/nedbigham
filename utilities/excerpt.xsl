<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="excerpt">
	<xsl:param name="path" select="''" />
	<xsl:for-each select="$path">
		<article class="newsarticle">
			<h2><a href="{$root}/news/view/{title/@handle}"><xsl:value-of select="title" /></a></h2>
			<xsl:if test="date != ''">
				<p class="notsans highlight">
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date" />
						<xsl:with-param name="format" select="'d M, Y'" />
					</xsl:call-template>
				</p>
			</xsl:if>
			<xsl:copy-of select="excerpt/node()" />
			<p><a class="readmore" href="{$root}/news/view/{title/@handle}">Read more&#8230;</a></p>
		</article>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>