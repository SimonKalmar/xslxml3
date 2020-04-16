<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output doctype-system="about:legacy-compat"
        indent="yes"
        method="xml"
        omit-xml-declaration="no"/>

  <xsl:template match="cars/car">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="da">
    <head>
      <title>Test</title>
      <style>
        table {
          width: 100%;
          border: 1px solid #000;
        }

        td {
          border: 1px solid black;
          text-transform: capitalize;
          padding-left: 10px;
        }

        th {
          text-transform: capitalize;
        }
      </style>
    </head>
    <body>
    <h1>Cars, oh the cars</h1>
    <table>
      <tr>
        <th>id</th>
        <th>maker</th>
        <th>model</th>
        <th>year</th>
        <th>kilometers</th>
        <th>colour</th>
        <th>price</th>
        <th>buyback</th>
      </tr>
      <xsl:for-each select="/cars/car">
        <style>
          .<xsl:value-of select="color" /> {
            background: <xsl:value-of select="color" />;
          }
        </style>
        <tr>
          <td><xsl:value-of select="@id"/></td>
          <td><xsl:value-of select="@manufacturer"/></td>
          <td><xsl:value-of select="@model"/></td>
          <td><xsl:value-of select="@year"/></td>
          <td><xsl:value-of select="meter"/></td>
          <td>
            <xsl:attribute name="class"><xsl:value-of select="color" /></xsl:attribute>
          </td>
          <td><xsl:value-of select="price"/> DKK</td>
          <td><xsl:value-of select="dealersecurity/@buyback"/></td>
        </tr>
      </xsl:for-each>
    </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
