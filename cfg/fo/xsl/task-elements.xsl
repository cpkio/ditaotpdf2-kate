<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:dita2xslfo="http://dita-ot.sourceforge.net/ns/200910/dita2xslfo"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    exclude-result-prefixes="opentopic opentopic-index dita2xslfo"
    version="2.0">

    <xsl:template match="*[contains(@class, ' topic/title ')]/*[contains(@class, ' ui-d/wintitle ')]">
        <xsl:text>«</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>»</xsl:text>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' task/stepxmp ')]">
      <fo:block xsl:use-attribute-sets="stepxmp">
        <xsl:call-template name="commonattributes"/>
          <fo:inline xsl:use-attribute-sets="stepxmp.title">
          <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Step Example'"/>
          </xsl:call-template>
          </fo:inline>
        <xsl:apply-templates/>
      </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class,' task/steptroubleshooting ')]">
        <xsl:variable name="troubleImagePath">
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'troubleshooting Image Path'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="not($troubleImagePath = '')">
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block>
                                        <fo:external-graphic src="url('{concat($artworkPrefix, $troubleImagePath)}')"
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

    <xsl:template match="*[contains(@class,' task/tasktroubleshooting ')]">
        <xsl:variable name="troubleTaskImagePath">
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'troubleshooting Task Image Path'"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="not($troubleTaskImagePath = '')">
                <fo:table xsl:use-attribute-sets="note__table">
                    <fo:table-column xsl:use-attribute-sets="note__image__column"/>
                    <fo:table-column xsl:use-attribute-sets="note__text__column"/>
                    <fo:table-body>
                        <fo:table-row>
                                <fo:table-cell xsl:use-attribute-sets="note__image__entry">
                                    <fo:block>
                                        <fo:external-graphic src="url('{concat($artworkPrefix, $troubleTaskImagePath)}')"
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
