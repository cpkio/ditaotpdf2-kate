<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <xsl:variable name="toc.text-indent" select="'10pt'"/>
    <xsl:variable name="toc.toc-indent" select="'10pt'"/>

    <xsl:attribute-set name="__toc__prefix__realign">
        <xsl:attribute name="last-line-end-indent">0pt</xsl:attribute>
        <xsl:attribute name="end-indent">0pt</xsl:attribute>
        <xsl:attribute name="text-indent">0pt</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
        <xsl:attribute name="text-align-last">right</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__topic__content">
        <xsl:attribute name="last-line-end-indent">0pt</xsl:attribute>
        <xsl:attribute name="end-indent">0pt</xsl:attribute>
        <xsl:attribute name="text-indent">0pt</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
        <xsl:attribute name="text-align-last">justify</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class, ' topic/topic ')])"/>
            <xsl:choose>
                <xsl:when test="$level = 1">12pt</xsl:when>
                <xsl:otherwise><xsl:value-of select="$default-font-size"/></xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
        <xsl:attribute name="font-weight">
            <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class, ' topic/topic ')])"/>
            <xsl:choose>
                <xsl:when test="$level = 1">bold</xsl:when>
                <xsl:otherwise>normal</xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__indent">
        <xsl:attribute name="start-indent">
            <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class, ' topic/topic ')])"/>
            <xsl:value-of select="concat(string($level - 1), ' * ', $toc.toc-indent)"/>
        </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__table__prefixcolumn">
        <xsl:attribute name="column-width">128pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__table__prefixcell">
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__table__contentcell">
        <xsl:attribute name="padding-left"><xsl:value-of select="$toc.text-indent"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__gloss__index__spacing">
        <xsl:attribute name="margin-top"><xsl:value-of select="$default-font-size"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__mini">
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="margin-right">20pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__mini__header">
        <xsl:attribute name="space-after">6pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__mini__list__blocks">
        <!-- <xsl:attribute name="space-after">3pt</xsl:attribute> -->
        <xsl:attribute name="space-before">4pt</xsl:attribute>
        <xsl:attribute name="margin-left">10pt</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
