<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" encoding="UTF-8"/>

	<xsl:template match="/tv_programs">
		<xsl:text>&#x9;&#x9;</xsl:text>
		<xsl:value-of select="tv_program/show/title"/>
		<xsl:text>&#xA;&#xA;</xsl:text>

		<xsl:apply-templates select="tv_program/show/episode"/>
	</xsl:template>

	<xsl:template match="episode">
		<xsl:text>&#x9;&#x9;&#x9;</xsl:text>
		<xsl:value-of select="episode_number"/>
		<xsl:text>. </xsl:text>
		<xsl:value-of select="air_date"/>
		<xsl:text>&#xA;&#x9;&#x9;&#x9;Actors: </xsl:text>
		<xsl:apply-templates select="actors"/>

		<xsl:text>&#xA;&#xA;</xsl:text>
	</xsl:template>

	<xsl:template match="actors">
		<xsl:for-each select="actor">
			<xsl:value-of select="name"/>
			<xsl:text> as </xsl:text>
			<xsl:value-of select="role"/>

			<xsl:choose>
				<xsl:when test="position() != last()">, </xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>
