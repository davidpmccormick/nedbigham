<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span12">
			<div class="padleftright">
				<article>
					<h2><xsl:value-of select="profilemain/entry/title" /></h2>
					<xsl:copy-of select="profilemain/entry/body/node()" />
				</article>
			</div>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>