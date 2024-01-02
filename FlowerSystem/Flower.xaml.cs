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
    /// Interaction logic for Flower.xaml
    /// </summary>
    public partial class Flower : Window
    {
        public Flower()
        {
            InitializeComponent();
            Grid();


        }

        public void Grid()
        {
            string connectionString = "server=localhost; user=root; password=a@123456; database= Flower_Shop";
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand("select * from Items_", connection);

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

        public void addFlower_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string connectionString = "server=localhost; user=root; password=a@123456; database=Flower_Shop";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    MySqlCommand cmd = new MySqlCommand("INSERT INTO Items_ ( ItemID, ItemName, Price, Qunatity) VALUES (@ItemID, @ItemName, @Price, @Qunatity)", connection);

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ItemID", AflowerID.Text);
                    cmd.Parameters.AddWithValue("@ItemName", AflowerName.Text);
                    cmd.Parameters.AddWithValue("@Price", AflowerPrice.Text);
                    cmd.Parameters.AddWithValue("@Qunatity", AflowerQ.Text);

                    cmd.ExecuteNonQuery();
                }

                Grid();
                MessageBox.Show("Successfully");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }

        public void updateFlower_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string connectionString = "server=localhost; user=root; password=a@123456; database=Flower_Shop";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    MySqlCommand cmd = new MySqlCommand("UPDATE Items_ SET ItemName = @ItemName, Price = @Price, Qunatity = @Qunatity WHERE ItemID = @ItemID", connection);

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ItemID", UflowerID.Text); 
                    cmd.Parameters.AddWithValue("@ItemName", UflowerName.Text);
                    cmd.Parameters.AddWithValue("@Price", UflowerPrice.Text);
                    cmd.Parameters.AddWithValue("@Qunatity", UflowerQ.Text);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        MessageBox.Show("Successfully updated");
                    }
                    else
                    {
                        MessageBox.Show("No matching record found");
                    }
                }

                Grid();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }


        public void deleteFlower_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string connectionString = "server=localhost; user=root; password=a@123456; database=Flower_Shop";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    MySqlCommand cmd = new MySqlCommand("DELETE FROM Items_ WHERE ItemID = @ItemID", connection);

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ItemID", AflowerIdToDelete.Text);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {

                        MessageBox.Show("Successfully deleted");
                    }
                    else
                    {
                        MessageBox.Show("No matching record found");
                    }
                }
                
                Grid();

            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }



        public void UC(object sender, RoutedEventArgs e)
        {
            UflowerID.Clear();
            UflowerName.Clear();
            UflowerPrice.Clear();
            UflowerQ.Clear();
        }

        public void AC(object sender, RoutedEventArgs e)
        {
            AflowerID.Clear();
            AflowerName.Clear();
            AflowerPrice.Clear();
            AflowerQ.Clear();
        }

        public void DC(object sender, RoutedEventArgs e)
        {
            AflowerIdToDelete.Clear();

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void GridSplitter_DragDelta(object sender, System.Windows.Controls.Primitives.DragDeltaEventArgs e)
        {

        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void DataGrid_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }
        private void Option_Click(object sender, RoutedEventArgs e)
        {
            Options o = new Options();
            o.Show();
            this.Close();
        }

        private void UflowerName_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}

