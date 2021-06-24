<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

    <xsl:attribute-set name="linklist">
    </xsl:attribute-set>

    <xsl:attribute-set name="linklist.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="linklist.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="linkpool">
    </xsl:attribute-set>

    <xsl:attribute-set name="linktext">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links">
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links__content">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ul" use-attribute-sets="ul">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ul.li" use-attribute-sets="ul.li">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ul.li__label" use-attribute-sets="ul.li__label">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ul.li__label__content" use-attribute-sets="ul.li__label__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ul.li__body" use-attribute-sets="ul.li__body">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ul.li__content" use-attribute-sets="ul.li__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ol" use-attribute-sets="ol">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ol.li" use-attribute-sets="ol.li">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ol.li__label" use-attribute-sets="ol.li__label">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ol.li__label__content" use-attribute-sets="ol.li__label__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ol.li__body" use-attribute-sets="ol.li__body">
    </xsl:attribute-set>

    <xsl:attribute-set name="related-links.ol.li__content" use-attribute-sets="ol.li__content">
    </xsl:attribute-set>

    <!-- FIXME: is this obsolete? -->
    <xsl:attribute-set name="related-links.title">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="linkinfo">
    </xsl:attribute-set>

    <xsl:attribute-set name="link">
        <xsl:attribute name="space-after">2pt</xsl:attribute>
        <xsl:attribute name="space-before">2pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="link__content" use-attribute-sets="common.link">
    </xsl:attribute-set>

    <xsl:attribute-set name="link__shortdesc">
        <xsl:attribute name="space-after">6pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="linkpool">
    </xsl:attribute-set>

    <xsl:attribute-set name="xref" use-attribute-sets="common.link">
    </xsl:attribute-set>

</xsl:stylesheet>
