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
    public class DetailPageVM:ViewModelBase
    {
        // struct
        public struct gameSpec
        {
            public string ops;
            public string process;
            public string mems;
            public string graps;
            public string storages;
        }

        GamesApiLongDescription desc = new GamesApiLongDescription();
        public string descriptionGame;
        public Game currentGame { get; set; }
        = new Game()
        {
            Id = 1,
            thumbnail = "https://www.freetogame.com/g/102/thumbnail.jpg",
            developer = "PUBG Coorporation",
            genre = "shooter",
            Platform = "PC",
            release_date = "21-3-20",
            Title = "Fight Till Dawn",
            freetogame_profile_url = "https://www.freetogame.com/g/102/thumbnail.jpg",
            
        };

        public DetailPageVM()
        {
            Description();
            DetailImage();
        }

        public async void Description()
        {
            var a = desc.GetGameInfo(currentGame.Id);
            await Task.WhenAll(a);
           currentGame.description = a.Result.description;
            RaisePropertyChanged("currentGame");
        }

        public async void DetailImage()
        {
            var a = desc.GetGameImage(currentGame.Id);
            await Task.WhenAll(a);
            currentGame.image = a.Result;
            RaisePropertyChanged("currentGame");
        }

        public async void DetailImageAsync()
        {
            var a = desc.GetGameSpec(currentGame.Id);
            await Task.WhenAll(a);
            currentGame.os = a.Result.ops;
            currentGame.processor = a.Result.process;
            currentGame.memory = a.Result.mems;
            currentGame.graphics = a.Result.graps;
            currentGame.storage = a.Result.storages;
            RaisePropertyChanged("currentGame");
        }

        public void PropertyChangeNotify()
        {
            Description();
            DetailImage();
            DetailImageAsync();
            RaisePropertyChanged("currentGame");
        }

     


    }
}
