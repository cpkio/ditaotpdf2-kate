<?xml version='1.0'?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:comparer="com.idiominc.ws.opentopic.xsl.extension.CompareStrings"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder"
    exclude-result-prefixes="xs opentopic-index comparer opentopic-func ot-placeholder">

    <!--
    <xsl:template match="opentopic-index:index.entry" mode="get-see-value">
        <fo:inline>
            <xsl:apply-templates select="opentopic-index:formatted-value/node()"/>
            <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-value"/>
        </fo:inline>
    </xsl:template>

    <xsl:template match="opentopic-index:index.entry" mode="get-see-value-prev">
        <fo:inline>
            <xsl:apply-templates select="opentopic-index:formatted-value/node()"/>
            <xsl:text>: </xsl:text>
            <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-value"/>
        </fo:inline>
    </xsl:template>

    <xsl:template match="opentopic-index:see-childs" mode="index-postprocess">
        <xsl:choose>
            <xsl:when test="parent::*[@no-page = 'true']">
                <fo:inline xsl:use-attribute-sets="index.see.label">
                    <xsl:call-template name="getVariable">
                        <xsl:with-param name="id" select="'Index See String'"/>
                    </xsl:call-template>
                </fo:inline>
                <fo:basic-link>
                    <xsl:attribute name="internal-destination">
                        <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-destination"/>
                    </xsl:attribute>
                    <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-value-prev"/>
                </fo:basic-link>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="output-message">
                  <xsl:with-param name="id" select="'PDFX011E'"/>
                  <xsl:with-param name="msgparams">
                    <xsl:text>%1=</xsl:text><xsl:value-of select="if (following-sibling::opentopic-index:see-also-childs) then 'index-see-also' else 'indexterm'"/>
                    <xsl:text>;</xsl:text>
                    <xsl:text>%2=</xsl:text><xsl:value-of select="../@value"/>
                  </xsl:with-param>
                </xsl:call-template>
                <fo:block xsl:use-attribute-sets="index.entry__content">
                    <fo:inline xsl:use-attribute-sets="index.see-also.label">
                        <xsl:call-template name="getVariable">
                            <xsl:with-param name="id" select="'Index See Also String'"/>
                        </xsl:call-template>
                    </fo:inline>
                    <fo:basic-link>
                        <xsl:attribute name="internal-destination">
                            <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-destination"/>
                        </xsl:attribute>
                        <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-value"/>
                    </fo:basic-link>
                </fo:block>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="opentopic-index:see-also-childs" mode="index-postprocess">
        <fo:block xsl:use-attribute-sets="index.see-also-entry__content">
            <fo:inline xsl:use-attribute-sets="index.see-also.label">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Index See Also String'"/>
                </xsl:call-template>
            </fo:inline>
            <fo:basic-link>
                <xsl:attribute name="internal-destination">
                    <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-destination"/>
                </xsl:attribute>
                <xsl:apply-templates select="opentopic-index:index.entry[1]" mode="get-see-value-prev"/>
            </fo:basic-link>
        </fo:block>
    </xsl:template>
    -->

</xsl:stylesheet>
