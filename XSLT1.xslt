<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="/Adresar">
    <html>
      <body>
        <p>Osobe i Kompanije koje sadrze vise od dve email adrese.</p>
        <hr></hr>
        
        
        <table border="1">
          <tr style="background:grey;">
            <td>Puno ime</td>
            <td>Datum Rodjenja</td>
            <td>Adresa</td>
            <td>Telefon</td>
            <td>Email</td>
          </tr>
          <xsl:for-each select="Osoba">
            <xsl:if test="count(Email)>2">
              <tr>
                <td><xsl:value-of select="PunoIme"/></td>
                <td><xsl:value-of select="DatumRodjenja"/></td>
                <td><xsl:value-of select="Adresa"/></td>
                <td><xsl:value-of select="Telefon"/></td>
                <td><xsl:value-of select="Email"/></td>
              </tr>       
            </xsl:if>         
          </xsl:for-each>
        </table>

        
        <table border="1">
          <tr style="background:grey;">
            <th>Naziv</th>
            <th>Adresa</th>
            <th>Telefon</th>
            <th>Email</th>
          </tr>
          <xsl:for-each select="Kompanija">
            <xsl:if test="count(Email)>2">       
              <tr>
                <td><xsl:value-of select="Naziv"/></td>
                <td><xsl:value-of select="Adresa"/></td>
                <td><xsl:value-of select="Telefon"/></td>
                <td><xsl:value-of select="Email"/></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>       
      </body>
    </html>
    
    
  </xsl:template>
</xsl:stylesheet>
