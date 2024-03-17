<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" omit-xml-declaration="yes"/>

  <xsl:template match="bookstore">
    {
      "bookstore": {
        "books": [
          <xsl:apply-templates select="book"/>
        ]
      }
    }
  </xsl:template>

  <xsl:template match="book">
    {
      "category": "<xsl:value-of select="@category"/>",
      "title": "<xsl:value-of select="title"/>",
      "authors": [
        <xsl:for-each select="author">
          "<xsl:value-of select="."/>"<xsl:if test="position() != last()">, </xsl:if>
        </xsl:for-each>
      ],
      "year": "<xsl:value-of select="year"/>",
      "price": "<xsl:value-of select="price"/>"
    }<xsl:if test="position() != last()">, </xsl:if>
  </xsl:template>
</xsl:stylesheet>
