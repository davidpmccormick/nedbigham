<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>
<xsl:import href='../utilities/pagination.xsl'/>
<xsl:import href='../utilities/archivemonths.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span8">
			<div class="padleftright">
				<xsl:apply-templates select="newsindex/entry" />
				<xsl:call-template name="pagination">
					<xsl:with-param name="pagination" select="/data/newsindex/pagination" />
					<xsl:with-param name="pagination-url" select="'/news/$'" />
					<xsl:with-param name="show-navigation" select="true()" />
					<xsl:with-param name="show-range" select="10" />
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


<xsl:template match="newsindex/entry">
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
</xsl:template>

</xsl:stylesheet>