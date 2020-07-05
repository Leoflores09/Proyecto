using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Data.DbModels
{
    public partial class DB_Context : DbContext
    {
        public DB_Context()
        {
        }

        public DB_Context(DbContextOptions<DB_Context> options)
            : base(options)
        {
        }

        public virtual DbSet<TCasosDepartamento> TCasosDepartamento { get; set; }
        public virtual DbSet<TCasosGeneros> TCasosGeneros { get; set; }
        public virtual DbSet<TLogin> TLogin { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=DESKTOP-K31EJCM\\SQLEXPRESS;Database=Proyecto; persist security info=True; Integrated Security = true");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TCasosDepartamento>(entity =>
            {
                entity.HasKey(e => e.IdDepartamento)
                    .HasName("PK_t_CasosDeparmento");

                entity.ToTable("t_CasosDepartamento");

                entity.Property(e => e.Departamento)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TCasosGeneros>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("t_CasosGeneros");

                entity.Property(e => e.Sexo)
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TLogin>(entity =>
            {
                entity.HasKey(e => e.Usuario);

                entity.ToTable("t_Login");

                entity.Property(e => e.Usuario)
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
