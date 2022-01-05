<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
        <head>
            <title>ML Trading School</title>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link rel="stylesheet" href="css/MLtrading.css" />
            <script type="txt/javascript" src="js/MLtrading.js"/>
        </head>
    <table id="menuTable" border="1" class="indent">
        <thead>
            <tr>
                <th>Select</th>
                <th>Package</th>
                <th>Price</th>
                <th>Time</th>
            </tr>
        </thead>
        <tbody>
            <xsl:for-each select="//category">
                <tr>
                    <td colspan="3">
                        <xsl:value-of select="@name" />
                    </td>
                </tr>
                <xsl:for-each select="package">
                    <tr id="{position()}">
                        <xsl:attribute name="signals">
                            <xsl:value-of select="boolean(@signals)" />
                        </xsl:attribute>
                        <td align="center">
                            <input name="item0" type="checkbox" />
                        </td>
                        <td>
                            <xsl:value-of select="item" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="price" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="desc" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="time" />
                        </td>
                    </tr>
                </xsl:for-each>
            </xsl:for-each>
        </tbody>
    </table>
</xsl:template>
</xsl:stylesheet>