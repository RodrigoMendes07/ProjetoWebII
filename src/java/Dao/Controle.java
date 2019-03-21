package Dao;

import Bean.Detalhe;
import Bean.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Controle extends Conexao {

    public boolean inserirUsuarioBean(Usuario u) {

        Connection conn = this.getConexao();

        String sql = "Insert into usuario (nome,login,email,senha) values(?,?,?,?)";

        PreparedStatement ps;

        try {

            ps = conn.prepareStatement(sql);

            ps.setString(1, u.getNome());
            ps.setString(2, u.getLogin());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getSenha());

            ps.executeUpdate();
            ps.close();
            conn.close();

            return true;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;

        }
    }

    public boolean inserirDetalhesBean(Detalhe d) {

        Connection conn = this.getConexao();

        String sql = "Insert into detalhe (titulo,periodo,tecnica,dimensao,author,procedimento,tipo) values(?,?,?,?,?,?,?)";

        PreparedStatement ps;

        try {

            ps = conn.prepareStatement(sql);

            ps.setString(1, d.getTitulo());
            ps.setString(2, d.getPeriodo());
            ps.setString(3, d.getTecnica());
            ps.setString(4, d.getDimensao());
            ps.setString(5, d.getAuthor());
            ps.setString(6, d.getProcedimento());
            ps.setString(7, d.getTipo());

            ps.executeUpdate();
            ps.close();
            conn.close();

            return true;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
   public List <Usuario> listaLogin(String li) {

       Connection conn = this.getConexao();

        ArrayList <Usuario> lista = new ArrayList<>();
        
        String sql = "select * from usuario where login = ? ";
        
        PreparedStatement ps;        

        try {
            
            ps = conn.prepareStatement(sql);
            ps.setString(1,li);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String nome = rs.getString("nome");
                String login = rs.getString("login");
                String email = rs.getString("email");
                String senha = rs.getString("senha");

                Usuario u = new Usuario();

                u.setNome(nome);
                u.setEmail(email);
                u.setSenha(senha);
                u.setLogin(login);

                lista.add(u);
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return lista;
    } 
   public List <Detalhe> listaObras () {

       Connection conn = this.getConexao();

        ArrayList <Detalhe> lista = new ArrayList<>();
        
        String sql = "select * from detalhe order by id_detalhe";
        
        PreparedStatement ps;        

        try {
            
            ps = conn.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id_detalhe = rs.getInt("id_detalhe");
                String titulo = rs.getString("titulo");
                String periodo = rs.getString("periodo");
                String tecnica = rs.getString("tecnica");
                String dimensao = rs.getString("dimensao");
                String author = rs.getString("author");
                String procedimento = rs.getString("procedimento");
                String tipo = rs.getString("tipo");

                Detalhe d = new Detalhe();
                        d.setIdDetalhe(id_detalhe);
                        d.setTitulo(titulo);
                        d.setPeriodo(periodo);
                        d.setTecnica(tecnica);
                        d.setDimensao(dimensao);
                        d.setAuthor(author);                     
                        d.setProcedimento(procedimento);  
                        d.setTipo(tipo);        

                lista.add(d);
                
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return lista;
    }
   
}
