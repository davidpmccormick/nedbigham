<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>
<xsl:import href='../utilities/years.xsl'/>
<xsl:import href='../utilities/pagination.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span8">
			<div class="padleftright" style="min-height:1px;">
				<xsl:choose>
					<xsl:when test="$year != ''">
						<h2>News from
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="$year" />
								<xsl:with-param name="format" select="'Y'" />
							</xsl:call-template>
						</h2>
					</xsl:when>
					<xsl:otherwise>
						<h2>Select a year from the list on the right</h2>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:apply-templates select="newsyear/entry" />
				<xsl:call-template name="pagination">
					<xsl:with-param name="pagination" select="/data/newsyear/pagination" />
					<xsl:with-param name="pagination-url">
						<xsl:text>/news/year/</xsl:text><xsl:value-of select="$year" /><xsl:text>/$</xsl:text>
					</xsl:with-param>
					<xsl:with-param name="show-navigation" select="true()" />
					<xsl:with-param name="show-range" select="10" />
				</xsl:call-template>
				<h2><a href="{$root}/news">Back to recent news</a></h2>
			</div>
		</div>
		<div class="span4">
			<div class="padleftright archivepin">
				<h2><a href="{$root}/news">Recent months</a> | <span class="active">By year</span></h2>
				<ul class="archivelist">
					<xsl:call-template name="years" />
				</ul>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template match="newsyear/entry">
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
	</article>
</xsl:template>


</xsl:stylesheet>