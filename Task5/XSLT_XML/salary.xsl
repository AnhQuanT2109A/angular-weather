<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h3>Staff_Salary</h3>
                <table boder="1">
                    <tr bgcolor="pink">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Work</th>
                        <th>Month</th>
                        <th>NumberOfWorkingDays</th>
                        <th>DayOff</th>
                        <th>Salary</th>
                        <th>Bonus</th>
                    </tr>
                    <xsl:for-each select="class/employee">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="work"/></td>
                            <td><xsl:value-of select="month"/></td>
                            <td><xsl:value-of select="numberOfWorkingDays"/></td>
                            <td><xsl:value-of select="DayOff"/></td>
                            <td><xsl:value-of select="salary"/></td>
                            <td><xsl:value-of select="Bonus"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>