<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : XSLcemerdovsky_vitezslav.xsl
    Created on : 19. dubna 2017, 20:14
    Author     : Víťa
    Odkaz na github: https://github.com/VitezslavCemerdovsky/znackovaciJazyky
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Vítězslav Čemerdovský - značkovací jazyky - semestrální práce</title>
            </head>
            <body>
                <h1>Výpis uživatelů</h1>
                <table>
                    <xsl:for-each select="aplikace-hudba/ucet-uzivatele">
                        <tr>
                            <td colspan="1">
                                <xsl:for-each select="ucet">
                                <table>
                                    <tr>
                                        <td>Prezdivka:</td>
                                        <td><xsl:value-of select="prezdivka"/></td>
                                    </tr>
                                    <tr>
                                        <td>Typ uzivatele:</td>
                                        <td><xsl:value-of select="typ-uzivatele"/></td>
                                    </tr>
                                    <tr>
                                        <td>Zaliby:</td>
                                        <td><xsl:value-of select="zaliby"/></td>
                                    </tr>
                                    <tr>
                                        <td>Email:</td>
                                        <td><xsl:value-of select="email"/></td>
                                    </tr>
                                    <tr>
                                        <td>Rok narození:</td>
                                        <td><xsl:value-of select="rok-narozeni"/></td>
                                    </tr>
                                    <tr>
                                        <td>Datum založení::</td>
                                        <td><xsl:value-of select="datum-zalozeni"/></td>
                                    </tr>
                                    <tr>
                                        <td>Narodnost:</td>
                                        <td><xsl:value-of select="narodnost"/></td>
                                    </tr>
                                    <tr>
                                        <td>Bydliště:</td>
                                        <td><xsl:value-of select="bydliste"/></td>
                                    </tr>
                                    <tr>
                                        <td>Přátelé:</td>
                                        <td><xsl:value-of select="pratele"/></td>
                                    </tr>
                                </table>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                    <h1>Výpis hudby</h1>
                    <table>
                        <xsl:for-each select="aplikace-hudba/seznam-hudby">
                            <tr>
                            <td colspan="1">
                                <xsl:for-each select="hudba[rok-vydani >= 2010]">
                                <table>
                                    <tr>
                                        <td>Žánr:</td>
                                        <td><xsl:value-of select="@zanr"/></td>
                                    </tr>
                                    <tr>
                                        <td>Název:</td>
                                        <td><xsl:value-of select="nazev"/></td>
                                    </tr>
                                    <tr>
                                        <td>Autor:</td>
                                        <td><xsl:value-of select="autor"/></td>
                                    </tr>
                                    <tr>
                                        <td>Zdroj:</td>
                                        <td><xsl:value-of select="zdroj"/></td>
                                    </tr>
                                    <tr>
                                        <td>Rok vydání:</td>
                                        <td><xsl:value-of select="rok-vydani"/></td>
                                    </tr>
                                    <tr>
                                        <td>Délka:</td>
                                        <td><xsl:value-of select="delka"/></td>
                                    </tr>
                                    <tr>
                                        <td>Jazyk hudby:</td>
                                        <td><xsl:value-of select="jazyk-hudby"/></td>
                                    </tr>
                                </table>
                                </xsl:for-each>
                            </td>
                        </tr>
                        </xsl:for-each>
                    </table>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
