package com.mycompany.br.com.sitecorridas;

import java.sql.Date;

public class CadMotorista {
private int id_motorista;

private String nm_motorista;
private Date dt_nasc;
private String nr_cpf;
private String ds_veiculo;
private String id_status;
private String tp_sexo;

    public String getNm_motorista() {
        return nm_motorista;
    }

    public void setNm_motorista(String nm_motorista) {
        this.nm_motorista = nm_motorista;
    }

    public Date getDt_nasc() {
        return dt_nasc;
    }

    public void setDt_nasc(Date dt_nasc)  {
   
        this.dt_nasc = dt_nasc;
    }

    public String getNr_cpf() {
         

        return nr_cpf;
    }

    public void setNr_cpf(String nr_cpf) {
        this.nr_cpf = nr_cpf.replaceAll("[.-]", "");
    }

    public String getDs_veiculo() {
        return ds_veiculo;
    }

    public void setDs_veiculo(String ds_veiculo) {
        this.ds_veiculo = ds_veiculo;
    }

    public String getId_status() {
        return id_status;
    }

    public void setId_status(String id_status) {
        this.id_status = id_status;
    }

    public String getTp_sexo() {
        return tp_sexo;
    }

    public void setTp_sexo(String tp_sexo) {
        this.tp_sexo = tp_sexo;
    }

    public int getId_motorista() {
        return id_motorista;
    }

    public void setId_motorista(int id_motorista) {
        this.id_motorista = id_motorista;
    }
   




}
