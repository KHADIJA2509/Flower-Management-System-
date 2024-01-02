using System;
using System.Collections.Generic;
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

namespace FlowerSystem
{
    /// <summary>
    /// Interaction logic for EnterBilling.xaml
    /// </summary>
    public partial class EnterBilling : Window
    {
        public EnterBilling()
        {
            InitializeComponent();
        }

        private void OpenBillRecord(object sender, RoutedEventArgs e)
        {
            BillRecord Bill = new BillRecord();
            Bill.Show();
            this.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
        private void TextBox_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {

        }
        private void Option_Click(object sender, RoutedEventArgs e)
        {
            Options o = new Options();
            o.Show();
            this.Close();
        }
    }
}
