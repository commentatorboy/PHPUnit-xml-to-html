<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h1>Tests</h1>
    <xsl:for-each select="testsuites/testsuite">
      <h2><xsl:value-of select="@name"/></h2>
      <p>
        Total: <xsl:value-of select="@tests"/>,
        Assertions: <xsl:value-of select="@assertions"/>,
        Errors: <xsl:value-of select="@errors"/>,
        Warnings: <xsl:value-of select="@warnings"/>,
        Failures: <xsl:value-of select="@failures"/>,
        Skipped: <xsl:value-of select="@skipped"/>
      
      </p>
      <xsl:for-each select="testsuite">
      <h3><xsl:value-of select="@name"/></h3>
      <xsl:for-each select="testsuite">
      <h4><xsl:value-of select="@name"/></h4>
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
            <xsl:if test="error">
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
      </xsl:for-each>

    </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>