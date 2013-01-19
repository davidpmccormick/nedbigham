<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>
<xsl:import href='../utilities/archivemonths.xsl'/>

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
					<xsl:call-template name="archivemonths" />
				</ul>
			</div>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>