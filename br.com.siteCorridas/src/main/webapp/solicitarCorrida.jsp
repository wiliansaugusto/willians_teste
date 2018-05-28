<%@page import="com.mycompany.br.com.sitecorridas.CadMotorista"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.br.com.sitecorridas.Passageiro"%>
<%@page import="com.mycompany.br.com.sitecorridas.Crud"%>
<!DOCTYPE html>
<html>
    <head>
      <script type="text/javascrpt">
            function efetuado(){
alert("efetuado com sucesso");
}
        </script>
        <meta charset="UTF-8">
                <%@include file="WEB-INF/jspf/cabecalho.jspf" %>

        <title>Solicitar Corrida</title>
    </head>
    <body>
                <%@include file="WEB-INF/jspf/navbar.jspf" %> 
    <center>
                <div class="jumbotron">
            <div class="container">
    <h1>Solicitar Nova Corrida</h1>
    <h2>selecione o passageiro e o motorista, logo apos informe o km da viagem</h2>
            </div>
</div>
    </center>
    <form action="acao.jsp" method="post">
    <%  
        try {
            Passageiro p = new Passageiro();
            ArrayList<Passageiro> mostrarPassageiro = Crud.listarPassageiros();

    %>
    <div class="container form-group">
    <label for="exampleFormControlSelect1">Passageiros</label>
    <select name="passageiro" class=" form-control" id="exampleFormControlSelect1">

        <% for (int i = 0; i < mostrarPassageiro.size(); i++) {
                p = mostrarPassageiro.get(i);
        %>

        <option  value="<%=p.getId_passageiro()%>" > <%=p.getNm_passageiro()%></option>
        <% }
        } catch (IndexOutOfBoundsException n) {%>
        <h1><%= n.getLocalizedMessage()%></h1>
        <% }%>
    </select>    
    </div>
    <%  
        try {
            CadMotorista m = new CadMotorista();
            ArrayList<CadMotorista> mostrarMotorista = Crud.listarMotorista();

    %>
    <div class=" container form-group">
    <label for="exampleFormControlSelect1">Motoristas</label>
    <select name="motorista" class="form-control" id="exampleFormControlSelect1">

        <% for (int i = 0; i < mostrarMotorista.size(); i++) {
                m = mostrarMotorista.get(i);
                //ferias ativo
                if(m.getId_status().equals("0")){
        %>

        <option name="motorista" value="<%=m.getId_motorista()%>" ><%=m.getNm_motorista()%></option>
        <%      }
            }
        } catch (IndexOutOfBoundsException n) {%>
        <h1><%="ola deu erro" + n.getLocalizedMessage()%></h1>
        <% }%>
    </select>    
    </div>
    <div class=" container form-group">
    <label for="km">informe a quantidade de kms </label>
    <input id="km"type="number" name="qtd_km" required><br>
    </div>
    <input type="submit" class="container btn btn-primary btn-lg btn-block" onclick="efetuado()" name="corrida"  value="Cadastrar">    
    </form> 
           <%@include file="WEB-INF/jspf/footer.jspf" %> 

    </body>
</html>
