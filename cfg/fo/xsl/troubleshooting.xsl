<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:dita2xslfo="http://dita-ot.sourceforge.net/ns/200910/dita2xslfo"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    exclude-result-prefixes="opentopic opentopic-index dita2xslfo"
    version="2.0">

    <xsl:template match="*[contains(@class, ' troubleshooting/troubleSolution ')]">
        <fo:block xsl:use-attribute-sets="troublesolution">
            <xsl:choose>
                <xsl:when test="(count(preceding-sibling::*[contains(@class, ' troubleshooting/troubleSolution ')]) mod 2) = 0">
                    <xsl:attribute name="background-color">rgb(247, 247, 247)</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="background-color">transparent</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class,' troubleshooting/condition ')]">
        <xsl:variable name="troubleTopicConditionImagePath">
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'troubleshooting Topic Condition Image Path'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="not($troubleTopicConditionImagePath = '')">
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block>
                                        <fo:external-graphic src="url('{concat($artworkPrefix, $troubleTopicConditionImagePath)}')"
                                            content-height="2em" padding-right="3pt"
                                            vertical-align="middle"
                                            baseline-shift="baseline"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="note__text__entry">
                                    <xsl:apply-templates/>
                                </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:otherwise>
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block/>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="note__text__entry">
                                    <xsl:apply-templates/>
                                </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="*[contains(@class,' troubleshooting/cause ')]">
        <xsl:variable name="troubleTopicCauseImagePath">
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'troubleshooting Topic Cause Image Path'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="not($troubleTopicCauseImagePath = '')">
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block>
                                        <fo:external-graphic src="url('{concat($artworkPrefix, $troubleTopicCauseImagePath)}')"
                                            content-height="2em" padding-right="3pt"
                                            vertical-align="middle"
                                            baseline-shift="baseline"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="note__text__entry">
                                    <xsl:apply-templates/>
                                </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:otherwise>
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block/>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="note__text__entry">
                                    <xsl:apply-templates/>
                                </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="*[contains(@class,' troubleshooting/remedy ')]">
        <xsl:variable name="troubleTopicRemedyImagePath">
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'troubleshooting Topic Remedy Image Path'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="not($troubleTopicRemedyImagePath = '')">
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block>
                                        <fo:external-graphic src="url('{concat($artworkPrefix, $troubleTopicRemedyImagePath)}')"
                                            content-height="2em" padding-right="3pt"
                                            vertical-align="middle"
                                            baseline-shift="baseline"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="note__text__entry">
                                    <xsl:apply-templates/>
                                </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:otherwise>
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block/>
                                </fo:table-cell>
                                <fo:table-cell xsl:use-attribute-sets="note__text__entry">
                                    <xsl:apply-templates/>
                                </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
