using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MySql.Data.MySqlClient;

namespace FlowerSystem
{
    /// <summary>
    /// Interaction logic for CustomerList.xaml
    /// </summary>
    public partial class CustomerList : Window
    {
        public CustomerList()
        {
            InitializeComponent();
            string connectionString = "server=localhost; user=root; password=a@123456; database= Flower_Shop";
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("select * from Customer_", connection);

            try
            {
                connection.Open();
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                connection.Close();
                dtGrid.DataContext = dt;

            }


            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }
        private void Option_Click(object sender, RoutedEventArgs e)
        {
            Options o = new Options();
            o.Show();
            this.Close();
        }
    }
}
