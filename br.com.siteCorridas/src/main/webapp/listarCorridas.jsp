<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.br.com.sitecorridas.Corrida"%>
<%@page import="com.mycompany.br.com.sitecorridas.Crud"%>
<!DOCTYPE html>
<%
      Crud crud = null;
        try {
      ArrayList<Corrida> listarCorrida = Crud.listarCorridas();
      Corrida corrida = new Corrida();
%>
  

<html>
    <head>
        <meta charset="UTF-8">
                <%@include file="WEB-INF/jspf/cabecalho.jspf" %>

        <title>Relatorio das corridas</title>
    </head>
    <body>
                <%@include file="WEB-INF/jspf/navbar.jspf" %> 
<center>
                <div class="jumbotron">
            <div class="container">
        <h1>Listar Corridas Efetuadas</h1>
            </div>
                </div>
</center>
    <table class=" container-fluid table table-dark">
        <tr>
      <th scope="col">Passageiro</th>
      <th scope="col">Motorista</th>
      <th scope="col">Valor da Corrida</th>
      <th scope="col">Km percorridos</th>
    </tr>
        <% for(int i=0; i < listarCorrida.size();i++){
                corrida = listarCorrida.get(i); %>
                 <center>
                     <tr>
                         
                    <th><%=corrida.getNm_passageiro()%></th>
                    <td><%=corrida.getNm_motorista()%> </td>
                    <td><%= corrida.getVl_corrida()%></td>
                    <td><%= corrida.getQtd_km()%></td>
                </center>
                </tr>
<%}
              }catch(NullPointerException e){
            e.printStackTrace();;
        }
    
%>
        </table>
        
        <a href="index.jsp"> <input type="button" class="container btn btn-primary btn-lg btn-block"  value="Voltar"> </a>
               <%@include file="WEB-INF/jspf/footer.jspf" %> 
     
    </body>
</html>
