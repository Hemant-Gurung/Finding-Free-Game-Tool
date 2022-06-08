using FreeGames.Model;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace FreeGames.ViewModel
{
    public class GameViewModel:ViewModelBase
    {
        //OVER VIEW PAGE CURRENT
        public Page currentPage = new OverViewPage();

        public string CommandText
        {
            get { return "See Game Details"; }
        }

        //OVER VIEW PAGE
        public OverViewPage MainPage = new OverViewPage();


        // CURRENT PAGE
        public Page CurrentPage
        {
            get { return currentPage; }
            set { currentPage = value; }
        }

        //DETAIL PAGE
        public DetailPage gamepage = new DetailPage();

        //COMMAND TO SWITCH PAGE
        public RelayCommand SwitchPageCommand
        {
            get
            {
                return new RelayCommand(SwitchPage);
            }
        }

        private void SwitchPage()
        {
            if (currentPage is OverViewPage)
            {

                Game game = (MainPage.DataContext as OverViewPageVM).SelectedGame;
                if (game == null) return;

                //set the current pokemon in detail page to new one
                (gamepage.DataContext as DetailPageVM).currentGame = game;
                //(pokepage.DataContext as DetailPageVM).currentPokemon.Name = poke.Name;
                //(pokepage.DataContext as DetailPageVM).currentPokemon.Weight = poke.Weight;
                //(pokepage.DataContext as DetailPageVM).currentPokemon.Height = poke.Height;
                (gamepage.DataContext as DetailPageVM).PropertyChangeNotify();
                CurrentPage = gamepage;
                RaisePropertyChanged("CurrentPage");
            

            }
            else
            {
                currentPage = MainPage;
                RaisePropertyChanged("CurrentPage");
            }
        }
       
    }
}
