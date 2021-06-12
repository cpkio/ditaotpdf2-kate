<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic-mapmerge="http://www.idiominc.com/opentopic/mapmerge"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:related-links="http://dita-ot.sourceforge.net/ns/200709/related-links"
    xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="dita-ot opentopic-mapmerge opentopic-func related-links xs"
    version="2.0">

    <xsl:template match="*[contains(@class,' topic/xref ')]" name="topic.xref">

    <xsl:variable name="destination" select="opentopic-func:getDestinationId(@href)"/>
    <xsl:variable name="element" select="key('key_anchor',$destination, $root)[1]" as="element()?"/>

    <xsl:variable name="referenceTitle" as="node()*">
      <xsl:apply-templates select="." mode="insertReferenceTitle">
        <xsl:with-param name="href" select="@href"/>
        <xsl:with-param name="titlePrefix" select="''"/>
        <xsl:with-param name="destination" select="$destination"/>
        <xsl:with-param name="element" select="$element"/>
      </xsl:apply-templates>
    </xsl:variable>

    <fo:basic-link xsl:use-attribute-sets="xref">
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="buildBasicLinkDestination">
        <xsl:with-param name="scope" select="@scope"/>
        <xsl:with-param name="format" select="@format"/>
        <xsl:with-param name="href" select="@href"/>
      </xsl:call-template>

      <xsl:choose>
        <xsl:when test="not(@scope = 'external' or not(empty(@format) or  @format = 'dita')) and exists($referenceTitle)">
          <xsl:copy-of select="$referenceTitle"/>
        </xsl:when>
        <xsl:when test="not(@scope = 'external' or not(empty(@format) or  @format = 'dita'))">
          <xsl:call-template name="insertPageNumberCitation">
            <xsl:with-param name="isTitleEmpty" select="true()"/>
            <xsl:with-param name="destination" select="$destination"/>
            <xsl:with-param name="element" select="$element"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:choose>
            <xsl:when test="*[not(contains(@class,' topic/desc '))] | text()">
              <xsl:apply-templates select="*[not(contains(@class,' topic/desc '))] | text()" />
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@href"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </fo:basic-link>

    <xsl:choose>
        <xsl:when test="@type = 'fig' and not(@scope = 'external' or not(empty(@format) or @format = 'dita')) and exists($referenceTitle) and not($element[contains(@class, ' topic/fn ')])">
                <xsl:call-template name="insertPageNumberCitation">
                    <xsl:with-param name="destination" select="$destination"/>
                    <xsl:with-param name="element" select="$element"/>
                    <xsl:with-param name="isTitleEmpty" select="false()"/>
                    <xsl:with-param name="noNumber" select="true()"/>
                </xsl:call-template>
        </xsl:when>
        <xsl:when test="@type = 'task' and not(@scope = 'external' or not(empty(@format) or @format = 'dita')) and exists($referenceTitle) and not($element[contains(@class, ' topic/fn ')])">
                <xsl:call-template name="insertPageNumberCitation">
                    <xsl:with-param name="destination" select="$destination"/>
                    <xsl:with-param name="element" select="$element"/>
                    <xsl:with-param name="isTitleEmpty" select="true()"/>
                </xsl:call-template>
        </xsl:when>
        <xsl:when test="@type = 'step' and not(@scope = 'external' or not(empty(@format) or @format = 'dita')) and exists($referenceTitle) and not($element[contains(@class, ' topic/fn ')])">
                <xsl:call-template name="insertPageNumberCitation">
                    <xsl:with-param name="destination" select="$destination"/>
                    <xsl:with-param name="element" select="$element"/>
                    <xsl:with-param name="noNumber" select="true()"/>
                </xsl:call-template>
        </xsl:when>
        <xsl:when test="@type = 'topic' and not(@scope = 'external' or not(empty(@format) or @format = 'dita')) and exists($referenceTitle) and not($element[contains(@class, ' topic/fn ')])">
                <xsl:call-template name="insertPageNumberCitation">
                    <xsl:with-param name="destination" select="$destination"/>
                    <xsl:with-param name="element" select="$element"/>
                    <xsl:with-param name="isTitleEmpty" select="true()"/>
                </xsl:call-template>
        </xsl:when>
        <xsl:when test="not(@scope = 'external' or not(empty(@format) or @format = 'dita')) and exists($referenceTitle) and not($element[contains(@class, ' topic/fn ')])">
                <xsl:call-template name="insertPageNumberCitation">
                    <xsl:with-param name="destination" select="$destination"/>
                    <xsl:with-param name="element" select="$element"/>
                </xsl:call-template>
        </xsl:when>
    </xsl:choose>

    </xsl:template>

    <xsl:template name="insertPageNumberCitation">
        <xsl:param name="isTitleEmpty" as="xs:boolean" select="false()"/>
        <xsl:param name="destination" as="xs:string"/>
        <xsl:param name="element" as="element()?"/>
        <xsl:param name="noNumber" as="xs:boolean?" select="false()"/>
        <xsl:choose>
            <xsl:when test="not($element) or ($destination = '') or $noNumber"/>
            <xsl:when test="$isTitleEmpty">
                <fo:inline>
                    <xsl:call-template name="getVariable">
                        <xsl:with-param name="id" select="'Page'"/>
                        <xsl:with-param name="params">
                            <pagenum>
                                <fo:inline>
                                    <fo:page-number-citation ref-id="{$destination}"/>
                                </fo:inline>
                            </pagenum>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <fo:inline>
                    <xsl:call-template name="getVariable">
                        <xsl:with-param name="id" select="'On the page'"/>
                        <xsl:with-param name="params">
                            <pagenum>
                                <fo:inline>
                                    <fo:page-number-citation ref-id="{$destination}"/>
                                </fo:inline>
                            </pagenum>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:inline>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="*[contains(@class,' topic/linklist ')]/*[contains(@class,' topic/title ')]">
        <xsl:variable name="relImagePath">
            <xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'related Block Image Path'"/>
            </xsl:call-template>
        </xsl:variable>
        <fo:block xsl:use-attribute-sets="linklist.title">
            <fo:inline baseline-shift="-15%" padding-left="2pt" padding-right="3pt">
                <fo:external-graphic src="url('{concat($artworkPrefix, $relImagePath)}')" content-height="1em"/>
            </fo:inline>
            <xsl:apply-templates select="." mode="customTitleAnchor"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>
