<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h1>Tests</h1>
    <xsl:for-each select="testsuites/testsuite">
      <h2><xsl:value-of select="@name"/></h2>
      <ul>
        <xsl:for-each select="testcase">
                    <xsl:if test="failure">

          <li>
            <xsl:value-of select="@name"/>
              <b> Failed !</b>
                                  <br/>

              <i><xsl:value-of select="*"/></i>
          </li>
                      </xsl:if>

        </xsl:for-each>
      </ul>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>