using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using kifome.Classes;


namespace kifome.Persistencia
{
    /// <summary>
    /// Descrição resumida de PedidoBD
    /// </summary>
    public class PedidoAtrasadoBD
    {
        //métodos        
        
        //insert
        public bool Insert(PedidoAtrasado pedidoatrasado)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO pea_pedidoatrasado(pea_nomecliente, pea_contatocliente, pea_guid, pea_quantidadetotal, pea_valortotal, pea_status, pea_dataentrada, pea_datapronto, pea_dataprevista, pea_qtddias) VALUES (?nomecliente, ?contatocliente, ?produto, ?quantidadetotal, ?valortotal, ?status, ?dataentrada , ?datapronto, ?dataprevista, ?qtddias)";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?nomecliente", pedidoatrasado.NomeCliente));
            objCommand.Parameters.Add(Mapped.Parameter("?contatocliente", pedidoatrasado.ContatoCliente));            
            objCommand.Parameters.Add(Mapped.Parameter("?produto", pedidoatrasado.Produto));
            objCommand.Parameters.Add(Mapped.Parameter("?quantidadetotal", pedidoatrasado.QuantidadeTotal));
            objCommand.Parameters.Add(Mapped.Parameter("?valortotal", pedidoatrasado.ValorTotal));
            objCommand.Parameters.Add(Mapped.Parameter("?status", pedidoatrasado.Status));
            objCommand.Parameters.Add(Mapped.Parameter("?dataentrada", pedidoatrasado.DataEntrada));
            objCommand.Parameters.Add(Mapped.Parameter("?dataprevista", pedidoatrasado.DataPrevista));
            objCommand.Parameters.Add(Mapped.Parameter("?datapronto", pedidoatrasado.DataPronto));
            objCommand.Parameters.Add(Mapped.Parameter("?qtddias", pedidoatrasado.QtdDias));

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
            objCommand = Mapped.Command("SELECT * FROM pea_pedidoatrasado  ORDER BY pea_codigo", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //SelectPorData
        public DataSet SelectData(DateTime inicio, DateTime final)
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            //objCommand = Mapped.Command("SELECT * FROM ent_entradamateria where ent_data between ?inicio and ?final", objConexao);
            objCommand = Mapped.Command("SELECT * FROM pea_pedidoatrasado where pea_dataentrada between '" + inicio.ToString("yyyy-MM-dd") + "' and '" + final.ToString("yyyy-MM-dd") + "'", objConexao);
            //objCommand.Parameters.Add(Mapped.Parameter("?inicio", inicio));
            //objCommand.Parameters.Add(Mapped.Parameter("?final", final));
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

        public PedidoAtrasadoBD()
        {
            //
            // TODO: Adicionar lógica do construtor aqui
            //
        }
    }
}