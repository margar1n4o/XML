<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match="/tv_programs">
		<html>
			<body>
				<h2>
					Телевизионни предавания и техните актьори от <xsl:value-of select="tv_program/AgencyName"/>
				</h2>
				<xsl:for-each select="tv_program/show">
					<h3>
						<xsl:value-of select="title"/>
					</h3>
					<table border="1">
						<tr bgcolor="#B22222">
							<th>Актьор</th>
							<th>Роля</th>
						</tr>
						<xsl:for-each select="episode/actors/actor">
							<tr>
								<td>
									<xsl:value-of select="name"/>
								</td>
								<td>
									<xsl:value-of select="role"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
