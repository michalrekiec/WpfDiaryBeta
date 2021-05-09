using StudentDiary.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace StudentDiary.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        public MainViewModel()
        {
            RefreshStudentsCommand = new RelayCommand(RefreshStudents, CanRefreshStudent);
        }


        public ICommand RefreshStudentsCommand { get; set; }

        private bool CanRefreshStudent(object obj)
        {
            return true;
        }

        private void RefreshStudents(object obj)
        {
        }
    }
}
