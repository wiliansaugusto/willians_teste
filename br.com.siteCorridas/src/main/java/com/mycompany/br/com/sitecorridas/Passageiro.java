package com.mycompany.br.com.sitecorridas;

import java.sql.Date;
import java.util.ArrayList;


public class Passageiro {
    private int id_passageiro;
    private String nm_passageiro;
    private Date dt_nasc;
    private String nr_cpf;
    private String tp_sexo;
    private ArrayList<Passageiro> listaPassageiro ;

    public String getNm_passageiro() {
        return nm_passageiro;
    }

    public void setNm_passageiro(String nm_passageiro) {
        this.nm_passageiro = nm_passageiro;
    }

    public Date getDt_nasc() {
        return dt_nasc;
    }

    public void setDt_nasc(Date dt_nasc) {
        this.dt_nasc = dt_nasc;
    }

    public String getNr_cpf() {
        return nr_cpf;
    }

    public void setNr_cpf(String nr_cpf) {
        this.nr_cpf =  nr_cpf = nr_cpf.replaceAll("[.-]", "");;
    }

    public String getTp_sexo() {
        return tp_sexo;
    }

    public void setTp_sexo(String tp_sexo) {
        this.tp_sexo = tp_sexo;
    }

    public ArrayList<Passageiro> getListaPassageiro() {
        return listaPassageiro;
    }

    public void setListaPassageiro(ArrayList<Passageiro> listaPassageiro) {
        this.listaPassageiro = listaPassageiro;
    }

    public int getId_passageiro() {
        return id_passageiro;
    }

    public void setId_passageiro(int id_passageiro) {
        this.id_passageiro = id_passageiro;
    }

 
    
}
