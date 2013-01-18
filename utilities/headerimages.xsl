<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="headerimages">
	
		<xsl:choose>
			<xsl:when test="$current-page-id = 1 and /data/homeimages/entry/images != ''">
				<xsl:for-each select="/data/homeimages/entry/images/item">
					<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="$current-page-id = 2 and /data/profileimages/entry/images != ''">
				<xsl:for-each select="/data/profileimages/entry/images/item">
					<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="$current-page-id = 3 and /data/listenimages/entry/images != ''">
				<xsl:for-each select="/data/listenimages/entry/images/item">
					<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="$current-page-id = 4 and /data/newsimages/entry/images != ''">
				<xsl:for-each select="/data/newsimages/entry/images/item">
					<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="$current-page-id = 5 and /data/contactimages/entry/images != ''">
				<xsl:for-each select="/data/contactimages/entry/images/item">
					<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			<!-- for a news view page with images -->
			<xsl:when test="$current-page-id = 7 and /data/newsview/entry/images != ''">
				<xsl:for-each select="/data/newsview/entry/images/item">
					<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			<!-- for a news view page without its own images, show the default news image(s) if there are any -->
			<xsl:when test="$current-page-id = 7 and /data/newsview/entry/images = ''  and /data/newsimages/entry/images != ''">
				<xsl:for-each select="/data/newsimages/entry/images/item">
					<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="$current-page-id = 8 and /data/worksimages/entry/images != ''">
				<xsl:for-each select="/data/worksimages/entry/images/item">
						<img src="{$workspace}/assets/images/{image/filename}" alt="{attribution}" width="100%" height="auto" />
				</xsl:for-each>
			</xsl:when>
			
			<!-- fallback images -->
			<xsl:otherwise>
				<img src="{$workspace}/assets/images/piano.jpg" width="100%" height="auto" />
			</xsl:otherwise>
		</xsl:choose>


</xsl:template>

</xsl:stylesheet>
