<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="SystemData/LoanProducts/Product[@IsSelected='1']/Params">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="RequestedAmount">
                <xsl:value-of select="//ApplicationData/ApplicationInformation/@RequestedAmount"/>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>