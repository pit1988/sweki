<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="xhtml xsl xs" >

<xsl:output method="text" version="1.0" encoding="UTF-8" />



<!-- MAIN TEMPLATE -->
<xsl:template match="/html">
<xsl:for-each select="//div[@id='content']">
<xsl:apply-templates />
</xsl:for-each>
</xsl:template>



<!-- h1 (section) -->
<xsl:template match="h1">
	\section{<xsl:value-of select="." />}
</xsl:template>

<!-- h2 (subsection) -->
<xsl:template match="h2">
	\subsection{<xsl:value-of select="." />}
</xsl:template>

<!-- h3 (subsubsection) -->
<xsl:template match="h3">
	\subsubsection{<xsl:value-of select="." />}
</xsl:template>



<!-- unordered list -->
<xsl:template match="ul">
	\begin{itemize}
		<xsl:apply-templates />
	\end{itemize}
</xsl:template>

<!-- ordered list -->
<xsl:template match="ol">
	\begin{enumerate}
		<xsl:apply-templates />
	\end{enumerate}
</xsl:template>

<!-- definition list -->
<xsl:template match="dl">
	\begin{description}
		<xsl:apply-templates />
	\end{description}
</xsl:template>

<!-- list item -->
<xsl:template match="li">
	\item <xsl:apply-templates />
</xsl:template>



<!-- emphasized text -->
<xsl:template match="em">\emph{<xsl:apply-templates />}</xsl:template>

<!-- strong text -->
<xsl:template match="strong">\textbf{<xsl:apply-templates />}</xsl:template>

<!-- html entities -->
<!-- <xsl:template match="text()">
	<xsl:choose>
		<xsl:when test="'&amp;sdot;'">$\cdot$</xsl:when>
		<xsl:when test="'&amp;amp;'">\and </xsl:when>
		<xsl:otherwise><xsl:value-of select="." /></xsl:otherwise>
	</xsl:choose>
</xsl:template> -->



<!-- table -->
<xsl:template match="table">
	\begin{table}
		\begin{tabular}{<xsl:for-each select="tr[1]/th">l </xsl:for-each>}
		\toprule
			<xsl:apply-templates />
		\bottomrule
		\end{tabular}
		\caption{}
	\end{table}
</xsl:template>

<!-- table row -->
<xsl:template match="tr">
	<xsl:apply-templates />
</xsl:template>

<!-- table header element -->
<xsl:template match="th[position() &lt; last()]">
	<xsl:for-each select="."><xsl:value-of select="." /> &amp; </xsl:for-each>
</xsl:template>

<!-- last table header element -->
<xsl:template match="th[last()]">
	<xsl:value-of select="." /> \\
	\midrule
</xsl:template>

<!-- table row element -->
<xsl:template match="td[position() &lt; last()]">
	<xsl:for-each select="."><xsl:value-of select="." /> &amp; </xsl:for-each>
</xsl:template>

<!-- last table row element -->
<xsl:template match="td[last()]">
	<xsl:value-of select="." /> \\
</xsl:template>



</xsl:stylesheet>
