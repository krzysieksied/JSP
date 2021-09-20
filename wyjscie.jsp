<%-- 
    Document   : wyjscie
    Created on : 2021-05-25, 18:20:46
    Author     : krzysiek
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <%Class.forName("com.mysql.jdbc.Driver");
            request.setCharacterEncoding("UTF-8");
            String url = "jdbc:mysql://localhost:3306/osoby";
            String login = "root";
            String password = "";

            Connection conn = DriverManager.getConnection(url, login, password);

            Statement st = conn.createStatement();

            String imie = request.getParameter("imie");

            String nazwisko = request.getParameter("nazwisko");

            String plec = request.getParameter("Płeć");

            String[] kurs = request.getParameterValues("Kurs");
            String kursWjednym = "";
            if (kurs != null) {
                for (int i = 0; i < kurs.length; i++) {
                    kursWjednym += kurs[i];
                    if (i != kurs.length - 1) {
                        kursWjednym += ", ";
                    }
                }
            }

            // String kursWjednym=Arrays.toString(kurs);
            String region = request.getParameter("select");
            String uwagi = request.getParameter("texarea");
            System.out.println(kurs);

            st.executeUpdate("INSERT INTO osoba VALUES(null,'" + imie + "','" + nazwisko + "','" + plec + "','" + kursWjednym + "','" + region + "', '" + uwagi + "')");
            ResultSet rs = st.executeQuery("SELECT * FROM osoba");
            ResultSetMetaData rsmd = rs.getMetaData();

            int liczbaKolumn = rsmd.getColumnCount();

            while (rs.next()) {
        %>
        <h1></h1>        
        <%
            for (int i = 1; i <= liczbaKolumn; i++) {
        %>

        <table>
            <tr>
                <td><%=rsmd.getColumnName(i)%></td>
                <td><%=rs.getString(i)%></td>
            </tr>
        </table>
        <%}
            }
        %>
        <input type="button" value="Nowy Uczestnik" onClick="location.href = 'index.jsp';" />
    </body>
</html>
