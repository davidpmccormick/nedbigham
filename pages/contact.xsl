<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">

	<div class="row">
		<div class="span6">
			<div class="row">
				<div class="span6 stickit">
					<div class="padleftright">
						<h2>Email</h2>
						<p><a href="mailto:ned@oceanbloem.com">ned@oceanbloem.com</a></p>
						<h2>Telephone</h2>
						<p>+44(0)1798 869311</p>
						<h2>Social media</h2>
						<a style="float:left;margin-right:7px;" href="http://www.twitter.com/nedbigham" target="_blank"><img src="{$workspace}/assets/images/twitter_icon.png" alt="twitter" /></a>
						<a style="float:left;margin-right:7px;" href="http://www.facebook.com/nedbighamcomposer" target="_blank"><img src="{$workspace}/assets/images/facebook_icon.png" alt="facebook" /></a>
					</div>
				</div>
				</div>
			</div>
		<div class="span6">
			<div class="padleftright">
				<h2>Links</h2>
				<xsl:apply-templates select="links/entry" />
			</div>
		</div>
	</div> <!-- end .row -->

</xsl:template>

<xsl:template match="links/entry">
	<p><a href="{link-url}" target="_blank"><xsl:value-of select="title" /></a></p>
</xsl:template>

</xsl:stylesheet>