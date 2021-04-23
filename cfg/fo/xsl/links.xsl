<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic-mapmerge="http://www.idiominc.com/opentopic/mapmerge"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:related-links="http://dita-ot.sourceforge.net/ns/200709/related-links"
    xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="dita-ot opentopic-mapmerge opentopic-func related-links xs"
    version="2.0">

  <xsl:template match="*[contains(@class,' topic/linklist ')]/*[contains(@class,' topic/title ')]">
    <xsl:variable name="relImagePath">
      <xsl:call-template name="getVariable">
          <xsl:with-param name="id" select="'related Block Image Path'"/>
      </xsl:call-template>
    </xsl:variable>
    <fo:block xsl:use-attribute-sets="linklist.title">
      <fo:inline baseline-shift="-15%" padding-left="2pt" padding-right="3pt">
        <fo:external-graphic src="url('{concat($artworkPrefix, $relImagePath)}')" content-height="1em"/>
      </fo:inline>
      <xsl:apply-templates select="." mode="customTitleAnchor"/>
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

</xsl:stylesheet>
