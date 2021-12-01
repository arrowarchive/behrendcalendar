<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:variable name="MBCal" select="collection('../tei/?select=*.xml')"/>
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:apply-templates select="descendant::title"/></title>
                <link rel="stylesheet" type="text/css" href="../styling.css"/>
            </head> 
            <body>
                <h1>Rachel's XSLT</h1>
                 <section id="toc">
                    <h2>Table of Contents</h2>
                    <ul>
                        <xsl:apply-templates select="$MBCal//text//date" mode="toc">
                            
                            <xsl:sort select="descendant::date[1]"/>
                        </xsl:apply-templates>
                    </ul>
                </section>
                <section id="fulltext">
                    <xsl:apply-templates select="$MBCal//tei">
                        
                        <xsl:sort select="descendant::date[1]"/>
                    </xsl:apply-templates>
                    
                </section>
                
            </body>
            
        </html>
        
        
    </xsl:template>
    
    <xsl:template match="date">
        <li>
            <a href="#{../ab/date/@xml:id}">
                <xsl:apply-templates select="../ab/date"/>
            </a>
        </li>
    </xsl:template>
    
    <xsl:template match="div2">
        <p>
            <span class="fw, ab, lb, date, figure, figDesc, persName, add, note"><xsl:apply-templates/></span>
        </p>
    </xsl:template>
    
    <!--  <xsl:template match="facs">
        <a href="#{@xml:id}">
            <xsl:apply-templates/>
        </a>
    </xsl:template>
    
    <xsl:template match="title" mode="toc">
        <li>
            <a href="#{@xml:id}">
                <span class="date"><xsl:apply-templates/></span>
            </a>
        </li>
    </xsl:template>-->
    
</xsl:stylesheet>