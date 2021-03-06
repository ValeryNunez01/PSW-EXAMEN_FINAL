<%-- 
    Document   : principalCliente
    Created on : 03-jun-2021, 13:03:49
    Author     : valery nuñez
--%>

<%@page import="modelo.Precio"%>
<%@page import="modelo.Promocion"%>
<%@page import="modelo.Contenedor"%>
<%@page import="modelo.Sabor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" language="java" import="java.util.*" session="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        String usuario = "";
        HttpSession sesionOK = request.getSession();
        if(sesionOK.getAttribute("usuario")==null){
            
        %>
        <jsp:forward page="">
            <jsp:param name="error" value="Es obligatorio identificarse:)"/>
        </jsp:forward>
        
        <%
        }else{
            usuario = (String)sesionOK.getAttribute("usuario");
        }
        %>
        
        <h1>Helados Benny and Jerry</h1>
        
        <p>Registrar helado</p>
        
        <form method="post" name="RegistrarHelado" action="GuardarHelado">
            <table border="2">
                <thead>
                    <tr>
                        <th>Sabor</th>
                        <th>Contenedor</th>
                        <th>Promoción</th>
                        <th>Precio</th>
                    </tr>
                    
                </thead>
                <tbody>
                        <tr>
                            <td>
                                <select name="sabor_hel">
                                <%
                                List<Sabor> lista = Sabor.ConsultarAllSabores();
                                for(Sabor s: lista){
                                %>
                                    <option><%=s.getSabor()%></option>
                                <%}%>
                            </td>
                            
                            <td>
                                <select name="cont_hel">
                                <%
                                List<Contenedor> listados = Contenedor.ConsultarAllContenedores();
                                for(Contenedor k: listados){
                                %>
                                    <option><%=k.getContenedor()%></option>
                                <%}%>
                            </td>
                            
                            <td>
                                <select name="promo_hel">
                                <%
                                List<Promocion> listatres = Promocion.ConsultarAllPromociones();
                                for(Promocion r: listatres){
                                %>
                                    <option><%=r.getPromocion()%></option>
                                <%}%>
                            </td>
                            
                            <td>
                                <select name="precio_hel">
                                <%
                                List<Precio> listacuatro = Precio.ConsultarAllPrecios();
                                for(Precio p: listacuatro){
                                %>
                                    <option><%=p.getPrecio()%></option>
                                <%}%>
                            </td>
                            
                        </tr>
                        <tr>
                            <td colspan="4">
                                <input type="submit" value="Registar">
                            </td>
                        </tr>
                </tbody>
                
            </table>     
        </form>

        <a href="ConsultarHelados.jsp">Consultar helados</a>
        
        <a href="ConsultarUsuarios.jsp">Consultar usuarios</a>
        
    </body>
</html>
