<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/rss">
    <html>
      <head>
        <link href="xsl.css" rel="stylesheet" type="text/css"/>
        <style type="text/css">
		body {
			font-size:14pt;
			font-family: helvetica;
		}

		.build {
			border-radius: 10px;
			-webkit-box-shadow: 5px 5px 3px #999;
		}

		.failed {
			background-color: #FF0000;
			width: 20%;
			float: left;
			height: 75px;
			font-weight: bold;
			color: White;
			margin: 5px;
			padding: 5px;
		}

		.pass {
			background-color: #00FF00;
			width: 10%;
			height: 35px;
			float: left;
			margin: 5px;
			padding: 5px;
			font-size: 75%;
			overflow: hidden;
		}
    	</style>
      </head>
      <body>
        <xsl:for-each select="channel/item">
		<xsl:sort select="description"/>
          <xsl:choose>
            <xsl:when test="description = 'Build FAILED'">
              <div class="build failed">
                <xsl:value-of select="title"/>
              </div>
            </xsl:when>
            <xsl:otherwise>
              <div class="build pass">
                <xsl:value-of select="title"/>
              </div>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
