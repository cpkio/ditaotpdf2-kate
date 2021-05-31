<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <xsl:attribute-set name="__frontmatter">
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__subtitle" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">80mm</xsl:attribute>
        <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner" use-attribute-sets="common.title">
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container">
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container_content">
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__mainbooktitle">
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__booklibrary">
        <xsl:attribute name="text-transform">uppercase</xsl:attribute>
        <xsl:attribute name="border-bottom">2pt solid black</xsl:attribute>
        <xsl:attribute name="margin-bottom">0.25em</xsl:attribute>
    </xsl:attribute-set>

  <!-- <xsl:attribute-set name="back-cover"> -->
    <!-- <xsl:attribute name="force-page-count">end-on-even</xsl:attribute> -->
  <!-- </xsl:attribute-set> -->
<!--  -->
  <!-- <xsl:attribute-set name="__back-cover"> -->
    <!-- <xsl:attribute name="break-before">even-page</xsl:attribute> -->
  <!-- </xsl:attribute-set> -->
<!--  -->
  <!-- <xsl:attribute-set name="bookmap.summary"> -->
    <!-- <xsl:attribute name="font-size">9pt</xsl:attribute> -->
  <!-- </xsl:attribute-set> -->

</xsl:stylesheet>
