/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author Marcos
 */
public class Parcelamento {
    
    private String Cliente;
    private String DataCompra;
    private String ValorCompra;
    private String Parcela;
    private String ValorParcela;
    private String Vencimento;
    private String CPF;

    public String getCPF() {
        return CPF;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }
    
    

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public String getDataCompra() {
        return DataCompra;
    }

    public void setDataCompra(String DataCompra) {
        this.DataCompra = DataCompra;
    }

    public String getValorCompra() {
        return ValorCompra;
    }

    public void setValorCompra(String ValorCompra) {
        this.ValorCompra = ValorCompra;
    }

    public String getParcela() {
        return Parcela;
    }

    public void setParcela(String Parcela) {
        this.Parcela = Parcela;
    }

    public String getValorParcela() {
        return ValorParcela;
    }

    public void setValorParcela(String ValorParcela) {
        this.ValorParcela = ValorParcela;
    }

    public String getVencimento() {
        return Vencimento;
    }

    public void setVencimento(String Vencimento) {
        this.Vencimento = Vencimento;
    }
    
    
}
