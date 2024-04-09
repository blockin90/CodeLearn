﻿// <auto-generated />
using System;
using CodeLearn.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace CodeLearn.Infrastructure.Data.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20240409154643_Remove_EnrolmentYear")]
    partial class Remove_EnrolmentYear
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.3")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("CodeLearn.Domain.ExerciseSubmissions.ExerciseSubmission", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bigint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<long>("Id"));

                    b.Property<int>("ExerciseId")
                        .HasColumnType("int");

                    b.Property<DateTime>("SentDateTime")
                        .HasColumnType("datetime2");

                    b.Property<string>("Status")
                        .IsRequired()
                        .HasMaxLength(15)
                        .HasColumnType("nvarchar(15)");

                    b.Property<string>("SubmissionType")
                        .IsRequired()
                        .HasMaxLength(21)
                        .HasColumnType("nvarchar(21)");

                    b.Property<int>("TestingSessionId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("ExerciseId");

                    b.HasIndex("TestingSessionId");

                    b.ToTable("ExerciseSubmission", "Test");

                    b.HasDiscriminator<string>("SubmissionType").HasValue("ExerciseSubmission");

                    b.UseTphMappingStrategy();
                });

            modelBuilder.Entity("CodeLearn.Domain.ExerciseTopics.ExerciseTopic", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTimeOffset>("Created")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTimeOffset>("LastModified")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("LastModifiedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(30)
                        .HasColumnType("nvarchar(30)");

                    b.HasKey("Id");

                    b.HasIndex("Name");

                    b.ToTable("ExerciseTopic", "Test");
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.Entities.DataType", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Alias")
                        .IsRequired()
                        .HasMaxLength(7)
                        .HasColumnType("nvarchar(7)");

                    b.Property<string>("SystemName")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.HasKey("Id");

                    b.ToTable("DataType", "Test");
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.Exercise", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasMaxLength(1000)
                        .HasColumnType("nvarchar(1000)");

                    b.Property<string>("Difficulty")
                        .IsRequired()
                        .HasMaxLength(6)
                        .HasColumnType("nvarchar(6)");

                    b.Property<string>("ExerciseType")
                        .IsRequired()
                        .HasMaxLength(13)
                        .HasColumnType("nvarchar(13)");

                    b.Property<int>("TestId")
                        .HasColumnType("int");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("Id");

                    b.HasIndex("TestId");

                    b.ToTable("Exercise", "Test");

                    b.HasDiscriminator<string>("ExerciseType").HasValue("Exercise");

                    b.UseTphMappingStrategy();
                });

            modelBuilder.Entity("CodeLearn.Domain.QuestionChoices.QuestionChoice", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<int>("ExerciseId")
                        .HasColumnType("int");

                    b.Property<bool>("IsCorrect")
                        .HasColumnType("bit");

                    b.Property<string>("Text")
                        .IsRequired()
                        .HasMaxLength(300)
                        .HasColumnType("nvarchar(300)");

                    b.HasKey("Id");

                    b.HasIndex("ExerciseId");

                    b.ToTable("QuestionChoice", "Test");
                });

            modelBuilder.Entity("CodeLearn.Domain.StudentGroups.StudentGroup", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTimeOffset>("Created")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("EnrolmentYear")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("LastModified")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("LastModifiedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Id");

                    b.ToTable("StudentGroup", "Person");
                });

            modelBuilder.Entity("CodeLearn.Domain.TestingSessions.TestingSession", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTimeOffset>("Created")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTimeOffset>("FinishDateTime")
                        .HasColumnType("datetimeoffset");

                    b.Property<DateTimeOffset>("LastModified")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("LastModifiedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Score")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("StartDateTime")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("Status")
                        .IsRequired()
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.Property<int>("TestingId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("TestingId");

                    b.ToTable("TestingSession", "Test");
                });

            modelBuilder.Entity("CodeLearn.Domain.Testings.Testing", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTimeOffset>("Created")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTimeOffset>("DeadlineDate")
                        .HasColumnType("datetimeoffset");

                    b.Property<int>("DurationInMinutes")
                        .HasColumnType("int");

                    b.Property<DateTimeOffset>("LastModified")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("LastModifiedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("StudentGroupId")
                        .HasColumnType("int");

                    b.Property<int>("TestId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("StudentGroupId");

                    b.HasIndex("TestId");

                    b.ToTable("Testing", "Test");
                });

            modelBuilder.Entity("CodeLearn.Domain.Tests.Test", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTimeOffset>("Created")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasMaxLength(1000)
                        .HasColumnType("nvarchar(1000)");

                    b.Property<bool>("IsPublic")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset>("LastModified")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("LastModifiedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("Id");

                    b.ToTable("Test", "Test");
                });

            modelBuilder.Entity("CodeLearn.Infrastructure.Identity.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Patronymic")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("StudentGroupName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TemporaryPassword")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserCode")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("WindowsAccountName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers", (string)null);
                });

            modelBuilder.Entity("Exercise2ExerciseTopic", b =>
                {
                    b.Property<int>("ExerciseId")
                        .HasColumnType("int");

                    b.Property<int>("ExerciseTopicId")
                        .HasColumnType("int");

                    b.HasKey("ExerciseId", "ExerciseTopicId");

                    b.HasIndex("ExerciseTopicId");

                    b.ToTable("Exercise2ExerciseTopic", "Test");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RoleId")
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens", (string)null);
                });

            modelBuilder.Entity("SelectedChoice", b =>
                {
                    b.Property<long>("ExerciseSubmissionId")
                        .HasColumnType("bigint");

                    b.Property<int>("QuestionChoiceId")
                        .HasColumnType("int");

                    b.HasKey("ExerciseSubmissionId", "QuestionChoiceId");

                    b.HasIndex("QuestionChoiceId");

                    b.ToTable("SelectedChoice", "Test");
                });

            modelBuilder.Entity("CodeLearn.Domain.ExerciseSubmissions.ChoiceExerciseSubmission", b =>
                {
                    b.HasBaseType("CodeLearn.Domain.ExerciseSubmissions.ExerciseSubmission");

                    b.HasDiscriminator().HasValue("Question");
                });

            modelBuilder.Entity("CodeLearn.Domain.ExerciseSubmissions.CodeExerciseSubmission", b =>
                {
                    b.HasBaseType("CodeLearn.Domain.ExerciseSubmissions.ExerciseSubmission");

                    b.Property<int>("RuntimeInMilliseconds")
                        .HasColumnType("int");

                    b.Property<string>("StudentCode")
                        .IsRequired()
                        .HasMaxLength(3000)
                        .HasColumnType("nvarchar(3000)");

                    b.Property<string>("TestingInformation")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.HasDiscriminator().HasValue("Code");
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.ClassCodingExercise", b =>
                {
                    b.HasBaseType("CodeLearn.Domain.Exercises.Exercise");

                    b.Property<string>("ClassSolutionCode")
                        .IsRequired()
                        .HasMaxLength(300)
                        .HasColumnType("nvarchar(300)");

                    b.Property<string>("ClassTesterCode")
                        .IsRequired()
                        .HasMaxLength(2000)
                        .HasColumnType("nvarchar(2000)");

                    b.HasDiscriminator().HasValue("ClassCoding");
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.MethodCodingExercise", b =>
                {
                    b.HasBaseType("CodeLearn.Domain.Exercises.Exercise");

                    b.Property<int>("MethodReturnDataTypeId")
                        .HasColumnType("int");

                    b.Property<string>("MethodSolutionCode")
                        .IsRequired()
                        .HasMaxLength(150)
                        .HasColumnType("nvarchar(150)");

                    b.Property<string>("MethodToExecute")
                        .IsRequired()
                        .HasMaxLength(30)
                        .HasColumnType("nvarchar(30)");

                    b.HasIndex("MethodReturnDataTypeId");

                    b.HasDiscriminator().HasValue("MethodCoding");
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.QuestionExercise", b =>
                {
                    b.HasBaseType("CodeLearn.Domain.Exercises.Exercise");

                    b.Property<bool>("IsMultipleAnswers")
                        .HasColumnType("bit");

                    b.HasDiscriminator().HasValue("Question");
                });

            modelBuilder.Entity("CodeLearn.Domain.ExerciseSubmissions.ExerciseSubmission", b =>
                {
                    b.HasOne("CodeLearn.Domain.Exercises.Exercise", null)
                        .WithMany()
                        .HasForeignKey("ExerciseId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("CodeLearn.Domain.TestingSessions.TestingSession", null)
                        .WithMany()
                        .HasForeignKey("TestingSessionId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.Exercise", b =>
                {
                    b.HasOne("CodeLearn.Domain.Tests.Test", null)
                        .WithMany()
                        .HasForeignKey("TestId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("CodeLearn.Domain.QuestionChoices.QuestionChoice", b =>
                {
                    b.HasOne("CodeLearn.Domain.Exercises.QuestionExercise", null)
                        .WithMany("QuestionChoices")
                        .HasForeignKey("ExerciseId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("CodeLearn.Domain.TestingSessions.TestingSession", b =>
                {
                    b.HasOne("CodeLearn.Domain.Testings.Testing", null)
                        .WithMany()
                        .HasForeignKey("TestingId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();
                });

            modelBuilder.Entity("CodeLearn.Domain.Testings.Testing", b =>
                {
                    b.HasOne("CodeLearn.Domain.StudentGroups.StudentGroup", null)
                        .WithMany()
                        .HasForeignKey("StudentGroupId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("CodeLearn.Domain.Tests.Test", null)
                        .WithMany()
                        .HasForeignKey("TestId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Exercise2ExerciseTopic", b =>
                {
                    b.HasOne("CodeLearn.Domain.Exercises.Exercise", null)
                        .WithMany()
                        .HasForeignKey("ExerciseId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("CodeLearn.Domain.ExerciseTopics.ExerciseTopic", null)
                        .WithMany()
                        .HasForeignKey("ExerciseTopicId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("CodeLearn.Infrastructure.Identity.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("CodeLearn.Infrastructure.Identity.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("CodeLearn.Infrastructure.Identity.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("CodeLearn.Infrastructure.Identity.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("SelectedChoice", b =>
                {
                    b.HasOne("CodeLearn.Domain.ExerciseSubmissions.ChoiceExerciseSubmission", null)
                        .WithMany()
                        .HasForeignKey("ExerciseSubmissionId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("CodeLearn.Domain.QuestionChoices.QuestionChoice", null)
                        .WithMany()
                        .HasForeignKey("QuestionChoiceId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.MethodCodingExercise", b =>
                {
                    b.HasOne("CodeLearn.Domain.Exercises.Entities.DataType", "MethodReturnDataType")
                        .WithMany()
                        .HasForeignKey("MethodReturnDataTypeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.OwnsMany("CodeLearn.Domain.Exercises.Entities.ExerciseNote", "ExerciseNotes", b1 =>
                        {
                            b1.Property<int>("Id")
                                .ValueGeneratedOnAdd()
                                .HasColumnType("int");

                            SqlServerPropertyBuilderExtensions.UseIdentityColumn(b1.Property<int>("Id"));

                            b1.Property<string>("Decoration")
                                .IsRequired()
                                .HasMaxLength(30)
                                .HasColumnType("nvarchar(30)");

                            b1.Property<string>("Entry")
                                .IsRequired()
                                .HasMaxLength(100)
                                .HasColumnType("nvarchar(100)");

                            b1.Property<int>("ExerciseId")
                                .HasColumnType("int");

                            b1.HasKey("Id");

                            b1.HasIndex("ExerciseId");

                            b1.ToTable("ExerciseNote", "Test");

                            b1.WithOwner()
                                .HasForeignKey("ExerciseId");
                        });

                    b.OwnsMany("CodeLearn.Domain.Exercises.Entities.InputOutputExample", "InputOutputExamples", b1 =>
                        {
                            b1.Property<int>("Id")
                                .ValueGeneratedOnAdd()
                                .HasColumnType("int");

                            SqlServerPropertyBuilderExtensions.UseIdentityColumn(b1.Property<int>("Id"));

                            b1.Property<int>("ExerciseId")
                                .HasColumnType("int");

                            b1.Property<string>("Input")
                                .IsRequired()
                                .HasMaxLength(100)
                                .HasColumnType("nvarchar(100)");

                            b1.Property<string>("Output")
                                .IsRequired()
                                .HasMaxLength(50)
                                .HasColumnType("nvarchar(50)");

                            b1.HasKey("Id");

                            b1.HasIndex("ExerciseId");

                            b1.ToTable("InputOutputExample", "Test");

                            b1.WithOwner()
                                .HasForeignKey("ExerciseId");
                        });

                    b.OwnsMany("CodeLearn.Domain.Exercises.Entities.MethodParameter", "MethodParameters", b1 =>
                        {
                            b1.Property<int>("Id")
                                .ValueGeneratedOnAdd()
                                .HasColumnType("int");

                            SqlServerPropertyBuilderExtensions.UseIdentityColumn(b1.Property<int>("Id"));

                            b1.Property<int>("DataTypeId")
                                .HasColumnType("int");

                            b1.Property<int>("ExerciseId")
                                .HasColumnType("int");

                            b1.Property<int>("Position")
                                .HasColumnType("int");

                            b1.HasKey("Id");

                            b1.HasIndex("DataTypeId");

                            b1.HasIndex("ExerciseId");

                            b1.ToTable("MethodParameter", "Test");

                            b1.HasOne("CodeLearn.Domain.Exercises.Entities.DataType", "DataType")
                                .WithMany()
                                .HasForeignKey("DataTypeId")
                                .OnDelete(DeleteBehavior.Restrict)
                                .IsRequired();

                            b1.WithOwner()
                                .HasForeignKey("ExerciseId");

                            b1.Navigation("DataType");
                        });

                    b.OwnsMany("CodeLearn.Domain.Exercises.Entities.TestCase", "TestCases", b1 =>
                        {
                            b1.Property<int>("Id")
                                .ValueGeneratedOnAdd()
                                .HasColumnType("int");

                            SqlServerPropertyBuilderExtensions.UseIdentityColumn(b1.Property<int>("Id"));

                            b1.Property<string>("CorrectOutputValue")
                                .IsRequired()
                                .HasMaxLength(250)
                                .HasColumnType("nvarchar(250)");

                            b1.Property<int>("ExerciseId")
                                .HasColumnType("int");

                            b1.HasKey("Id");

                            b1.HasIndex("ExerciseId");

                            b1.ToTable("TestCase", "Test");

                            b1.WithOwner()
                                .HasForeignKey("ExerciseId");

                            b1.OwnsMany("CodeLearn.Domain.Exercises.Entities.TestCaseParameter", "TestCaseParameters", b2 =>
                                {
                                    b2.Property<int>("Id")
                                        .ValueGeneratedOnAdd()
                                        .HasColumnType("int");

                                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b2.Property<int>("Id"));

                                    b2.Property<int>("Position")
                                        .HasColumnType("int");

                                    b2.Property<int>("TestCaseId")
                                        .HasColumnType("int");

                                    b2.Property<string>("Value")
                                        .IsRequired()
                                        .HasMaxLength(250)
                                        .HasColumnType("nvarchar(250)");

                                    b2.HasKey("Id");

                                    b2.HasIndex("TestCaseId");

                                    b2.ToTable("TestCaseParameter", "Test");

                                    b2.WithOwner()
                                        .HasForeignKey("TestCaseId");
                                });

                            b1.Navigation("TestCaseParameters");
                        });

                    b.Navigation("ExerciseNotes");

                    b.Navigation("InputOutputExamples");

                    b.Navigation("MethodParameters");

                    b.Navigation("MethodReturnDataType");

                    b.Navigation("TestCases");
                });

            modelBuilder.Entity("CodeLearn.Domain.Exercises.QuestionExercise", b =>
                {
                    b.Navigation("QuestionChoices");
                });
#pragma warning restore 612, 618
        }
    }
}
