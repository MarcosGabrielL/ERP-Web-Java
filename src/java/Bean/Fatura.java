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
public class Fatura {
    
    private String Parcela;
    private String DataVencimento;
    private String Valor;
    private String PrimeiroVencimento;

    public String getParcela() {
        return Parcela;
    }

    public void setParcela(String Parcela) {
        this.Parcela = Parcela;
    }

    public String getDataVencimento() {
        return DataVencimento;
    }

    public void setDataVencimento(String DataVencimento) {
        this.DataVencimento = DataVencimento;
    }

    public String getValor() {
        return Valor;
    }

    public void setValor(String Valor) {
        this.Valor = Valor;
    }

    public String getPrimeiroVencimento() {
        return PrimeiroVencimento;
    }

    public void setPrimeiroVencimento(String PrimeiroVencimento) {
        this.PrimeiroVencimento = PrimeiroVencimento;
    }
    
    
}
