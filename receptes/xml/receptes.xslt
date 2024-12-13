<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/recipe">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title><xsl:value-of select="name"/></title>
            <link rel="stylesheet" href="recepta.css"/>
        </head>
        <body>
            <div class="navbar">
                <a href="../index.html" class="active">Inicio</a>
                <a href="../aboutMe.html">Sobre mí</a>
                <a href="../receptes.html">Recetas</a>
                <a href="../formulari.html">Contacto</a>
                <a href="../otrasCosas/others.css">Otras Cosas</a>
            </div>

            <div class="container">
                <h1><xsl:value-of select="name"/></h1>
                <img>
                    <xsl:attribute name="src">
                        <xsl:text>../imatges/</xsl:text>
                        <xsl:value-of select="image"/>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="name"/>
                    </xsl:attribute>
                </img>

                <div class="recipe-time">
                    <div class="time-icon">
                      ⏰
                    </div>
                    <div class="time-text">
                      <span class="time-label">Tiempo total:</span>
                      <span class="time-duration"><xsl:value-of select="time"/></span>
                    </div>
                </div>

                <h2>Ingredientes</h2>
                <ul>
                    <xsl:for-each select="ingredients/ingredient">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>

                <h2>Preparación</h2>
                <ol class="cute-list">
                    <xsl:for-each select="instructions/step">
                        <li>
                            <span class="step-number">
                                <xsl:value-of select="position()"/>.
                            </span>
                            <xsl:value-of select="."/>
                        </li>
                    </xsl:for-each>
                </ol>

                <h4>Autor: <xsl:value-of select="author"/></h4>

                <div class="tips">
                    <h2>Consejos:</h2>
                    <p><xsl:value-of select="tips"/></p>
                </div>

                <a href="../receptes.html" class="back-link">Recetas</a>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>