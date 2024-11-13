<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match="/tv_programs">
		<html>
			<body>
				<h2>
					Телевизионни предавания и техните детайли от <xsl:value-of select="tv_program/AgencyName"/>
				</h2>
				<table border="1">
					<tr bgcolor="#8A2BE2">
						<th>Заглавие</th>
						<th>Жанр</th>
					</tr>
					<xsl:for-each select="tv_program/show">
						<tr>
							<td>
								<xsl:value-of select="title"/>
							</td>
							<td>
								<xsl:value-of select="genre"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
