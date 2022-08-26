<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:key name="tinfo" match="trainee" use="@id"/>
    <xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		
		<html>
			<head>
				<title>Employee  Info</title>
				<style type="text/css">
					body{
					font-family: 'Century Gothic'; font-size: .80em;
					}
					a{
						text-decoration: none;
						color: black;
					}
				</style>
			</head>
			<body>
				<xsl:for-each select="key('tinfo','107898')">
					<br/>
					<pre>	Trainee Information <br/>														</pre>	
					<pre>	Name	 	<xsl:value-of select= "name" />										</pre>	 
					<pre>	ID		<xsl:value-of select="@id"/>											</pre>	 
					<pre>	Email	 	<a href="alam@idb-bisew.org"><xsl:value-of select= "email" /></a>	</pre>	 
					<pre>	Course	 	<xsl:value-of select= "course" />									</pre>	 
					<pre>	Round	 	<xsl:value-of select= "round" />									</pre>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

