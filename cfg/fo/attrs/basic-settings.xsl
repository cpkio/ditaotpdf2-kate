<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">

  <xsl:param name="tocMaximumLevel" select="6"/>

  <!-- This is the default, but you can set the margins individually below. -->
  <xsl:variable name="page-margins">20mm</xsl:variable>

  <!-- Change these if your page has different margins on different sides. -->
  <xsl:variable name="page-margin-inside">20mm</xsl:variable>
  <xsl:variable name="page-margin-outside">20mm</xsl:variable>
  <xsl:variable name="page-margin-top">20mm</xsl:variable>
  <xsl:variable name="page-margin-bottom">20mm</xsl:variable>

  <!--The side column width is the amount the body text is indented relative to the margin. -->
  <xsl:variable name="side-col-width">20pt</xsl:variable>

  <xsl:variable name="mirror-page-margins" select="true()"/>

  <xsl:variable name="default-font-size">10pt</xsl:variable>
  <xsl:variable name="default-line-height">12pt</xsl:variable>

  <xsl:variable name="generate-front-cover" select="true()"/>
  <xsl:variable name="generate-back-cover" select="false()"/>
  <xsl:variable name="generate-toc" select="true()"/>

</xsl:stylesheet>
