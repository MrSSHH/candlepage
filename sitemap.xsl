<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xhtml="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html><head><meta charset="utf-8"/><title>Candlepage sitemap</title>
<style>body{font:15px/1.6 system-ui,sans-serif;max-width:860px;margin:40px auto;padding:0 16px;color:#1d1a16}h1{font-size:24px}table{width:100%;border-collapse:collapse}th,td{text-align:start;padding:8px 10px;border-bottom:1px solid #ddd}th{color:#6b645b;font-weight:600}a{color:#c77a0a}.l{color:#6b645b;font-size:13px}</style></head>
<body><h1>Candlepage sitemap</h1><p class="l">This file is for search engines. It lists <xsl:value-of select="count(s:urlset/s:url)"/> pages.</p>
<table><tr><th>Page</th><th>Last updated</th><th>Languages</th></tr>
<xsl:for-each select="s:urlset/s:url"><tr><td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td><td><xsl:value-of select="s:lastmod"/></td><td><xsl:for-each select="xhtml:link"><xsl:value-of select="@hreflang"/><xsl:text> </xsl:text></xsl:for-each></td></tr></xsl:for-each>
</table></body></html>
</xsl:template>
</xsl:stylesheet>
