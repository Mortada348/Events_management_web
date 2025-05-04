using System;
using System.Collections.Generic;
using EventsManagementCore.Models;
using Microsoft.EntityFrameworkCore;

namespace EventsManagementCore;

public partial class EventsManagementDbContext : DbContext
{
    public EventsManagementDbContext()
    {
    }

    public EventsManagementDbContext(DbContextOptions<EventsManagementDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Admin> Admins { get; set; }

    public virtual DbSet<Event> Events { get; set; }

    

    public virtual DbSet<LookUp> LookUps { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<UserEvent> UserEvents { get; set; }

  

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=(localdb)\\Local;Database=EventsManagement;Trusted_Connection=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Admin>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Admins__3214EC07A19BF9AD");

            entity.Property(e => e.AdminName)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.AdminPassword).IsUnicode(false);
            entity.Property(e => e.DateOfBirth).HasColumnType("datetime");
            entity.Property(e => e.Email).IsUnicode(false);

            entity.HasOne(d => d.GenderNavigation).WithMany(p => p.Admins)
                .HasForeignKey(d => d.Gender)
                .HasConstraintName("FK__Admins__Gender__276EDEB3");
        });

        modelBuilder.Entity<Event>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Events__3214EC07B831E163");

            entity.Property(e => e.DateFrom).HasColumnType("datetime");
            entity.Property(e => e.DateTo).HasColumnType("datetime");
            entity.Property(e => e.Destination).IsUnicode(false);
            entity.Property(e => e.EventDescription).IsUnicode(false);
            entity.Property(e => e.EventName).IsUnicode(false);

            entity.HasOne(d => d.Category).WithMany(p => p.EventCategories)
                .HasForeignKey(d => d.CategoryId)
                .HasConstraintName("FK__Events__Category__33D4B598");

            entity.HasOne(d => d.Status).WithMany(p => p.EventStatuses)
                .HasForeignKey(d => d.StatusId)
                .HasConstraintName("FK__Events__StatusId__34C8D9D1");
        });

     

        modelBuilder.Entity<LookUp>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__LookUps__3214EC07B6950A27");

            entity.Property(e => e.Code).IsUnicode(false);
            entity.Property(e => e.LookUpName).IsUnicode(false);

            entity.HasOne(d => d.Parent).WithMany(p => p.InverseParent)
                .HasForeignKey(d => d.ParentId)
                .HasConstraintName("FK__LookUps__ParentI__24927208");
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Roles__3214EC07E5F3DB9E");

            entity.Property(e => e.RoleName).IsUnicode(false);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Users__3214EC07E37D57B9");

            entity.Property(e => e.DateOfBirth).HasColumnType("datetime");
            entity.Property(e => e.Email).IsUnicode(false);
            entity.Property(e => e.FullName).IsUnicode(false);
            entity.Property(e => e.JoiningDate).HasColumnType("datetime");
            entity.Property(e => e.Nationality).IsUnicode(false);
            entity.Property(e => e.Photos).IsUnicode(false);
            entity.Property(e => e.Profession).IsUnicode(false);
            entity.Property(e => e.UserPassword).IsUnicode(false);

            entity.HasOne(d => d.GenderNavigation).WithMany(p => p.UserGenderNavigations)
                .HasForeignKey(d => d.Gender)
                .HasConstraintName("FK__Users__Gender__300424B4");

            entity.HasOne(d => d.UsertypeNavigation).WithMany(p => p.UserUsertypeNavigations)
                .HasForeignKey(d => d.Usertype)
                .HasConstraintName("FK__Users__Usertype__30F848ED");
        });

        modelBuilder.Entity<UserEvent>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__UserEven__3214EC070DAFD106");

            entity.HasOne(d => d.Event).WithMany(p => p.UserEvents)
                .HasForeignKey(d => d.EventId)
                .HasConstraintName("FK__UserEvent__Event__38996AB5");

            entity.HasOne(d => d.User).WithMany(p => p.UserEvents)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__UserEvent__UserI__37A5467C");
        });

    

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
