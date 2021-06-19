<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <xsl:attribute-set name="__table_header_entry">
    <xsl:attribute name="background-color">#FAFAFA</xsl:attribute>
    <xsl:attribute name="border-bottom">2pt solid #CCCCCC</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table.title" use-attribute-sets="base-font common.title">
    <xsl:attribute name="space-before">12pt</xsl:attribute>
    <xsl:attribute name="space-after">0pt</xsl:attribute>
    <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table" use-attribute-sets="base-font">
    <!--It is a table container -->
    <xsl:attribute name="space-before">8pt</xsl:attribute>
    <xsl:attribute name="space-after">12pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row" use-attribute-sets="__table_header_entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="simpletable" use-attribute-sets="base-font">
    <!--It is a table container -->
    <xsl:attribute name="width">100%</xsl:attribute>
    <xsl:attribute name="space-before">8pt</xsl:attribute>
    <xsl:attribute name="space-after">12pt</xsl:attribute>
    <xsl:attribute name="border-separation">2pt</xsl:attribute>
    <xsl:attribute name="border-collapse">separate</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="simpletable__body">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead__row">
  </xsl:attribute-set>

  <xsl:attribute-set name="strow">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry" use-attribute-sets="__table_header_entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry__content" use-attribute-sets="common.table.body.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry">
  </xsl:attribute-set>

</xsl:stylesheet>
