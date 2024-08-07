﻿using CodeLearn.Db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CodeLearn.WPF.Windows.Student.Pages
{
    /// <summary>
    /// Interaction logic for DoExercisePage.xaml
    /// </summary>
    public partial class DoExercisePage : Page
    {
        public Exercise Exercise { get; set; }

        //public bool IsPassed { get; set; } = false;

        public DoExercisePage(Exercise exercise)
        {
            InitializeComponent();
            Exercise = exercise;
            DataContext = this;
        }
    }
}
