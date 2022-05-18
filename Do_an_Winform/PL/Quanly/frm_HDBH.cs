﻿using Do_an_Winform.DAL;
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

namespace Do_an_Winform.PL.Quanly
{
    public partial class frm_HDBH : Form
    {
        public frm_HDBH()
        {
            InitializeComponent();
            gvHDBH.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            gvHDBH.ReadOnly = true;
        }

        private void txtSearch_Enter(object sender, EventArgs e)
        {
            if (txtSearch.Text == "Tìm kiếm mã hóa đơn")
            {
                txtSearch.Text = "";
                txtSearch.ForeColor = Color.Black;
            }
        }

        private void txtSearch_Leave(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
            {
                txtSearch.Text = "Tìm kiếm mã hóa đơn";
                txtSearch.ForeColor = Color.Silver;
            }
        }

        private void txtSearch_OnIconRightClick(object sender, EventArgs e)
        {
            DateTime startday, endday;
            try
            {
                startday = DateTime.ParseExact(maskedtxtStartDay.Text, "dd/MM/yyyy HH:mm", System.Globalization.CultureInfo.InvariantCulture);
                endday = DateTime.ParseExact(maskedtxtEndDay.Text, "dd/MM/yyyy HH:mm", System.Globalization.CultureInfo.InvariantCulture);
                if(endday<=startday)
                {
                    MessageBox.Show("Vui lòng kiểm tra lại thời gian \nThời gian đã nhập không hợp lệ", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Vui lòng kiểm tra lại thời gian \nThời gian đã nhập không hợp lệ", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (txtSearch.Text.Trim() != "")
            {
                HoaDonDTO hdsearch = new HoaDonDTO();
                hdsearch.MaHD = txtSearch.Text;

                List<HoaDonDTO> listhd = HoaDonDAL.ThongKeTheoMaHD(hdsearch, startday, endday);
                gvHDBH.DataSource = listhd;
            }
            else
            {
                List<HoaDonDTO> listhd = HoaDonDAL.ThongKeTatCaHD(startday, endday);
                gvHDBH.DataSource = listhd;
            }
        }

        private void frm_HDBH_Load(object sender, EventArgs e)
        {
            //load Date
            maskedtxtStartDay.Text = DateTime.Now.ToString("dd/MM/yyyy 00:01");
            maskedtxtEndDay.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm");

            //load Datagridview
            DateTime startday, endday;
            startday = DateTime.ParseExact(maskedtxtStartDay.Text, "dd/MM/yyyy HH:mm", System.Globalization.CultureInfo.InvariantCulture);
            endday = DateTime.ParseExact(maskedtxtEndDay.Text, "dd/MM/yyyy HH:mm", System.Globalization.CultureInfo.InvariantCulture);
            List<HoaDonDTO> listhd = HoaDonDAL.ThongKeTatCaHD(startday, endday);
            gvHDBH.DataSource = listhd;
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.PrintDialog printdialog = new PrintDialog();
            printdialog.AllowSomePages = true;
            printdialog.ShowHelp = true;
            printdialog.Document = printDocumentHDBH;
            DialogResult result = printdialog.ShowDialog();
            if (result == DialogResult.OK)
            {
                printDocumentHDBH.Print();
            }
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            printPreviewDialogHDBH.ShowDialog();
        }
    }
}
