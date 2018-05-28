<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar motorista</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">     
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

        
    </head>
    <body>
                <%@include file="WEB-INF/jspf/navbar.jspf" %> 
    <center>
        <div class="jumbotron">
            <div class="container">
        <h2>Seja bem vindo ao cadastro de novos motoristas</h2>
        <h3>Insira abaixo os seus dados</h3>
            </div>
        </div>
        </center>
         <div class="container">
        <form method="post" action="acao.jsp">
            <div class="form-group">
            <label for="nome" >Nome</label>
            <input id="nome"  placeholder="Insira seu nome" required type="text" name="nm_motorista">
            </div>
            <div class="form-group">
            <label for="dtNasc">Data de Nascmento</label>
            <input id=dtnasc"" type="date" name="dt_nasc" required>
            </div>
            <div class="form-group">
            <label for="cpf" >CPF</label>
            <input id="cpf" placeholder="Insira ser CPF" type="text" onkeydown="fMasc(this,mCPF)" name="nr_cpf" maxlength="14" required><br>
            </div>
            <div class="form-group">
            <label>Sexo</label><br>
            <label for="F" >Feminino</label>
            <input id="F" type="radio" name="tp_sexo" value="F">
            <label for="M">Masculino</label>
            <input id ="M" type="radio" name="tp_sexo" value="M"><br>
            </div>
            <div class="form-group">
            <label for="carro">Informe o modelo do seu veiculo</label>
            <input id="carro" type="text" name="mdl_carro" required><br>
            </div>
            <div class="form-group">
            <label>Voce esta de ferias no momento?</label><br>
            <label for="S">Sim</label>
            <input id="S"type="radio" name="id_status" value="1">
            <label for="N">Não</label>
            <input id="N" type="radio" name="id_status" value="0" checked ><br>
            </div>
            <input type="submit" class="btn btn-primary btn-lg btn-block" onclick="efetuado()" value="Cadastrar" name="cadastrarMotorista">
        </form>
         </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %> 
  
    </body>
</html>
