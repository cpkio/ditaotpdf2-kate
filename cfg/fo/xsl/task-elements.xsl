<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:dita2xslfo="http://dita-ot.sourceforge.net/ns/200910/dita2xslfo"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    exclude-result-prefixes="opentopic opentopic-index dita2xslfo"
    version="2.0">

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

</xsl:stylesheet>
