<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span8">
			<div class="padleftright" style="min-height:1px;">
				<article>
					<h2><xsl:value-of select="newsview/entry/title" /></h2>
					<xsl:if test="newsview/entry/date != ''">
						<p class="notsans highlight">
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="newsview/entry/date" />
								<xsl:with-param name="format" select="'d M, Y'" />
							</xsl:call-template>
						</p>
					</xsl:if>
					<xsl:copy-of select="newsview/entry/story/node()" />
				</article>
			</div>
		</div>
		<div class="span4">
			<div class="padleftright archivepin">
				<h2><a href="{$root}/news">Recent months</a> | <a href="{$root}/news/year/{$this-year}">By year</a></h2>
				<ul class="archivelist">
					<xsl:apply-templates select="archivemonths/entry" />
				</ul>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template match="archivemonths/entry">
	<xsl:variable name="yearmonth" select="substring(date/date/start,1,7)" />
	<xsl:variable name="thepreceding" select="substring(preceding-sibling::date/date/start,1,7)" />
	<xsl:if test="$yearmonth != $thepreceding">
		<a href="{$root}/news/archive/{$yearmonth}">
			<li>
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="$yearmonth" />
					<xsl:with-param name="format" select="'M'" />
				</xsl:call-template>
			</li>
		</a>
	</xsl:if>
</xsl:template>



</xsl:stylesheet>