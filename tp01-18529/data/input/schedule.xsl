<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="pt-PT">
<meta charset="utf-8"/>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
  <h2>Calendário de Corridas F1 - 2024</h2>
  <table>
    <tr>
      <th>Race ID</th>
      <th>Ano</th>
      <th>Ronda</th>
      <th>ID do Circuito</th>
      <th>Nome</th>
      <th>Data da Corrida</th>
      <th>Data FP1</th>
      <th>Data FP2</th>
      <th>Data FP3</th>
      <th>Data Qualificação</th>
      <th>Data Sprint</th>
    </tr>
    <xsl:for-each select="Rows/Row">
      <tr>
        <td><xsl:value-of select="raceId"/></td>
        <td><xsl:value-of select="year"/></td>
        <td><xsl:value-of select="round"/></td>
        <td><xsl:value-of select="circuitId"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="race_date"/></td>
        <td><xsl:value-of select="fp1_date"/></td>
        <td><xsl:value-of select="fp2_date"/></td>
        <td><xsl:value-of select="fp3_date"/></td>
        <td><xsl:value-of select="quali_date"/></td>
        <td><xsl:value-of select="sprint_date"/></td>
      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>