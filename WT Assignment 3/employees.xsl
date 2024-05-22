<?xml version="1.0" encoding="UTF-8"?>
<!-- <?xml-stylesheet href="emp.css" type="text/css"?> -->
<!-- <!DOCTYPE employees SYSTEM "employees.dtd"> -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
table{
    background-color: cyan;
    width: 100%;
    height: 50%;
}

tr{
    text-align: center;
}

h2{
    text-align: center;
}
</style>
</head>
<body>
    <h2>Employee Details</h2>
    <table border="1">
    <tr bgcolor="#9acd32">
    <th>Name</th>
    <th>Emp_ID</th>
    <th>Age</th>
    <th>Salary</th>
    </tr>
    <xsl:for-each select="employees/department">
    <tr>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="emp_id"/></td>
    <td><xsl:value-of select="age"/></td>
    <td><xsl:value-of select="salary"/></td>
    </tr>
    </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>