<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>
<xsl:import href='../utilities/excerpt.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span6">
			<div class="padleftright">
				<xsl:call-template name="excerpt">
					<xsl:with-param name="path" select="newshome/entry" />
				</xsl:call-template>
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

</xsl:stylesheet>