
package Bean;

public class Detalhe {
    int idDetalhe;
    String titulo;
    String periodo;
    String tecnica;
    String dimensao;
    String author;
    String procedimento;
    String tipo;

    public Detalhe() {
    }

    public Detalhe(int idDetalhe, String titulo, String periodo, String tecnica, String dimensao, String author, String procedimento, String tipo) {
        this.idDetalhe = idDetalhe;
        this.titulo = titulo;
        this.periodo = periodo;
        this.tecnica = tecnica;
        this.dimensao = dimensao;
        this.author = author;
        this.procedimento = procedimento;
        this.tipo = tipo;
    }

    public int getIdDetalhe() {
        return idDetalhe;
    }

    public void setIdDetalhe(int idDetalhe) {
        this.idDetalhe = idDetalhe;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getTecnica() {
        return tecnica;
    }

    public void setTecnica(String tecnica) {
        this.tecnica = tecnica;
    }

    public String getDimensao() {
        return dimensao;
    }

    public void setDimensao(String dimensao) {
        this.dimensao = dimensao;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getProcedimento() {
        return procedimento;
    }

    public void setProcedimento(String procedimento) {
        this.procedimento = procedimento;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
