//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Do_an_Winform
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChiTietPhieuNhap
    {
        public string MaPN { get; set; }
        public string MaSP { get; set; }
        public int SoLuong { get; set; }
        public string MaNhaSX { get; set; }
        public int ThanhTien { get; set; }
    
        public virtual NhaSanXuat NhaSanXuat { get; set; }
        public virtual PhieuNhapHang PhieuNhapHang { get; set; }
        public virtual SanPham SanPham { get; set; }
    }
}
