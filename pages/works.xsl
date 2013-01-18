<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/html5.xsl" />

<xsl:template match="data">
	<div class="row">
		<div class="span12">
			<div class="padleftright">
				<br />
		    <ul id="myTab" class="nav nav-tabs relative" style="box-shadow:none!important;">
	      	<div style="position:absolute;top:10px;right:0;">
	      		<p class="hidden-phone" style="font-weight:300!important;font-size:10px;">* denotes preview available on <a href="{$root}/listen">listen</a> page</p>
	      	</div>
		      <li class="active"><a href="#performances" data-toggle="tab">Performances</a></li>
		      <li><a href="#works" data-toggle="tab">Discography</a></li>
		    </ul>
		    
		    <div id="myTabContent" class="tab-content">
		    
		      <div class="tab-pane fade in active" id="performances">
						<table style="width:100%;" class="table table-striped table-condensed no-top-border performaces-table table-hover">
							<tr>
								<td><strong>Artist</strong></td>
								<td><strong>Work</strong></td>
								<td><strong>Venue</strong></td>
								<td><strong>Date</strong></td>
							</tr>
							
							<xsl:apply-templates select="performanceentries/entry" />
							
						</table>
		      </div> <!-- end #performances -->
		      
		      <div class="tab-pane fade" id="works">
						<table style="width:100%;" class="table table-striped table-condensed no-top-border works-table table-hover">
							<tr>
								<td><strong>Artist</strong></td>
								<td><strong>Track</strong></td>
								<td><strong>Label</strong></td>
								<td><strong>Format</strong></td>
								<td><strong>Year</strong></td>
								<td><strong>Role</strong></td>
							</tr>
							
							<xsl:apply-templates select="worksentries/entry" />
		
						</table>
		      </div>
		    </div> <!-- end #works -->
				
			</div>
		</div> <!-- end span12 -->

	
		
	</div>
</xsl:template>

<xsl:template match="performanceentries/entry">
<tr>
	<td><xsl:value-of select="artist" /></td>
	<td>
		<xsl:choose>
			<xsl:when test="listen = 'Yes'">
				<a href="{$root}/listen"><xsl:value-of select="work" />*</a>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="work" />
			</xsl:otherwise>
		</xsl:choose>
	</td>
	<td><xsl:value-of select="venue" /></td>
	<td><xsl:value-of select="date" /></td>
</tr>
</xsl:template>

<xsl:template match="worksentries/entry">
<tr>
	<td><xsl:value-of select="artist" /></td>
	<td>
		<xsl:choose>
			<xsl:when test="listen = 'Yes'">
				<a href="{$root}/listen"><xsl:value-of select="track" />*</a>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="track" />
			</xsl:otherwise>
		</xsl:choose>
	</td>
	<td><xsl:value-of select="label" /></td>
	<td><xsl:value-of select="format" /></td>
	<td><xsl:value-of select="year" /></td>
	<td><xsl:value-of select="role" /></td>
</tr>
</xsl:template>



</xsl:stylesheet>