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
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.ChiTietHoaDons = new HashSet<ChiTietHoaDon>();
            this.ChiTietPhieuNhaps = new HashSet<ChiTietPhieuNhap>();
            this.ChiTietPhieuXuats = new HashSet<ChiTietPhieuXuat>();
        }
    
        public string MaSP { get; set; }
        public string TenSP { get; set; }
        public int SoLuong { get; set; }
        public int DonGia { get; set; }
        public string MaLoaiSP { get; set; }
        public string MaNhaSX { get; set; }
        public string TrangThai { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHoaDon> ChiTietHoaDons { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuNhap> ChiTietPhieuNhaps { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuXuat> ChiTietPhieuXuats { get; set; }
        public virtual LoaiSanPham LoaiSanPham { get; set; }
        public virtual NhaSanXuat NhaSanXuat { get; set; }
    }
}
