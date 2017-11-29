using kifome.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


namespace kifome.Persistencia
{
    /// <summary>
    /// Descrição resumida de PerdasBD
    /// </summary>
    public class PerdasBD
    {
        //métodos        

        //insert
        public bool Insert(Perdas perdas)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO per_perdas(per_produto, per_quantidade, per_data, per_pedcodigo, per_motivo) VALUES (?produto, ?quantidade, ?data, ?pedcodigo, ?motivo)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?produto", perdas.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidade", perdas.Quantidade));
            objCommand.Parameters.Add(Mapped.Parameter("?data", perdas.Data));
            objCommand.Parameters.Add(Mapped.Parameter("?pedcodigo", perdas.PedCodigo));
            objCommand.Parameters.Add(Mapped.Parameter("?motivo", perdas.Motivo));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        //Select All
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM per_perdas  ORDER BY per_codigo", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select

        //update

        //delete

        //construtor
        public PerdasBD()
        {
            //
            // TODO: Adicionar lógica do construtor aqui
            //
        }
    }
}