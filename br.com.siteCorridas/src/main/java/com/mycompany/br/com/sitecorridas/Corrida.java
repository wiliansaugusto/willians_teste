package com.mycompany.br.com.sitecorridas;
public class Corrida {

    private int id_corrida;
    private int qtd_km;
    private double vl_corrida;
    private int id_mot;
    private int id_pass;
    private String nm_motorista;
    private String nm_passageiro;

    public String getNm_motorista() {
        return nm_motorista;
    }

    public void setNm_motorista(String nm_motorista) {
        this.nm_motorista = nm_motorista;
    }

    public String getNm_passageiro() {
        return nm_passageiro;
    }

    public void setNm_passageiro(String nm_passageiro) {
        this.nm_passageiro = nm_passageiro;
    }
    
    public int getId_corrida() {
        return id_corrida;
    }

    public void setId_corrida(int id_corrida) {
        this.id_corrida = id_corrida;
    }

    public int getQtd_km() {
        return qtd_km;
    }

    public void setQtd_km(int qtd_km) {
        this.qtd_km = qtd_km;
    }

    public double getVl_corrida() {
        return vl_corrida;
    }

    public void setVl_corrida(double vl_corrida) {
        this.vl_corrida = vl_corrida;
    }

    public int getId_mot() {
        return id_mot;
    }

    public void setId_mot(int id_mot) {
        this.id_mot = id_mot;
    }

    public int getId_pass() {
        return id_pass;
    }

    public void setId_pass(int id_pass) {
        this.id_pass = id_pass;
    }
    
}
