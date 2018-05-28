package com.mycompany.br.com.sitecorridas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;




public class Crud {
    Banco conexao = new Banco();
           
    public void adicionaMotorista(CadMotorista mot ) throws SQLException, ClassNotFoundException {
        conexao.getConnection();
        String sql = "INSERT INTO tb_motorista (nm_motorista, dt_nasc, nr_cpf, id_status, tp_sexo, mdl_carro)"+"values(?,?,?,?,?,?)";
        PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
        stmt.setString(1, mot.getNm_motorista());
        stmt.setDate(2, mot.getDt_nasc());
        stmt.setString(3,mot.getNr_cpf());
        stmt.setString(4, mot.getId_status());
        stmt.setString(5, mot.getTp_sexo());
        stmt.setString(6,mot.getDs_veiculo());
        stmt.execute();
        stmt.close();
        
	
  }

    
    public void adicionaPassageiro(Passageiro p) throws ClassNotFoundException, SQLException{
        
        conexao.getConnection();
        String sql = "Insert into tb_passageiro(nm_passageiro, dt_nasc, nr_cpf,tp_sexo)"+"values(?,?,?,?)";
        PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
        stmt.setString(1, p.getNm_passageiro());
        stmt.setDate(2, p.getDt_nasc());
        stmt.setString(3, p.getNr_cpf());
        stmt.setString(4, p.getTp_sexo());
        stmt.execute();
        stmt.close();
        

   }      

public void registrarCorrida(Corrida corrida) throws ClassNotFoundException, SQLException{
        String sql="INSERT INTO tb_corrida(qtd_km, vl_corrida, tb_mot, tb_pass)"+"values(?,?,?,?)";
        PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
        stmt.setInt(1, corrida.getQtd_km());
        stmt.setDouble(2, corrida.getVl_corrida());
        stmt.setInt(3, corrida.getId_mot());
        stmt.setInt(4, corrida.getId_pass());
        stmt.execute();
        stmt.close();
    
}
public static ArrayList<Passageiro> listarPassageiros() throws SQLException, ClassNotFoundException, NullPointerException{
               
                   ArrayList<Passageiro> listaPassageiro = new ArrayList();
            try{
                   String sql ="SELECT *  FROM tb_passageiro ";
              
                Banco conexao = new Banco();
                PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
                ResultSet result = stmt.executeQuery(sql);
                
                while(result.next()){
                    Passageiro p =new Passageiro();
                    p.setId_passageiro(result.getInt(1));
                    p.setNm_passageiro(result.getString(2));
                    p.setDt_nasc(result.getDate(3));
                    p.setNr_cpf(result.getString(3));
                    p.setTp_sexo(result.getString(4));
                    listaPassageiro.add(p);
                    }
                stmt.close();
            }catch(NullPointerException n  ){
            }
                
         return listaPassageiro;
    }
         
    public static ArrayList<CadMotorista> listarMotorista() throws SQLException, ClassNotFoundException, NullPointerException{
               
                   ArrayList<CadMotorista> listaMotorista = new ArrayList();
            try{
                   String sql ="SELECT *  FROM tb_motorista ";
              
                Banco conexao = new Banco();
                PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
                ResultSet result = stmt.executeQuery(sql);
                
                while(result.next()){
                    CadMotorista mot =new CadMotorista();
                    mot.setId_motorista(result.getInt(1));
                    mot.setNm_motorista(result.getString(2));
                    mot.setDt_nasc(result.getDate(3));
                    mot.setNr_cpf(result.getString(4));
                    mot.setId_status(result.getString(5));
                    mot.setTp_sexo(result.getString(6));
                    mot.setDs_veiculo(result.getString(7));
                    listaMotorista.add(mot);
                    
                  
                }
                    stmt.close();
                }catch(NullPointerException n  ){
            }
                
         return listaMotorista;
    }
           public static ArrayList<Corrida> listarCorridas() throws SQLException, ClassNotFoundException, NullPointerException{
 
   
                    ArrayList<Corrida> listarCorrida = new ArrayList();
            try{
                   String sql ="SELECT tb_passageiro.nm_passageiro, tb_motorista.nm_motorista, tb_corrida.vl_corrida, tb_corrida.qtd_km"
                           + " FROM ((tb_corrida INNER JOIN tb_passageiro ON tb_corrida.tb_pass = tb_passageiro.id_passageiro)"
                           + "INNER JOIN tb_motorista ON tb_corrida.tb_mot = tb_motorista.id_motorista)";

              
                Banco conexao = new Banco();
                PreparedStatement stmt = conexao.getConnection().prepareStatement(sql);
                ResultSet result = stmt.executeQuery(sql);
                
                while(result.next()){
                    Corrida corrida =new Corrida();
                    corrida.setNm_passageiro(result.getString(1));
                    corrida.setNm_motorista(result.getString(2));
                    corrida.setVl_corrida(result.getDouble(3));
                    corrida.setQtd_km(result.getInt(4));
                    listarCorrida.add(corrida);
                    
                }
                stmt.close();
                }catch(NullPointerException n  ){
           
                    
              
               }
                        
                     return listarCorrida;

           }
      

}



