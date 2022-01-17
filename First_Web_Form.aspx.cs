using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class First_Web_Form : System.Web.UI.Page
    {
      
        bool hitDecimalButton = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Application["operator"] = "";
                Application["operand"] = "";
            }
        }
        protected void btn7_Click(object sender, EventArgs e)
        {
            if (txtDisplay.Text == "0")
                txtDisplay.Text = "";
            Button myButton = (Button)sender;
            txtDisplay.Text += myButton.Text;
           
        }
        protected void btnAC_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = "0";
        }
        protected void btnC_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = txtDisplay.Text.Substring(0, txtDisplay.Text.Length - 1);
            if (txtDisplay.Text == string.Empty)
                txtDisplay.Text = "0";
        }
        protected void btnPlus_Click(object sender, EventArgs e)
        {
            Button myButton = (Button) sender;
            txtDisplay.Text += myButton.Text;
            string myOperator = (string)Application["operator"];
            myOperator = myButton.Text;
            Application["operator"] = myOperator;
            btnDecimal.Enabled = true;
            hitDecimalButton = false;

        }
        protected void btnEqual_Click(object sender, EventArgs e)
        {
            string strOperator = Application["operator"].ToString();
            string strOperand = Application["operand"].ToString();
            double result = 0.0;

            List<string> transferValue = new List<string>();
            string txtBoxValue = txtDisplay.Text;
            char[] delimiters = new char[] { '+', '-', '*', '/' };
            foreach (var item in txtBoxValue.Split(delimiters))
            {
                transferValue.Add(item);
            }
            strOperand = transferValue[0].ToString();
            txtDisplay.Text = transferValue[transferValue.Count -1].ToString();
            //strOperator = transferValue[1].ToString();
            Application["operand"] = strOperand;
            //Application["operator"] = strOperator;
            
            switch (strOperator)
            {
                case "+":
                    result = double.Parse(strOperand) + double.Parse(txtDisplay.Text);
                    break;
                case "-":
                    result = double.Parse(strOperand) - double.Parse(txtDisplay.Text);
                    break;
                case "*":
                    result = double.Parse(strOperand) * double.Parse(txtDisplay.Text);
                    break;
                case "/":
                    if (double.Parse(txtDisplay.Text) != 0)
                        result = double.Parse(strOperand) / double.Parse(txtDisplay.Text);
                    break;
            }
            txtDisplay.Text = result.ToString();
            btnDecimal.Enabled = true;
        }
        protected void btnDecimal_Click(object sender, EventArgs e)
        {
            txtDisplay.Text += ".";
            hitDecimalButton = true;
            if (hitDecimalButton)
            {
                btnDecimal.Enabled = false;
            }
        }
    }
}