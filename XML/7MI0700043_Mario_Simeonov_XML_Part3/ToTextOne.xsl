<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" encoding="UTF-8"/>

	<xsl:template match="/tv_programs">
		<xsl:text>Телевизионна програма - </xsl:text>
		<xsl:value-of select="tv_program/show/title" />
		<xsl:text>&#xA;</xsl:text>

		<xsl:text>Актьори:&#xA;&#xA;&#x9;</xsl:text>
		<xsl:text>Име&#x9;&#x9;Роля&#xA;</xsl:text>

		<xsl:apply-templates select="tv_program/show/episode/actors" />
	</xsl:template>

	<xsl:template match="actors">
		<xsl:for-each select="actor">
			<xsl:text>- </xsl:text>
			<xsl:value-of select="name"/>
			<xsl:text>, </xsl:text>
			<xsl:value-of select="role"/>
			<xsl:text>&#xA;</xsl:text>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>
