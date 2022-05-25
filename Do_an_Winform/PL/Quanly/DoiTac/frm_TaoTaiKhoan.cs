﻿using Do_an_Winform.BLL;
using Do_an_Winform.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Do_an_Winform.PL.Quanly.DoiTac
{
    public partial class frm_TaoTaiKhoan : Form
    {
        public frm_TaoTaiKhoan()
        {
            InitializeComponent();
        }

        private void btTaoTK_Click(object sender, EventArgs e)
        {
            TaiKhoanDTO tk = new TaiKhoanDTO();
            tk.TaiKhoan = txtTaiKhoan.Text;
            tk.MatKhau = txtMatKhau.Text;
            tk.MaLoaiNV = cbMaLoaiNV.Text;
            if (TaiKhoanBLL.AddAccount(tk))
            {
                MessageBox.Show("Thêm tài khoản thành công");
            }
        }

        private void TaoTaiKhoan_Load(object sender, EventArgs e)
        {
            cbMaLoaiNV.Text = "LNV001";
        }
    }
}
