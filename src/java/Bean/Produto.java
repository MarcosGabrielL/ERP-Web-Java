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
public class Produto {
    
   
    private String codigo; 
    private String descricao;
    private String precoun;
    private String ventrada;
    private float quantidade;
    private String tipo;
    private String unidade;
    private String unidadeTributavel;
    private String data;
    private String loja = "Sede";
    private float subTotal;
    
    private String ncm;
    private String cst;
    private String cfop;
    private String baseicms;
    private String icms;
    private String aliquotaicms;
    
    private String cest;
    
    private String cean; 
    private String ceantrib;
    private String qtrib;
    private String vuntrib;

    private int item;
    
    private String bcicms;
    private String bcicmsst;
    private String pmvast;
    private String predbcst;
    private String vbcst;
    private String picmsst;//Valor
    private String vicmsst;//Percentual
    private String predbc;
    private String pdif;
    private String vicmsdif;
    private String vicms;
    private String pcredsn;
    private String vcredicmssn;
    
    private String cstpis;
    private String vbcpis;
    private String ppis;
    private String vpis;
    
    private String cstcofins;
    private String vbccofins;
    private String pcofins;
    private String vcofins; 
    
    private String afederaln;
    private String afederali;
    private String aestadual;
    private String amunicipal;
    private String modbcst;
    private String validade;

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getPrecoun() {
        return precoun;
    }

    public void setPrecoun(String precoun) {
        this.precoun = precoun;
    }

    public String getVentrada() {
        return ventrada;
    }

    public void setVentrada(String ventrada) {
        this.ventrada = ventrada;
    }

    public float getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(float quantidade) {
        this.quantidade = quantidade;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getUnidade() {
        return unidade;
    }

    public void setUnidade(String unidade) {
        this.unidade = unidade;
    }

    public String getUnidadeTributavel() {
        return unidadeTributavel;
    }

    public void setUnidadeTributavel(String unidadeTributavel) {
        this.unidadeTributavel = unidadeTributavel;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getLoja() {
        return loja;
    }

    public void setLoja(String loja) {
        this.loja = loja;
    }

    public float getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(float subTotal) {
        this.subTotal = subTotal;
    }

    public String getNcm() {
        return ncm;
    }

    public void setNcm(String ncm) {
        this.ncm = ncm;
    }

    public String getCst() {
        return cst;
    }

    public void setCst(String cst) {
        this.cst = cst;
    }

    public String getCfop() {
        return cfop;
    }

    public void setCfop(String cfop) {
        this.cfop = cfop;
    }

    public String getBaseicms() {
        return baseicms;
    }

    public void setBaseicms(String baseicms) {
        this.baseicms = baseicms;
    }

    public String getIcms() {
        return icms;
    }

    public void setIcms(String icms) {
        this.icms = icms;
    }

    public String getAliquotaicms() {
        return aliquotaicms;
    }

    public void setAliquotaicms(String aliquotaicms) {
        this.aliquotaicms = aliquotaicms;
    }

    public String getCest() {
        return cest;
    }

    public void setCest(String cest) {
        this.cest = cest;
    }

    public String getCean() {
        return cean;
    }

    public void setCean(String cean) {
        this.cean = cean;
    }

    public String getCeantrib() {
        return ceantrib;
    }

    public void setCeantrib(String ceantrib) {
        this.ceantrib = ceantrib;
    }

    public String getQtrib() {
        return qtrib;
    }

    public void setQtrib(String qtrib) {
        this.qtrib = qtrib;
    }

    public String getVuntrib() {
        return vuntrib;
    }

    public void setVuntrib(String vuntrib) {
        this.vuntrib = vuntrib;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public String getBcicms() {
        return bcicms;
    }

    public void setBcicms(String bcicms) {
        this.bcicms = bcicms;
    }

    public String getBcicmsst() {
        return bcicmsst;
    }

    public void setBcicmsst(String bcicmsst) {
        this.bcicmsst = bcicmsst;
    }

    public String getPmvast() {
        return pmvast;
    }

    public void setPmvast(String pmvast) {
        this.pmvast = pmvast;
    }

    public String getPredbcst() {
        return predbcst;
    }

    public void setPredbcst(String predbcst) {
        this.predbcst = predbcst;
    }

    public String getVbcst() {
        return vbcst;
    }

    public void setVbcst(String vbcst) {
        this.vbcst = vbcst;
    }

    public String getPicmsst() {
        return picmsst;
    }

    public void setPicmsst(String picmsst) {
        this.picmsst = picmsst;
    }

    public String getVicmsst() {
        return vicmsst;
    }

    public void setVicmsst(String vicmsst) {
        this.vicmsst = vicmsst;
    }

    public String getPredbc() {
        return predbc;
    }

    public void setPredbc(String predbc) {
        this.predbc = predbc;
    }

    public String getPdif() {
        return pdif;
    }

    public void setPdif(String pdif) {
        this.pdif = pdif;
    }

    public String getVicmsdif() {
        return vicmsdif;
    }

    public void setVicmsdif(String vicmsdif) {
        this.vicmsdif = vicmsdif;
    }

    public String getVicms() {
        return vicms;
    }

    public void setVicms(String vicms) {
        this.vicms = vicms;
    }

    public String getPcredsn() {
        return pcredsn;
    }

    public void setPcredsn(String pcredsn) {
        this.pcredsn = pcredsn;
    }

    public String getVcredicmssn() {
        return vcredicmssn;
    }

    public void setVcredicmssn(String vcredicmssn) {
        this.vcredicmssn = vcredicmssn;
    }

    public String getCstpis() {
        return cstpis;
    }

    public void setCstpis(String cstpis) {
        this.cstpis = cstpis;
    }

    public String getVbcpis() {
        return vbcpis;
    }

    public void setVbcpis(String vbcpis) {
        this.vbcpis = vbcpis;
    }

    public String getPpis() {
        return ppis;
    }

    public void setPpis(String ppis) {
        this.ppis = ppis;
    }

    public String getVpis() {
        return vpis;
    }

    public void setVpis(String vpis) {
        this.vpis = vpis;
    }

    public String getCstcofins() {
        return cstcofins;
    }

    public void setCstcofins(String cstcofins) {
        this.cstcofins = cstcofins;
    }

    public String getVbccofins() {
        return vbccofins;
    }

    public void setVbccofins(String vbccofins) {
        this.vbccofins = vbccofins;
    }

    public String getPcofins() {
        return pcofins;
    }

    public void setPcofins(String pcofins) {
        this.pcofins = pcofins;
    }

    public String getVcofins() {
        return vcofins;
    }

    public void setVcofins(String vcofins) {
        this.vcofins = vcofins;
    }

    public String getAfederaln() {
        return afederaln;
    }

    public void setAfederaln(String afederaln) {
        this.afederaln = afederaln;
    }

    public String getAfederali() {
        return afederali;
    }

    public void setAfederali(String afederali) {
        this.afederali = afederali;
    }

    public String getAestadual() {
        return aestadual;
    }

    public void setAestadual(String aestadual) {
        this.aestadual = aestadual;
    }

    public String getAmunicipal() {
        return amunicipal;
    }

    public void setAmunicipal(String amunicipal) {
        this.amunicipal = amunicipal;
    }

    public String getModbcst() {
        return modbcst;
    }

    public void setModbcst(String modbcst) {
        this.modbcst = modbcst;
    }

    public String getValidade() {
        return validade;
    }

    public void setValidade(String validade) {
        this.validade = validade;
    }

   
    
    
}
