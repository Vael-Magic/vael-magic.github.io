<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title><xsl:value-of select="/rss/channel/title"/> - RSS Feed</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <style type="text/css">
          body {
            max-width: 650px;
            margin: 0 auto;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            padding: 2rem;
            line-height: 1.5;
            color: #333;
            background: #f5f5f5;
          }
          /* 其他样式... */
        </style>
      </head>
      <body>
        <h1>
          <span class="rss-icon">
            <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
              <circle cx="6" cy="18" r="2"/>
              <path d="M4 4a16 16 0 0 1 16 16"/>
              <path d="M4 11a9 9 0 0 1 9 9"/>
            </svg>
          </span>
          <a href="{/rss/channel/link}">
            <xsl:value-of select="/rss/channel/title"/>
          </a>
        </h1>
        <!-- 其他内容... -->
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
