<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Domácí úkol z programování</h2>
  <h3>Cervene radky jsou testy, kde byla chyba!</h3>
  <h4>Zadani: <xsl:value-of select="zadany_ukol/zadani"/></h4>
  <h4>Programovaci jazyk, ktery mate pouzit: <xsl:value-of select="zadany_ukol/programovaci_jazyk_testovani"/></h4>

  <td>Jmeno ucitele:<xsl:value-of select="zadany_ukol/zadal_ucitel/prijmeni"/></td>
    <br/><td>Prijmeni ucitele: <xsl:value-of select="zadany_ukol/zadal_ucitel/jmeno"/></td>
    <br/><td>Email: <xsl:value-of select="zadany_ukol/zadal_ucitel/email"/></td>
    <br/><td>Telefon: <xsl:value-of select="zadany_ukol/zadal_ucitel/telefon"/></td>
    <br/><td>Kancelar: <xsl:value-of select="zadany_ukol/zadal_ucitel/kancelar"/></td>

    <xsl:for-each select="zadany_ukol/trida/student">
    <br/><br/>
        <td><xsl:value-of select="jmeno"/></td>
        <td><xsl:value-of select="prijmeni"/></td>
        <table border="1">
            <tr bgcolor="#9acd32">
                <td>zkompilovany_program</td>
                <td>vstup</td>
                <td>vyslo_studentovi</td>
                <td>melo_vyjit</td>
                <td>vysledek</td>
                <td>beh_programu_sekundy</td>
            </tr>
            <xsl:for-each select="vysledek/test">
                <xsl:choose>
                    <xsl:when test="zkompilovany_program=0">
                        <tr bgcolor="#ff0000">
                            <td><xsl:value-of select="zkompilovany_program"/></td>
                            <td><xsl:value-of select="vstup"/></td>
                            <td><xsl:value-of select="vyslo_studentovi"/></td>
                            <td><xsl:value-of select="melo_vyjit"/></td>
                            <td><xsl:value-of select="vysledek"/></td>
                            <td><xsl:value-of select="beh_programu_sekundy"/></td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr>
                            <td><xsl:value-of select="zkompilovany_program"/></td>
                            <td><xsl:value-of select="vstup"/></td>
                            <td><xsl:value-of select="vyslo_studentovi"/></td>
                            <td><xsl:value-of select="melo_vyjit"/></td>
                            <td><xsl:value-of select="vysledek"/></td>
                            <td><xsl:value-of select="beh_programu_sekundy"/></td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            </table>
    </xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

