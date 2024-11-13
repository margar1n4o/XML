<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

	<xsl:template match="tv_programs">
		<xsl:text>&#xA;&#xA;</xsl:text>

		<TVPrograms>
			<xsl:apply-templates select="tv_program/show"/>
		</TVPrograms>
	</xsl:template>

	<xsl:template match="show">
		<Show>
			<xsl:apply-templates select="title"/>
			<xsl:apply-templates select="genre"/>
			<xsl:apply-templates select="episode"/>
		</Show>
	</xsl:template>

	<xsl:template match="title">
		<Title>
			<xsl:value-of select="."/>
		</Title>
	</xsl:template>

	<xsl:template match="genre">
		<Genre>
			<xsl:value-of select="."/>
		</Genre>
	</xsl:template>

	<xsl:template match="episode">
		<Episode>
			<xsl:apply-templates select="episode_number"/>
			<xsl:apply-templates select="air_date"/>
			<xsl:apply-templates select="actors"/>
		</Episode>
	</xsl:template>

	<xsl:template match="episode_number">
		<EpisodeNumber>
			<xsl:value-of select="."/>
		</EpisodeNumber>
	</xsl:template>

	<xsl:template match="air_date">
		<AirDate>
			<xsl:value-of select="."/>
		</AirDate>
	</xsl:template>

	<xsl:template match="actors">
		<ActorsCount>
			<xsl:value-of select="count(actor)"/>
		</ActorsCount>
	</xsl:template>

</xsl:stylesheet>
