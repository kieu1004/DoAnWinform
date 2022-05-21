﻿using Do_an_Winform.BLL;
using Do_an_Winform.DTO;
using Do_an_Winform.PL.DangNhap;
using Do_an_Winform.PL.Quanly.DoiTac;
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
    public partial class frm_Quanly : Form
    {
        TaiKhoanDTO taikhoan = new TaiKhoanDTO();
        NhanVienDTO nhanvien = new NhanVienDTO();
        LoaiNhanVienDTO loainhanvien = new LoaiNhanVienDTO();
        
        public frm_Quanly(TaiKhoanDTO user)
        {
            InitializeComponent();
            this.Width = 1600;
            this.Height = 900;
            taikhoan = user;
        }

        private void frm_Quanly_Load(object sender, EventArgs e)
        {
            subuserPanel.Visible = false;
            subdoitacPanel.Visible = false;
            subhoadonPanel.Visible = false;
            nhanvien = NhanVienBLL.GetEmployee(taikhoan.MaNguoiDung);
            loainhanvien = LoaiNhanVienBLL.GetEmpType(nhanvien.MaLoaiNV);
            userBtn.Text = nhanvien.TenNV;
            
        }

        private void slideBtn_Click(object sender, EventArgs e)
        {

            if (sidemenu.Width == 55)
            {
                Transition.HideSync(sidemenu, false, BunifuAnimatorNS.Animation.HorizSlide);
                sidemenu.Visible = false;
                sidemenu.Width = 250;
                mainPanel.Location = new Point(260, 45);
                mainPanel.Width -= 195;
                Transition.ShowSync(sidemenu, false, BunifuAnimatorNS.Animation.HorizSlide);
            }
            else
            {
                Transition.HideSync(sidemenu, false, BunifuAnimatorNS.Animation.HorizSlide);
                sidemenu.Visible = false;
                sidemenu.Width = 55;
                mainPanel.Location = new Point(65, 45);
                subuserPanel.Visible = false;
                subdoitacPanel.Visible = false;
                subhoadonPanel.Visible = false;
                mainPanel.Width += 195;
                Transition.ShowSync(sidemenu, false, BunifuAnimatorNS.Animation.HorizSlide);
            }

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            MessBox messBox = new MessBox();
            bool result = messBox.ShowMess("Bạn muốn thoát chương trình ?");           
            if (result)
            {
                Application.Exit();
            }
        }

        private void btnMaximize_Click(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Normal)
            {
                this.WindowState = FormWindowState.Maximized;
            }
            else
            {
                this.WindowState = FormWindowState.Normal;
            }
        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void userBtn_Click(object sender, EventArgs e)
        {
            if (subuserPanel.Visible == false)
            {
                subuserPanel.Visible = true;
            }
            else
            {
                subuserPanel.Visible = false;
            }
        }

        private void btnQLDT_Click(object sender, EventArgs e)
        {
            if (subdoitacPanel.Visible == false)
            {
                subdoitacPanel.Visible = true;
            }
            else
            {
                subdoitacPanel.Visible = false;
            }
        }

        private void btnQLHD_Click(object sender, EventArgs e)
        {
            if (subhoadonPanel.Visible == false)
            {
                subhoadonPanel.Visible = true;
            }
            else
            {
                subhoadonPanel.Visible = false;
            }
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            MessBox messBox = new MessBox();
            bool result = messBox.ShowMess("Bạn muốn đăng xuất ?");
            if (result)
            {
                frm_DangNhap loginform = new frm_DangNhap();
                this.Hide();
                loginform.ShowDialog();
                this.Close();
            }
        }

        private Form activeForm = null;
        private void OpenChildForm(Form childForm)
        {
            if (activeForm != null)
            {
                activeForm.Close();
            }
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            mainPanel.Controls.Add(childForm);
            mainPanel.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        private void btnThongtin_Click(object sender, EventArgs e)
        {
            OpenChildForm(new frm_Thongtin(nhanvien, loainhanvien));
        }

        private void btnQLSP_Click(object sender, EventArgs e)
        {
            OpenChildForm(new frm_QLSP());
        }





        //                             Đối tác - Nhân viên
        




        private void btDoiTac_NV_Click(object sender, EventArgs e)
        {
            OpenChildForm(new frm_DoiTacNV());
        }

        private void btTimKiemNhanVien_Click(object sender, EventArgs e)
        {
            string name = txtTimKiemNhanVien.Text;
            if (name != "")
            {
                List<NhanVienDTO> list = NhanVienBLL.GetEmployeeWithName(name);               
                dgNhanVien.DataSource = list;
            }
            else
            {
                List<NhanVienDTO> list = NhanVienBLL.GetAllEmployee();
                dgNhanVien.DataSource = list;
            }
            dgNhanVien.ReadOnly = true;
            dgNhanVien.AllowUserToResizeColumns = false;
            dgNhanVien.AllowUserToResizeRows = false;
            dgNhanVien.Columns[0].HeaderText = "Mã nhân viên";
            dgNhanVien.Columns[1].HeaderText = "Tên nhân viên";
            dgNhanVien.Columns[2].HeaderText = "Giới tính";
            dgNhanVien.Columns[3].HeaderText = "Email";
            dgNhanVien.Columns[4].HeaderText = "Số điện thoại";
            dgNhanVien.Columns[5].HeaderText = "Địa chỉ";
            dgNhanVien.Columns[6].HeaderText = "Mã loại nhân viên";
            dgNhanVien.Columns[7].HeaderText = "Mã người dùng";
            dgNhanVien.Columns[8].HeaderText = "Trạng thái";
        }

        private void btThemNhanVien_Click(object sender, EventArgs e)
        {
            frm_ThemNV form = new frm_ThemNV();
            this.Hide();
            form.ShowDialog();
        }
        private void dgNhanVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTimKiemNhanVien.Text = dgNhanVien.SelectedCells[0].OwningRow.Cells["TenNV"].Value.ToString();
        }




        //                                 Đối tác - Khách hàng




        private void btDoiTac_KH_Click(object sender, EventArgs e)
        {
            
        }

        private void btTimKiemKhachHang_Click(object sender, EventArgs e)
        {
            string name = txtTimKiemKhachHang.Text;
            if (name != "")
            {
                List<KhachHangDTO> list = KhachHangBLL.GetCustomerWithName(name);
                dgKhachHang.DataSource = list;
            }
            else
            {
                List<KhachHangDTO> list = KhachHangBLL.GetAllCustomer();
                dgKhachHang.DataSource = list;
            }
            dgKhachHang.ReadOnly = true;
            dgKhachHang.AllowUserToResizeColumns = false;
            dgKhachHang.AllowUserToResizeRows = false;  
            dgKhachHang.Columns[0].HeaderText = "Mã khách hàng";
            dgKhachHang.Columns[1].HeaderText = "Tên khách hàng";
            dgKhachHang.Columns[2].HeaderText = "Giới tính";
            dgKhachHang.Columns[3].HeaderText = "Email";
            dgKhachHang.Columns[4].HeaderText = "Số điện thoại";
            dgKhachHang.Columns[5].HeaderText = "Địa chỉ";
            dgKhachHang.Columns[6].HeaderText = "Mã loại thành viên";
            dgKhachHang.Columns[7].HeaderText = "Điểm tích lũy";
            dgKhachHang.Columns[8].HeaderText = "Trạng thái";
        }

        private void btThemKhachHang_Click(object sender, EventArgs e)
        {
            frm_ThemKH form = new frm_ThemKH();
            this.Hide();
            form.ShowDialog();
        }
        private void dgKhachHang_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTimKiemKhachHang.Text = dgKhachHang.SelectedCells[0].OwningRow.Cells["TenKH"].Value.ToString();
        }




        //                                    Đối tác - nhà cung cấp


        private void btDoiTac_NCC_Click(object sender, EventArgs e)
        {
            
        }

        private void btTimKiemNCC_Click(object sender, EventArgs e)
        {
            string name = txtTimKiemNCC.Text;
            if (name != "")
            {
                List<NhaCungCapDTO> list = NhaCungCapBLL.GetSupplyWithName(name);
                dgNhaCungCap.DataSource = list;
            }
            else
            {
                List<NhaCungCapDTO> list = NhaCungCapBLL.GetAllSupply();
                dgNhaCungCap.DataSource = list;
            }
            dgNhaCungCap.ReadOnly = true;
            dgNhaCungCap.AllowUserToResizeColumns = false;
            dgNhaCungCap.AllowUserToResizeRows = false;
            dgNhaCungCap.Columns[0].HeaderText = "Mã nhà cung cấp";
            dgNhaCungCap.Columns[1].HeaderText = "Tên nhà cung cấp";
        }

        private void btThemNCC_Click(object sender, EventArgs e)
        {
            frm_ThemNCC form = new frm_ThemNCC();
            this.Hide();
            form.ShowDialog();
        }

        private void dgNhaCungCap_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTimKiemNCC.Text = dgNhaCungCap.SelectedCells[0].OwningRow.Cells["TenNCC"].Value.ToString();
        }

    }
}
