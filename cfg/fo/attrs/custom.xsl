<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <xsl:import href="layout-masters-attr.xsl"/>
    <xsl:import href="front-matter-attr.xsl"/>
    <xsl:import href="commons-attr.xsl"/>
    <xsl:import href="topic-attr.xsl"/>
    <xsl:import href="task-elements-attr.xsl"/>
    <xsl:import href="tables-attr.xsl"/>
    <xsl:import href="index-attr.xsl"/>

    <xsl:attribute-set name="__fo__root" use-attribute-sets="base-font">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
