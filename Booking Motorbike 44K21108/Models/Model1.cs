using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Booking_Motorbike_44K21108.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model11")
        {
        }

        public virtual DbSet<FEEDBACK> FEEDBACKs { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANGs { get; set; }
        public virtual DbSet<NHACUNGCAP> NHACUNGCAPs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<THUEXE> THUEXEs { get; set; }
        public virtual DbSet<XE> XEs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<FEEDBACK>()
                .Property(e => e.MaHD)
                .IsUnicode(false);

            modelBuilder.Entity<FEEDBACK>()
                .Property(e => e.MaXe)
                .IsUnicode(false);

            modelBuilder.Entity<FEEDBACK>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<KHACHHANG>()
                .HasMany(e => e.THUEXEs)
                .WithRequired(e => e.KHACHHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .Property(e => e.MaNCC)
                .IsUnicode(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .Property(e => e.SDT_NCC)
                .IsUnicode(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .HasMany(e => e.XEs)
                .WithRequired(e => e.NHACUNGCAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<THUEXE>()
                .Property(e => e.MaHD)
                .IsUnicode(false);

            modelBuilder.Entity<THUEXE>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<THUEXE>()
                .HasMany(e => e.FEEDBACKs)
                .WithRequired(e => e.THUEXE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<XE>()
                .Property(e => e.MaXe)
                .IsUnicode(false);

            modelBuilder.Entity<XE>()
                .Property(e => e.LoaiXe)
                .IsUnicode(false);

            modelBuilder.Entity<XE>()
                .Property(e => e.TenXe)
                .IsUnicode(false);

            modelBuilder.Entity<XE>()
                .Property(e => e.BienSo)
                .IsUnicode(false);

            modelBuilder.Entity<XE>()
                .Property(e => e.HinhAnh)
                .IsUnicode(false);

            modelBuilder.Entity<XE>()
                .Property(e => e.MaNCC)
                .IsUnicode(false);

            modelBuilder.Entity<XE>()
                .HasMany(e => e.FEEDBACKs)
                .WithRequired(e => e.XE)
                .WillCascadeOnDelete(false);
        }
    }
}
