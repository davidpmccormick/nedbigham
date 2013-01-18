<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
  <ul class="clearfix">
    <xsl:apply-templates select="page">
      <xsl:with-param name="path" select="$root" />
      <xsl:with-param name="collapse" select="'yes'" />
    </xsl:apply-templates>
  </ul>
</xsl:template>

<xsl:template match="page">
  <xsl:param name="path" select="''" />
  <xsl:param name="collapse" select="'no'" />
  <xsl:if test="not(types/type = 'hidden') and not(types/type = 'admin')">
    <li>
      <xsl:if test="@id = $current-page-id">
        <xsl:attribute name="class">active</xsl:attribute>
      </xsl:if>
      <xsl:if test="descendant::node()[@id = $current-page-id]">
        <xsl:attribute name="class">activeparent</xsl:attribute>
      </xsl:if>
      <a href="{$path}/{@handle}/">
	    	<br /><xsl:value-of select="name"/>
      </a>
      <xsl:if test="page != '' and ($collapse = 'no' or descendant-or-self::node()[@id = $current-page-id])">
        <ul>
          <xsl:apply-templates select="page">
            <xsl:with-param name="path" select="concat($path,'/',@handle)" />
            <xsl:with-param name="collapse" select="$collapse" />
          </xsl:apply-templates>
        </ul>
      </xsl:if>
    </li>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>