<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:dita2xslfo="http://dita-ot.sourceforge.net/ns/200910/dita2xslfo"
xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
exclude-result-prefixes="opentopic-func xs dita2xslfo dita-ot"
version="2.0">

<xsl:template match="*[contains(@class, ' topic/simpletable ')]/*[contains(@class, ' topic/strow ')]">
    <fo:table-row xsl:use-attribute-sets="strow">
        <xsl:choose>
            <xsl:when test="(count(preceding-sibling::*[contains(@class, ' topic/strow ')]) mod 2) = 0">
                <!-- Even row -->
                <xsl:attribute name="background-color">rgb(239, 239, 239)</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <!-- Odd row -->
                <xsl:attribute name="background-color">transparent</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:call-template name="commonattributes"/>
        <xsl:apply-templates/>
    </fo:table-row>
</xsl:template>

<xsl:template match="*[contains(@class, ' topic/tbody ')]/*[contains(@class, ' topic/row ')]">
    <fo:table-row xsl:use-attribute-sets="tbody.row">
        <xsl:choose>
            <xsl:when test="(count(preceding-sibling::*[contains(@class, ' topic/row ')]) mod 2) = 0">
                <!-- Even row -->
                <xsl:attribute name="background-color">rgb(239, 239, 239)</xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <!-- Odd row -->
                <xsl:attribute name="background-color">transparent</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:call-template name="commonattributes"/>
        <xsl:apply-templates/>
    </fo:table-row>
</xsl:template>

</xsl:stylesheet>
