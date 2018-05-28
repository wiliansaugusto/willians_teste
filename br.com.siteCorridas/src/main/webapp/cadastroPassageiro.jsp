<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
         <script type="text/JavaScript" >
                function fMasc(objeto,mascara) {
        obj=objeto
        masc=mascara
        setTimeout("fMascEx()",1)
}
    function fMascEx() {
    obj.value=masc(obj.value)
    }

    function mCPF(nr_cpf){
    nr_cpf=nr_cpf.replace(/\D/g,"")
    nr_cpf=nr_cpf.replace(/(\d{3})(\d)/,"$1.$2")
    nr_cpf=nr_cpf.replace(/(\d{3})(\d)/,"$1.$2")
    nr_cpf=nr_cpf.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
    return nr_cpf
}
function efetuado(){
alert("efetuado com sucesso");
}
         </script>
        <title>Cadasttro Passageiro</title>
    </head>
    <body>
                <%@include file="WEB-INF/jspf/navbar.jspf" %> 
<center>
        <div class="jumbotron">
            <div class="container">
        <h2>Seja bem vindo ao cadastro de novos passageiros</h2>
        <h3>Insira abaixo os seus dados</h3>
            </div>
        </div>
</center>
<div class="container">
    <form action="acao.jsp" method="post" name="form1">
         <div class="form-group">
        <label for="pass">Nome Completo</label>
        <input id="pass" placeholder="Insira seu nome completo" type="text" name="nm_passageiro" required><br/>
        </div>
        <div class="form-group">
        <label>Data de Nascimento</label>
        <input type="date" name="dt_nasc" required>
        </div>
        <div class="form-group">
        <label for="cpf">CPF</label>
        <input placeholder="Insira seu CPF" id="cpf" type="text" name="nr_cpf"  onkeydown=" fMasc(this,mCPF);"   maxlength="14"><br>
        </div>
         <div class="form-group">
        <label>Sexo</label><br>
        <label for="F" >Feminino</label>
        <input id="F"type="radio" name="tp_sexo" value="F">
        <label for="M">Masculino</label>
        <input id="M" type="radio" name="tp_sexo" value="M"><br>
         </div>
        <input type="submit" class="btn btn-primary btn-lg btn-block" onclick="efetuado()"name="cadPassageiro" value="Cadastrar">
    </form>
</div>

              <%@include file="WEB-INF/jspf/footer.jspf" %> 
     
    </body> 
</html>
