<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		
		<html>
			<body>
				<h2 style="text-align:center;">Ambulance Management System</h2>
				<h3 style="text-align:center;">Ambulance</h3>
				<table border="2" align="center">
					<tr bgcolor="Green">
						<th>name</th>
						<th>amb_id</th>
						<th>address</th>
						<th>contact_number</th>
						<th>fare</th>
					
					</tr>
					<xsl:for-each select="Ambulance_Management/Ambulance">
						<tr>
							<td>
								<xsl:value-of select="name"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="amb_id"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="address"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="contact_number"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="fare"></xsl:value-of>
							</td>
						</tr>
					</xsl:for-each>
				<h3 style="text-align:center;">Private staff cabs</h3>
				<table border = "2" align="center" margin-top="90px">
					<tr bgcolor="orange">
						<th>Cab_id</th>
						<th>Cab_type</th>
						<th>Cab_number</th>
						<th>Cab_status</th>
					</tr>
					<xsl:for-each select="Ambulance_Management/Cab">
						<tr>
							<td> <xsl:value-of select="Cab_id"/></td>
							<td><xsl:value-of select="Cab_type"/></td>
							<td><xsl:value-of select="Cab_number"/></td>
							<td><xsl:value-of select="Cab_status"/></td>
						</tr>
					</xsl:for-each>
				</table>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>