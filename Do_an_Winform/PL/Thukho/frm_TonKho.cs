﻿using Do_an_Winform.BLL;
using Do_an_Winform.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Do_an_Winform.PL.Thukho
{
    public partial class frm_TonKho : Form
    {
        public frm_TonKho()
        {
            InitializeComponent();
        }

        private void frm_TonKho_Load(object sender, EventArgs e)
        {
            //CHDTEntities1 entities = new CHDTEntities1();
            //entities.SanPhams.Load();
            //gridviewStock.DataSource = entities.SanPhams.Local.ToBindingList();

            gridviewStock.DataSource = SanPhamBLL.GetProduct();
            gridviewStock.Columns[0].Visible = false;
            gridviewStock.Columns[1].HeaderText = "Tên sản phẩm";
            gridviewStock.Columns[2].HeaderText = "Số lượng";
            gridviewStock.Columns[3].HeaderText = "Đơn giá";
            gridviewStock.Columns[4].Visible = false;
            gridviewStock.Columns[5].Visible = false;
            gridviewStock.Columns[6].Visible = false;
        }

        private void txtFind_TextChange(object sender, EventArgs e)
        {
            gridviewStock.DataSource = SanPhamBLL.GetProductByName(txtFind.Text);
            gridviewStock.Columns[0].Visible = false;
            gridviewStock.Columns[1].HeaderText = "Tên sản phẩm";
            gridviewStock.Columns[2].HeaderText = "Số lượng";
            gridviewStock.Columns[3].HeaderText = "Đơn giá";
            gridviewStock.Columns[4].Visible = false;
            gridviewStock.Columns[5].Visible = false;
            gridviewStock.Columns[6].Visible = false;
        }
    }
}
