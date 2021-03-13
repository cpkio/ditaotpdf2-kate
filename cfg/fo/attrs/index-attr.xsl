<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:opentopic-index="http://www.idiominc.com/opentopic/index" xmlns:fo="http://www.w3.org/1999/XSL/Format"
  exclude-result-prefixes="opentopic-index" version="2.0">

  <xsl:variable name="index.indent" select="'12pt'"/>

  <xsl:attribute-set name="__index__letter-group">
    <!-- <xsl:attribute name="font-size">12pt</xsl:attribute> -->
    <!-- <xsl:attribute name="font-weight">bold</xsl:attribute> -->
    <!-- <xsl:attribute name="space-after">7pt</xsl:attribute> -->
    <!-- <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute> -->
    <xsl:attribute name="border-bottom">1pt solid</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="index.entry__content">
    <xsl:attribute name="hyphenate">true</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="index.see-also-entry__content" use-attribute-sets="index.entry__content">
    <xsl:attribute name="start-indent"><xsl:value-of select="$index.indent"/> * 1.5</xsl:attribute>
    <xsl:attribute name="hyphenate">true</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="index.see.label">
    <xsl:attribute name="font-style">italic</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="index.see-also.label">
    <xsl:attribute name="font-style">italic</xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>
