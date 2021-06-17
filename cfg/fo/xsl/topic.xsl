<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:dita2xslfo="http://dita-ot.sourceforge.net/ns/200910/dita2xslfo"
    xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
    xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder"
    exclude-result-prefixes="dita-ot ot-placeholder opentopic opentopic-index opentopic-func dita2xslfo xs"
    version="2.0">

    <!-- Admonitions (notes, tips, warnings styling -->
    <xsl:param name="note-labels-enabled" select="'no'"/>

    <xsl:template match="*" mode="placeNoteContent">
        <fo:block xsl:use-attribute-sets="note">
            <xsl:call-template name="commonattributes"/>
            <xsl:choose>
                <xsl:when test="$note-labels-enabled = 'yes'">
                    <fo:inline xsl:use-attribute-sets="note__label">
                        <xsl:choose>
                            <xsl:when test="@type='note' or not(@type)">
                                <fo:inline xsl:use-attribute-sets="note__label__note">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Note'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='notice'">
                                <fo:inline xsl:use-attribute-sets="note__label__notice">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Notice'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='tip'">
                                <fo:inline xsl:use-attribute-sets="note__label__tip">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Tip'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='fastpath'">
                                <fo:inline xsl:use-attribute-sets="note__label__fastpath">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Fastpath'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='restriction'">
                                <fo:inline xsl:use-attribute-sets="note__label__restriction">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Restriction'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='important'">
                                <fo:inline xsl:use-attribute-sets="note__label__important">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Important'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='remember'">
                                <fo:inline xsl:use-attribute-sets="note__label__remember">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Remember'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='attention'">
                                <fo:inline xsl:use-attribute-sets="note__label__attention">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Attention'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'attention Note Separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='caution'">
                                <fo:inline xsl:use-attribute-sets="note__label__caution">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Caution'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'caution Note Separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='danger'">
                                <fo:inline xsl:use-attribute-sets="note__label__danger">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Danger'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'danger Note Separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='warning'">
                                <fo:inline xsl:use-attribute-sets="note__label__warning">
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'Warning'"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'warning Note Separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='trouble'">
                            <fo:inline xsl:use-attribute-sets="note__label__trouble">
                                <xsl:call-template name="getVariable">
                                <xsl:with-param name="id" select="'Trouble'"/>
                                </xsl:call-template>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                            </fo:inline>
                            </xsl:when>
                            <xsl:when test="@type='other'">
                                <fo:inline xsl:use-attribute-sets="note__label__other">
                                    <xsl:choose>
                                        <xsl:when test="@othertype">
                                            <xsl:value-of select="@othertype"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>[</xsl:text>
                                            <xsl:value-of select="@type"/>
                                            <xsl:text>]</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:call-template name="getVariable">
                                        <xsl:with-param name="id" select="'#note-separator'"/>
                                    </xsl:call-template>
                                </fo:inline>
                            </xsl:when>
                        </xsl:choose>
                    </fo:inline>
                    <xsl:text> </xsl:text>
                </xsl:when>
            </xsl:choose>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>
