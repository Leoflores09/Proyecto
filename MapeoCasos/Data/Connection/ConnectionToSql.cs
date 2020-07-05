using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace Data.Connection
{
    public abstract class ConnectionToSql
    {
        private readonly string connectionString;

        public ConnectionToSql()
        {
            connectionString = "Server=DESKTOP-K31EJCM\\SQLEXPRESS ;Database=Proyecto; persist security info=True; Integrated Security = true";
        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection(connectionString);
        }

    }
}
