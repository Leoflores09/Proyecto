using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Domain;
using Presentation;

namespace Login
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void txtuser_Enter(object sender, EventArgs e)
        {
            if (txtuser.Text == "USUARIO")
            {
                txtuser.Text = "";
                txtuser.ForeColor = Color.LightGray;
            }

        }

        private void txtuser_Leave(object sender, EventArgs e)
        {
            if (txtuser.Text == "")
            {
                txtuser.Text = "USUARIO";
                txtuser.ForeColor = Color.DimGray;

            }
        }

        private void txtpass_Enter(object sender, EventArgs e)
        {
            if (txtpass.Text == "CONTRASEÑA")
            {
                txtpass.Text = "";
                txtpass.ForeColor = Color.LightGray;
                txtpass.UseSystemPasswordChar = true;
            }
        }

        private void txtpass_Leave(object sender, EventArgs e)
        {
            if (txtpass.Text == "")
            {
                txtpass.Text = "CONTRASEÑA";
                txtpass.ForeColor = Color.DimGray;
                txtpass.UseSystemPasswordChar = false;
            }
        }

        private void btncerrar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnminimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtuser.Text != "Usuario")
            {
                if (txtpass.Text != "Contraseña"){
                    UserModel user = new UserModel();
                    var validaLogin = user.LoginUser(txtuser.Text, txtpass.Text);
                    if (validaLogin == true)
                    {
                        MenuPrincipal mainMenu = new MenuPrincipal();
                        mainMenu.Show();
                        mainMenu.FormClosed += Logout;
                        this.Hide();
                    }
                    else msgError("Incorrecto usuario o contraseña. \n Por favor intente de nuevo");
                    txtpass.Clear();
                    txtpass.Focus();
                }
                else msgError("Por favor ingrese su contraseña");
            }
            else msgError("Por favor ingrese su usuario");
        }

        private void msgError(string msg)
        {
            lbErrorMessage.Text = "    " + msg;
            lbErrorMessage.Visible = true;

        }

        private void Logout(object serder, FormClosedEventArgs e)
        {
            txtuser.Clear();
            txtpass.Clear();
            lbErrorMessage.Visible = false;
            this.Show();
            txtuser.Focus();

        }
    }
}
