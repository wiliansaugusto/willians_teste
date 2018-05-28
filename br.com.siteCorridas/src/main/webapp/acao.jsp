<%@page import="com.mycompany.br.com.sitecorridas.Corrida"%>
<%@page import="com.mysql.cj.ParseInfo"%>
<%@page import="com.mycompany.br.com.sitecorridas.Passageiro"%>
<%@page import="java.sql.Date"%>
<%@page import="com.mycompany.br.com.sitecorridas.Crud"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.mycompany.br.com.sitecorridas.Banco"%>
<%@page import="com.mycompany.br.com.sitecorridas.CadMotorista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    Crud crud = new Crud();
    if(request.getParameter("cadastrarMotorista")!= null){
    CadMotorista mot = new CadMotorista();
    mot.setNm_motorista(request.getParameter("nm_motorista"));
    mot.setDt_nasc(Date.valueOf(request.getParameter("dt_nasc")));
    mot.setNr_cpf(request.getParameter("nr_cpf"));
    mot.setTp_sexo(request.getParameter("tp_sexo"));
    mot.setId_status(request.getParameter("id_status"));
    mot.setDs_veiculo(request.getParameter("mdl_carro"));
    crud.adicionaMotorista(mot);
}
     if(request.getParameter("cadPassageiro")!= null){
     Passageiro passageiro = new Passageiro();
     passageiro.setNm_passageiro(request.getParameter("nm_passageiro"));
     passageiro.setDt_nasc(Date.valueOf(request.getParameter("dt_nasc")));
     passageiro.setNr_cpf(request.getParameter("nr_cpf"));
     passageiro.setTp_sexo(request.getParameter("tp_sexo"));
     crud.adicionaPassageiro(passageiro); 
     
}        
      if(request.getParameter("corrida")!= null){  
           Corrida corrida = new Corrida();
           corrida.setId_pass(Integer.parseInt(request.getParameter("passageiro")));
           corrida.setId_mot(Integer.parseInt(request.getParameter("motorista")));
           corrida.setQtd_km(Integer.parseInt(request.getParameter("qtd_km")));
          
           if(corrida.getQtd_km()  <26){
              corrida.setVl_corrida( corrida.getQtd_km()*1);
           }else if(corrida.getQtd_km() >25 && corrida.getQtd_km() <76){
               corrida.setVl_corrida(corrida.getQtd_km()*0.75); 
           }else{
               corrida.setVl_corrida(corrida.getQtd_km()*0.65);
           
                }
           crud.registrarCorrida(corrida);
      }
   
%>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        
        <script>document.location.href='index.jsp';</script>
    </body>
</html>
