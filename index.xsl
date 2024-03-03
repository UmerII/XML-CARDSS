<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="Aptech">
    <html>
        <head>
            <style>
                
.parent{
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
    position: relative;
    border: 10px solid black;
    width: 100%;
    height: 100vh;
}

.content{
   
    position: absolute;
    left: 440px;
    bottom: 150px;   
    width: 150px;
         
}

.content-2{
    
    position: absolute;
    left: 659px ;
    bottom: 150px;
}

.content-3{
   
    position: absolute;
    bottom: 150px;
    left: 880px ;
}

.img{
    width: 200px;
    height: 200px;
}
            </style>
        </head>
        <body>
            <h2>testing</h2>
            <div class="parent">
                <xsl:for-each select="Students">
                    <img src="{image}"></img>
                    <div class="content">
                        <h1><xsl:value-of select="id"/></h1>
                        <p><xsl:value-of select="name"/></p>
                        <p><xsl:value-of select="age"/></p>
                    </div>
                </xsl:for-each>
            </div>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>