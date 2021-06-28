<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <!--Common-->
    <xsl:attribute-set name="li.itemgroup">
        <xsl:attribute name="space-after">1pt</xsl:attribute>
        <xsl:attribute name="space-before">1pt</xsl:attribute>
    </xsl:attribute-set>

    <!--Unordered list-->
    <xsl:attribute-set name="ul" use-attribute-sets="common.block">
        <xsl:attribute name="space-before">0em</xsl:attribute>
        <xsl:attribute name="space-after">0em</xsl:attribute>
        <xsl:attribute name="provisional-distance-between-starts">3mm</xsl:attribute>
        <xsl:attribute name="provisional-label-separation">2mm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ul.li">
        <xsl:attribute name="space-after">1.5pt</xsl:attribute>
        <xsl:attribute name="space-before">1.5pt</xsl:attribute>
        <xsl:attribute name="relative-align">baseline</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ul.li__label">
        <xsl:attribute name="keep-together.within-line">always</xsl:attribute>
        <xsl:attribute name="end-indent">label-end()</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ul.li__label__content">
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ul.li__body">
        <xsl:attribute name="start-indent">body-start()</xsl:attribute>
        <!-- Этот отступ позволяет сместить тело списка вправо, чтобы в маркер
        списка поместилось длинное тире (см. "Unordered List bullet" в ru.xml -->
        <xsl:attribute name="margin-left">14pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ul.li__content">
    </xsl:attribute-set>

    <!--Ordered list-->
    <xsl:attribute-set name="ol" use-attribute-sets="common.block">
        <xsl:attribute name="provisional-distance-between-starts">5mm</xsl:attribute>
        <xsl:attribute name="provisional-label-separation">1mm</xsl:attribute>
<!--    <xsl:attribute name="margin-left">-8pt</xsl:attribute>-->
    </xsl:attribute-set>

    <xsl:attribute-set name="ol.li">
        <xsl:attribute name="space-after">1.5pt</xsl:attribute>
        <xsl:attribute name="space-before">1.5pt</xsl:attribute>
        <xsl:attribute name="relative-align">baseline</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ol.li__label">
        <xsl:attribute name="keep-together.within-line">always</xsl:attribute>
        <xsl:attribute name="end-indent">label-end()</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ol.li__label__content">
        <xsl:attribute name="text-align">start</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ol.li__body">
        <xsl:attribute name="start-indent">body-start()</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ol.li__content">
    </xsl:attribute-set>

    <!--Simple list-->
    <xsl:attribute-set name="sl" use-attribute-sets="common.block">
        <xsl:attribute name="provisional-distance-between-starts">5mm</xsl:attribute>
        <xsl:attribute name="provisional-label-separation">1mm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="sl.sli">
        <xsl:attribute name="space-after">1.5pt</xsl:attribute>
        <xsl:attribute name="space-before">1.5pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="sl.sli__label">
        <xsl:attribute name="keep-together.within-line">always</xsl:attribute>
        <xsl:attribute name="end-indent">label-end()</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="sl.sli__label__content">
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="sl.sli__body">
        <xsl:attribute name="start-indent">body-start()</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="sl.sli__content">
    </xsl:attribute-set>

</xsl:stylesheet>
