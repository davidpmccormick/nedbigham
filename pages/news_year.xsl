<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>
<xsl:import href='../utilities/years.xsl'/>
<xsl:import href='../utilities/pagination.xsl'/>
<xsl:import href='../utilities/excerpt.xsl'/>
<xsl:import href='../utilities/nedpagination.xsl'/>

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
				<xsl:call-template name="excerpt">
					<xsl:with-param name="path" select="newsyear/entry" />
				</xsl:call-template>
				<xsl:call-template name="nedpagination">
					<xsl:with-param name="path" select="/data/newsyear/pagination" />
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

</xsl:stylesheet>