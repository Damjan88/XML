<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="/Adresar">
    <html>
      <body>
        <p>HTML dokument sa tabelom koja prikazuje sve podatke o Osobama i Kompanijama čija je: Adresa stalna i datum rođenja u opsegu od 1990-2005 godine i Prezime počinje sa slovom M i naziv kompanije ima više od 6 karaktera</p>
        <hr></hr>
        
        
        <table border="1">
          <tr style="background:grey;">
            <th>PunoIme</th>
            <th>DatumRodjenja</th>
            <th>Adresa</th>
            <th>Telefon</th>
            <th>Email</th>
          </tr>
          <xsl:for-each select="Osoba">
            <xsl:if test="Adresa/@tip='stalna' and DatumRodjenja/Godina &gt;1989 and 
           DatumRodjenja/Godina &lt;2006 and substring(PunoIme/Prezime,1,1 )='M'">
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
              <td>Naziv</td>
              <td>Adresa</td>
              <td>Telefon</td>
              <td>Email</td>
            </tr>
          <xsl:for-each select="Kompanija">
            <xsl:if test="Adresa/@tip='stalna' and string-length(Naziv) &gt; 6 ">
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

