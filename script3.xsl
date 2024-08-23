<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="ApplicationData/Loaners/ApplicantDetails">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <ClientINN>500100732259</ClientINN>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="ApplicationData/Loaners/CoApplicantDetails">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <ClientINN>325507450247</ClientINN>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>