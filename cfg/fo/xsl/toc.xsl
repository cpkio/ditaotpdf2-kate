<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder"
    exclude-result-prefixes="xs dita-ot opentopic opentopic-func ot-placeholder opentopic-index"
    version="2.0">

    <xsl:template match="*[contains(@class, ' topic/topic ')]" mode="toc">
        <xsl:param name="include"/>
        <xsl:variable name="topicLevel" as="xs:integer">
          <xsl:apply-templates select="." mode="get-topic-level"/>
        </xsl:variable>
        <xsl:if test="$topicLevel &lt; $tocMaximumLevel">
            <xsl:variable name="mapTopicref" select="key('map-id', @id)[1]" as="element()?"/>
            <xsl:choose>
              <!-- In a future version, suppressing Notices in the TOC should not be hard-coded. -->
              <xsl:when test="$retain-bookmap-order and $mapTopicref/self::*[contains(@class, ' bookmap/notices ')]"/>

              <xsl:when test="$mapTopicref[@toc = 'yes' or not(@toc)] or
                              (not($mapTopicref) and $include = 'true')">

        <fo:table>
            <fo:table-column column-number="1" xsl:use-attribute-sets="__toc__table__prefixcolumn"/>
            <fo:table-column column-number="2"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell xsl:use-attribute-sets="__toc__table__prefixcell">
                        <fo:block>
                            <xsl:apply-templates select="$mapTopicref" mode="tocPrefix"/>
                        </fo:block>
                    </fo:table-cell>

                    <fo:table-cell xsl:use-attribute-sets="__toc__table__contentcell">
                        <fo:block xsl:use-attribute-sets="__toc__indent">
                        <xsl:variable name="tocItemContent">
                          <fo:basic-link xsl:use-attribute-sets="__toc__link">
                            <xsl:attribute name="internal-destination">
                              <xsl:call-template name="generate-toc-id"/>
                            </xsl:attribute>
                            <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]/revprop[@changebar]" mode="changebar">
                                <xsl:with-param name="changebar-id" select="concat(dita-ot:generate-changebar-id(.),'-toc')"/>
                            </xsl:apply-templates>
                            <fo:inline xsl:use-attribute-sets="__toc__title">
                                <xsl:variable name="pulledNavigationTitle" as="item()*">
                                    <xsl:call-template name="getNavTitle" />
                                </xsl:variable>
                                <xsl:apply-templates select="$pulledNavigationTitle" mode="dropCopiedIds"/>
                            </fo:inline>
                            <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-endprop ')]/revprop[@changebar]" mode="changebar">
                                <xsl:with-param name="changebar-id" select="concat(dita-ot:generate-changebar-id(.),'-toc')"/>
                            </xsl:apply-templates>
                            <fo:inline xsl:use-attribute-sets="__toc__page-number">
                                <fo:leader xsl:use-attribute-sets="__toc__leader"/>
                                <fo:page-number-citation>
                                  <xsl:attribute name="ref-id">
                                    <xsl:call-template name="generate-toc-id"/>
                                  </xsl:attribute>
                                </fo:page-number-citation>
                            </fo:inline>
                        </fo:basic-link>
                        </xsl:variable>

                        <xsl:choose>
                          <xsl:when test="not($mapTopicref)">
                            <xsl:apply-templates select="." mode="tocText">
                              <xsl:with-param name="tocItemContent" select="$tocItemContent"/>
                              <xsl:with-param name="currentNode" select="."/>
                            </xsl:apply-templates>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:apply-templates select="$mapTopicref" mode="tocText">
                              <xsl:with-param name="tocItemContent" select="$tocItemContent"/>
                              <xsl:with-param name="currentNode" select="."/>
                            </xsl:apply-templates>
                          </xsl:otherwise>
                        </xsl:choose>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>

                    <xsl:apply-templates mode="toc">
                        <xsl:with-param name="include" select="'true'"/>
                    </xsl:apply-templates>

              </xsl:when>
              <xsl:otherwise>
                <xsl:apply-templates mode="toc">
                        <xsl:with-param name="include" select="'true'"/>
                </xsl:apply-templates>
              </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/chapter ')] |
                         *[contains(@class, ' bookmap/bookmap ')]/opentopic:map/*[contains(@class, ' map/topicref ')]" mode="tocPrefix" priority="-1">

    <fo:block xsl:use-attribute-sets="__toc__chapter__content __toc__prefix__realign">
        <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Table of Contents Chapter'"/>
            <xsl:with-param name="params">
                <number>
                    <xsl:apply-templates select="." mode="topicTitleNumber"/>
                </number>
            </xsl:with-param>
        </xsl:call-template>
    </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/appendices ')]" mode="tocPrefix"/>

    <xsl:template match="*[contains(@class, ' bookmap/appendix ')]" mode="tocPrefix">
    <fo:block xsl:use-attribute-sets="__toc__appendix__content __toc__prefix__realign">
        <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Table of Contents Appendix'"/>
            <xsl:with-param name="params">
                <number>
                    <xsl:apply-templates select="." mode="topicTitleNumber"/>
                </number>
            </xsl:with-param>
        </xsl:call-template>
    </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/part ')]" mode="tocPrefix">
    <fo:block xsl:use-attribute-sets="__toc__part__content __toc__prefix__realign">
        <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Table of Contents Part'"/>
            <xsl:with-param name="params">
                <number>
                    <xsl:apply-templates select="." mode="topicTitleNumber"/>
                </number>
            </xsl:with-param>
        </xsl:call-template>
    </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/preface ')]" mode="tocPrefix">
    <fo:block xsl:use-attribute-sets="__toc__preface__content">
        <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Table of Contents Preface'"/>
        </xsl:call-template>
    </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/notices ')]" mode="tocPrefix">
    <fo:block xsl:use-attribute-sets="__toc__notices__content">
        <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="'Table of Contents Notices'"/>
        </xsl:call-template>
    </fo:block>
    </xsl:template>

    <xsl:template match="node()" mode="tocPrefix" priority="-10"/>

    <xsl:template match="*[contains(@class, ' bookmap/chapter ')] |
                         opentopic:map/*[contains(@class, ' map/topicref ')]" mode="tocText" priority="-1">
        <xsl:param name="tocItemContent"/>
        <xsl:param name="currentNode"/>
        <xsl:for-each select="$currentNode">
          <fo:block xsl:use-attribute-sets="__toc__chapter__content">
              <xsl:copy-of select="$tocItemContent"/>
          </fo:block>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/appendix ')]" mode="tocText">
        <xsl:param name="tocItemContent"/>
        <xsl:param name="currentNode"/>
        <xsl:for-each select="$currentNode">
          <fo:block xsl:use-attribute-sets="__toc__appendix__content">
              <xsl:copy-of select="$tocItemContent"/>
          </fo:block>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/part ')]" mode="tocText">
        <xsl:param name="tocItemContent"/>
        <xsl:param name="currentNode"/>
        <xsl:for-each select="$currentNode">
          <fo:block xsl:use-attribute-sets="__toc__part__content">
              <xsl:copy-of select="$tocItemContent"/>
          </fo:block>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/preface ')]" mode="tocText">
        <xsl:param name="tocItemContent"/>
        <xsl:param name="currentNode"/>
        <xsl:for-each select="$currentNode">
          <fo:block xsl:use-attribute-sets="__toc__preface__content">
              <xsl:copy-of select="$tocItemContent"/>
          </fo:block>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' bookmap/notices ')]" mode="tocText">
        <xsl:param name="tocItemContent"/>
        <xsl:param name="currentNode"/>
        <xsl:for-each select="$currentNode">
          <fo:block xsl:use-attribute-sets="__toc__notices__content">
              <xsl:copy-of select="$tocItemContent"/>
          </fo:block>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="node()" mode="tocText" priority="-10">
        <xsl:param name="tocItemContent"/>
        <xsl:param name="currentNode"/>
        <xsl:for-each select="$currentNode">
          <fo:block xsl:use-attribute-sets="__toc__topic__content">
              <xsl:copy-of select="$tocItemContent"/>
          </fo:block>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
