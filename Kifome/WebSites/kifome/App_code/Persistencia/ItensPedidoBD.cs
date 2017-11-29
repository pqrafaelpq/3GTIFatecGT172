using kifome.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


namespace kifome.Persistencia
{
    /// <summary>
    /// Descrição resumida de ItensPedidoBD
    /// </summary>
    public class ItensPedidoBD
    {
        //métodos

        //insert
        public bool Insert(ItensPedido itenspedido)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO ite_itenspedido (ite_guid, ite_produto, ite_quantidade, ite_data, ite_status) VALUES (?pedcodigo, ?produto, ?quantidade, ?data, ?status)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?pedcodigo", itenspedido.PedCodigo));
            objCommand.Parameters.Add(Mapped.Parameter("?produto", itenspedido.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", itenspedido.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?data", itenspedido.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?status", itenspedido.Status));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        //selectall
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM ite_itenspedido  ORDER BY ite_guid", objConexao);            
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //selectallItensPedido
        public DataSet SelectAllItensPedido(string codigo)
        {
            
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT ite_produto, ite_quantidade FROM ite_itenspedido WHERE ite_guid = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //selectallItens
        public DataSet SelectAllItens(string codigo)
        {

            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT ite_produto, ite_codigo FROM ite_itenspedido WHERE ite_guid = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select
        public DataSet SelectAllProduto(string produto)
        {

            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT ite_produto, ite_quantidade FROM ite_itenspedido WHERE ite_produto = ?produto", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?produto", produto));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select por data e pronto
        public DataSet SelectData(DateTime inicio, DateTime final)
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            //objCommand = Mapped.Command("SELECT * FROM ent_entradamateria where ent_data between ?inicio and ?final", objConexao);
            objCommand = Mapped.Command("SELECT ite_produto, Sum(ite_quantidade) AS totalquantidade FROM ite_itenspedido WHERE ite_status='Pronto' and ite_data between '" + inicio.ToString("yyyy-MM-dd") + "' and '" + final.ToString("yyyy-MM-dd") + "'GROUP BY ite_produto", objConexao);
            //objCommand.Parameters.Add(Mapped.Parameter("?inicio", inicio)); select sum(valor) from crediar group by cliente;
            //objCommand.Parameters.Add(Mapped.Parameter("?final", final));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //Select Grafico
        public DataSet SelectGrafico()
        {
            DataSet ds = new DataSet();

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT ite_produto as Produtos, sum(if(month(ite_data)=1, ite_quantidade, 0)) as 'Jan', sum(if(month(ite_data)=2, ite_quantidade, 0)) as 'Feb', sum(if(month(ite_data)=3, ite_quantidade, 0)) as 'Mar', sum(if(month(ite_data)=4, ite_quantidade, 0)) as 'Abr', sum(if(month(ite_data)=5, ite_quantidade, 0)) as 'Mai', sum(if(month(ite_data)=6, ite_quantidade, 0)) as 'Jun', sum(if(month(ite_data)=7, ite_quantidade, 0)) as 'Jul', sum(if(month(ite_data)=8, ite_quantidade, 0)) as 'Ago', sum(if(month(ite_data)=9, ite_quantidade, 0)) as 'Set', sum(if(month(ite_data)=10, ite_quantidade, 0)) as 'Out', sum(if(month(ite_data)=11, ite_quantidade, 0)) as 'Nov', sum(if(month(ite_data)=12, ite_quantidade, 0)) as 'Dez' FROM ite_itenspedido GROUP BY ite_produto", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }


        //select
        public ItensPedido Select(string codigo)
        {
            ItensPedido obj = null;

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM ite_itenspedido WHERE ite_guid = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", codigo));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new ItensPedido();                
                obj.Status = Convert.ToString(objDataReader["ite_status"]); 

            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }

        //update
        public bool Update(ItensPedido itenspedido)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE ite_itenspedido SET ite_status=?status WHERE ite_guid = ?codigo";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            
            objCommand.Parameters.Add(Mapped.Parameter("?status", itenspedido.Status));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", itenspedido.PedCodigo));


            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        //update

        //delete

        //construtor


        public ItensPedidoBD()
        {
            //
            // TODO: Adicionar lógica do construtor aqui
            //
        }
    }
}