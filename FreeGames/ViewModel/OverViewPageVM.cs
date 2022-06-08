using FreeGames.Model;
using FreeGames.Repositories;
using GalaSoft.MvvmLight;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FreeGames.ViewModel
{
    public class OverViewPageVM:ViewModelBase
    {
        GameLocalRepository repo = new GameLocalRepository();
        public Task<List<Game>> _gameList;
        
        //GAME GENRES
        public Task<List<string>> _gameGenre;
        public List<string> GameGenres
        {
            get { return _gameGenre.Result; }
            set { 

                //_gameGenreTemp = value;
                _gameGenre = Task.FromResult(value);

            }                                                                     
        }
        // ALL GAME PLATFORMS
        public Task<List<string>> _platforms;
        public List<string> GamePlatForms
        {
            get { return _platforms.Result; }
            set
            {

                //_gameGenreTemp = value;
                _platforms = Task.FromResult(value);

            }
        }

        //STATIC PROPERTY
        public static Game currentGame;
        public Game SelectedGame
        {
            get
            {return currentGame;}
            set
            { currentGame = value; }
        }

        public OverViewPageVM()
        {
            GetGames();
            GameGenres = repo.GetAllGenre().Result;
            GamePlatForms = repo.GetAllPlatforms().Result;
        }

        public List<Game> GetGameList
        {
            get
            {
                if(_gameList.Result != null)
                {
                    return _gameList.Result;
                }
                return null;    
            }
            set { _gameList =Task.FromResult(value); }
           
        }

       
        public async void GetGames()
        {
            
            _gameList =  repo.LoadGames();
            await Task.WhenAll(_gameList);
            
            RaisePropertyChanged("GetGameList");

            //return _gameList;

        }

        public  string selectedGenre
        {
            set
            {

                GetGamesWithGenre(value);
                RaisePropertyChanged("GetGameList");
            }
        }

        private async void GetGamesWithGenre(string genre)
        {
            _gameList = repo.GetGames(genre);
            await Task.WhenAll(_gameList);
           
        }

        public string selectedPlatform
        {
            set
            {
                GetGamesWithPlatform(value);
                RaisePropertyChanged("GetGameList");
            }
        }
        private async void GetGamesWithPlatform(string platform)
        {
            _gameList = repo.GetGameWithPlatform(platform);
            await Task.WhenAll(_gameList);

        }
    }
}
