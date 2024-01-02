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
    /// Interaction logic for Options.xaml
    /// </summary>
    public partial class Options : Window
    {
        public Options()
        {
            InitializeComponent();
        }
        private void Company_Click(object sender, RoutedEventArgs e)
        {
            Company c = new Company();
            c.Show();
            this.Close();
        }
        private void Flower_Click(object sender, RoutedEventArgs e)
        {
            Flower f = new Flower();
            f.Show();
            this.Close();
        }
        private void Billing_Click(object sender, RoutedEventArgs e)
        {
            EnterBilling b = new EnterBilling();
            b.Show();
            this.Close();
        }
        private void Salary_Click(object sender, RoutedEventArgs e)
        {
            Salary s = new Salary();
            s.Show();
            this.Close();
        }
        private void CustomerList_Click(object sender, RoutedEventArgs e)
        {
            CustomerList c = new CustomerList();
            c.Show();
            this.Close();
        }
        private void DeliveryList_Click(object sender, RoutedEventArgs e)
        {
            DeliveryList d = new DeliveryList();
            d.Show();
            this.Close();
        }
        private void EmployeesList_Click(object sender, RoutedEventArgs e)
        {
            EmployeeList l = new EmployeeList();
            l.Show();
            this.Close();
        }
        private void AddEmployee_Click(object sender, RoutedEventArgs e)
        {
            AddEmployee l = new AddEmployee();
            l.Show();
            this.Close();
        }
        private void AddCustomer_Click(object sender, RoutedEventArgs e)
        {
            AddCustomer l = new AddCustomer();
            l.Show();
            this.Close();
        }
        private void AddComplain_Click(object sender, RoutedEventArgs e)
        {
            AddComplain l = new AddComplain();
            l.Show();
            this.Close();
        }
        private void LogOut_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

    }
}
