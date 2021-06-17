<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">

  <!-- This is the default, but you can set the margins individually below. -->
  <xsl:variable name="page-margins">20mm</xsl:variable>

  <!-- Change these if your page has different margins on different sides. -->
  <xsl:variable name="page-margin-inside" select="$page-margins"/>
  <xsl:variable name="page-margin-outside" select="$page-margins"/>
  <xsl:variable name="page-margin-top" select="$page-margins"/>
  <xsl:variable name="page-margin-bottom" select="$page-margins"/>

  <!--The side column width is the amount the body text is indented relative to the margin. -->
  <xsl:variable name="side-col-width">25pt</xsl:variable>

  <xsl:variable name="mirror-page-margins" select="false()"/>

  <xsl:variable name="default-font-size">10pt</xsl:variable>
  <xsl:variable name="default-line-height">12pt</xsl:variable>

  <xsl:variable name="generate-front-cover" select="true()"/>
  <xsl:variable name="generate-back-cover" select="false()"/>
  <xsl:variable name="generate-toc" select="true()"/>

</xsl:stylesheet>
