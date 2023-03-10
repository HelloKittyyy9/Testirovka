using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Autoservice
{
    static class SqlUtils
    {
        private static String cs = $"Data Source=(LocalDB)\\MSSQLLocalDB; AttachDbFilename=\"{System.AppDomain.CurrentDomain.BaseDirectory }LocalDB.mdf\"; Integrated Security=True";
        
        public static SqlConnection GetConnection()
        {
            return new SqlConnection(cs);
        }
        
        public static DataSet Select(String table, String[] Columns)
        {
               using(SqlConnection c = new SqlConnection(cs))
            {
                String cmd = "SELECT ";
                foreach (String s in Columns) cmd += s + ", ";
                cmd = cmd.Remove(cmd.Length - 2);
                cmd += " FROM " + table ;
                c.Open();
                SqlDataAdapter dr = new SqlDataAdapter(cmd, c);
                DataSet ds = new DataSet();
                dr.Fill(ds);
                return ds;
            }
        }
        
        public static DataSet Select(String table, String[] Columns, String Condition)
        {
            using (SqlConnection c = new SqlConnection(cs))
            {
                String cmd = "SELECT ";
                foreach (String s in Columns) cmd += s + ", ";
                cmd = cmd.Remove(cmd.Length - 2);
                cmd += " FROM " + table + " " + Condition ;
                c.Open();
                SqlDataAdapter dr = new SqlDataAdapter(cmd, c);
                DataSet ds = new DataSet();
                dr.Fill(ds);
                return ds;
            }

        }
        
        public static int CountRows(String table, String Condition)
        {
            using (SqlConnection c = new SqlConnection(cs))
            {
                String cmd = "SELECT COUNT(*) AS count FROM " + table + " " + Condition;
                c.Open();
                return (int)new SqlCommand(cmd, c).ExecuteScalar();
                
            }
        }
        
        public static int DeleteRows(String table, String Condition)
        {
            using (SqlConnection c = new SqlConnection(cs))
            {
                String cmd = "DELETE FROM " + table + " " + Condition;
                c.Open();
                return new SqlCommand(cmd, c).ExecuteNonQuery(); ;
            }
        }
        
        public static int InsertRow(String table, String[] Columns, String[] Values)
        {
            using (SqlConnection c = new SqlConnection(cs))
            {
                String cmd = "INSERT INTO " + table + " (";
                foreach (String s in Columns) cmd += s + ", ";
                cmd = cmd.Remove(cmd.Length - 2);
                cmd += ") VALUES ('";
                foreach (String s in Values) cmd += s + "', '";
                cmd = cmd.Remove(cmd.Length - 3);
                cmd += ")";
                c.Open();
                return new SqlCommand(cmd, c).ExecuteNonQuery(); ;
            }
        }
        
        public static int InsertRow(String table, String[] Columns, String[] Values, String Output)
        {
            using (SqlConnection c = new SqlConnection(cs))
            {
                String cmd = "INSERT INTO " + table + " (";
                foreach (String s in Columns) cmd += s + ", ";
                cmd = cmd.Remove(cmd.Length - 2);
                cmd += ") OUTPUT " + Output + " VALUES ('";
                foreach (String s in Values) cmd += s + "', '";
                cmd = cmd.Remove(cmd.Length - 3);
                cmd += ")";
                c.Open();
                return (int) new SqlCommand(cmd, c).ExecuteScalar();
            }
        }
        
        public static int UpdateRow(String table, String[] Columns, String[] Values, String Condition)
        {
            if (Columns.Length != Values.Length) throw new DataException("Количество обновляемых значений не соответствует количеству столбцов");
            using (SqlConnection c = new SqlConnection(cs))
            {
                String cmd = "UPDATE " + table + " SET ";
                for(int i = 0; i<Columns.Length; i++)
                {
                    cmd += Columns[i] + " = '" + Values[i] + "', ";
                }
                cmd = cmd.Remove(cmd.Length - 2);
                cmd += " " + Condition;
                c.Open();
                return new SqlCommand(cmd, c).ExecuteNonQuery();
            }

        }
    }
}
