<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row">
		<div class="span12" style="margin-top:20px;margin-bottom:20px;">
		
		
		
		
	    <ul id="myTab" class="nav nav-tabs" style="box-shadow:none!important;padding-left:20px;">
	    	<xsl:for-each select="listenvideos/entry">
	    		<li>
	    			<xsl:if test="position() = 1">
	    				<xsl:attribute name="class">
	    					<xsl:text>active</xsl:text>
	    				</xsl:attribute>
	    			</xsl:if>
	    			<a href="#{title/@handle}" data-toggle="tab"><xsl:value-of select="title" /></a>
	    		</li>
	    	</xsl:for-each>
	    </ul>
	    <div id="myTabContent" class="tab-content">
	    	<xsl:for-each select="listenvideos/entry">
		      <div id="{title/@handle}">
		      	<xsl:attribute name="class">
		      		<xsl:text>tab-pane fade</xsl:text>
		      		<xsl:if test="position() = 1">
		      			<xsl:text> in active</xsl:text>
		      		</xsl:if>
		      	</xsl:attribute>
			      <iframe id="vimeoplayer{position()}" class="thevideo" src="http://player.vimeo.com/video/{video-id}?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff&amp;api=1&amp;player_id=vimeoplayer{position()}" width="100%" frameborder="0"></iframe>
		      </div>
	    	</xsl:for-each>
	    </div>
	    
	    
	    
	    
		
		</div>
	</div>
	<div class="span12">
		<audio preload="preload"></audio>
	</div>	
	<xsl:apply-templates select="listenentries/entry" />	
</xsl:template>

<xsl:template match="listenentries/entry">
	<div class="row">
		<div class="span6">
			<div class="padleftright">
				<article>
					<h2><xsl:value-of select="title" /></h2>
		      <ol style="margin-top:10px;">
		      	<xsl:apply-templates select="tracks/item" />
		      </ol>
				</article>
			</div>
		</div>
		<div class="span6">
			<div class="padleftright">
				<div class="cyclethistoo albumart hidden-phone">
					<xsl:if test="artwork != ''">
						<xsl:for-each select="artwork/item">
							<img src="{$root}/image/2/530/530/5/0/assets/images/{image/filename}" width="100%" />
						</xsl:for-each>
					</xsl:if>
				</div>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template match="listenentries/entry/tracks/item">
	<li><a href="#" data-src="{$workspace}/assets/audio/{file/filename}"><xsl:value-of select="title" /></a></li>
</xsl:template>

</xsl:stylesheet>