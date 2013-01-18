<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span6">
			<div class="padleftright">
				<xsl:apply-templates select="newshome/entry" />
				<h2><a href="{$root}/news">More news&#8230;</a></h2>
			</div>
		</div>
		<div class="span6">
			<div class="row">
				<div class="span6 stickit">
					<div class="padleftright" style="margin-bottom:25px;">
						<article>
							<h2><a href="{$root}/biography"><xsl:value-of select="profilehome/entry/title" /></a></h2>
							<xsl:copy-of select="profilehome/entry/excerpt/node()" />
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template match="newshome/entry">
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