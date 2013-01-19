<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>
<xsl:import href='../utilities/pagination.xsl'/>
<xsl:import href='../utilities/archivemonths.xsl'/>
<xsl:import href='../utilities/excerpt.xsl'/>
<xsl:import href='../utilities/nedpagination.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span8">
			<div class="padleftright">
				<xsl:call-template name="excerpt">
					<xsl:with-param name="path" select="newsindex/entry" />
				</xsl:call-template>
				<xsl:call-template name="nedpagination">
					<xsl:with-param name="path" select="/data/newsindex/pagination" />
				</xsl:call-template>
			</div>
		</div>
		
		<div class="span4">
			<div class="padleftright archivepin">
				<h2><span class="active">Recent months</span> | <a href="{$root}/news/year/{$this-year}">By year</a></h2>
				<ul class="archivelist">
					<xsl:call-template name="archivemonths" />
				</ul>
			</div>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>