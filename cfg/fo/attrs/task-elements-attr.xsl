<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <xsl:attribute-set name="choicetable" use-attribute-sets="base-font">
        <xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="choicetable__body"></xsl:attribute-set>

    <xsl:attribute-set name="chhead">
        <xsl:attribute name="border-bottom">2pt solid black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="chhead__row"></xsl:attribute-set>

    <xsl:attribute-set name="chrow"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.choptionhd"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.choptionhd__content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.chdeschd"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.chdeschd__content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.choption"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.choption__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.choption__content" use-attribute-sets="common.table.body.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.chdesc"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.chdesc__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.chdesc__content" use-attribute-sets="common.table.body.entry"></xsl:attribute-set>
</xsl:stylesheet>