<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <xsl:attribute-set name="stepsection">
        <xsl:attribute name="space-before">6pt</xsl:attribute>
        <xsl:attribute name="font-size">smaller</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
        <xsl:attribute name="margin-left">-12pt</xsl:attribute>
        <!-- <xsl:attribute name="padding-left">-8pt</xsl:attribute> -->
    </xsl:attribute-set>

    <xsl:attribute-set name="stepxmp">
        <xsl:attribute name="margin-left">12pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="stepxmp.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="choicetable" use-attribute-sets="base-font __table_common">
        <xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="choicetable__body"></xsl:attribute-set>

    <xsl:attribute-set name="chhead"></xsl:attribute-set>

    <xsl:attribute-set name="chhead__row"></xsl:attribute-set>

    <xsl:attribute-set name="chrow"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.choptionhd" use-attribute-sets="__table_header_entry"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.choptionhd__content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.chdeschd" use-attribute-sets="__table_header_entry"></xsl:attribute-set>

    <xsl:attribute-set name="chhead.chdeschd__content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.choption"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.choption__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.choption__content" use-attribute-sets="common.table.body.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.chdesc"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.chdesc__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry"></xsl:attribute-set>

    <xsl:attribute-set name="chrow.chdesc__content" use-attribute-sets="common.table.body.entry"></xsl:attribute-set>

    <!-- Этот набор атрибутов возможно будет использоваться для стилизации
    блоков steptroubleshooting & tasktroubleshooting -->
    <xsl:attribute-set name="troubleshooting" use-attribute-sets="common.block">
    </xsl:attribute-set>

    <xsl:attribute-set name="steptroubleshooting.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="tasktroubleshooting.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>
