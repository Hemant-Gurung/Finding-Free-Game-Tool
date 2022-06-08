using FreeGames.Interface;
using FreeGames.Model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace FreeGames.Repositories
{
    public class GameApiRepository : IFreeGames
    {
        public List<Game> _games;
        public List<Game> _genres;

        public async Task<List<Game>> LoadGames()
        {
            try
            {
                //Get all games from the api
                string endpoint = $"https://www.freetogame.com/api/games";

                //var assembly = System.Reflection.Assembly.GetExecutingAssembly();
                //var resourceName = JsonConvert.SerializeObject("FreeGames.Resources.data.games.json");
                //string[] names = this.GetType().Assembly.GetManifestResourceNames();

                //using (Stream stream = assembly.GetManifestResourceStream(names[2]))
                //{

                //    using (var reader = new StreamReader(stream))
                //    {
                //        //read using reader
                //        string json = reader.ReadToEnd();

                //        //deserialize the json 
                //        JArray gamesList = JsonConvert.DeserializeObject<JArray>(json);

                //        //convert  pokemopnarray read from jarray to pokemon type
                //        _games = gamesList.ToObject<List<Game>>();
                //        return _games;
                //    }
                //}

                //create http client
                using (HttpClient client = new HttpClient())
                {

                    // get respose 
                    var response = await client.GetAsync(endpoint);

                    if (!response.IsSuccessStatusCode)
                        throw new HttpRequestException(response.ReasonPhrase);

                    //convert to json
                    string json = await response.Content.ReadAsStringAsync();

                    //convert to jarray
                    var gamesList = JsonConvert.DeserializeObject<JArray>(json);

                    //add games to list
                    _games = gamesList.ToObject<List<Game>>();

                    return _games;
                }
            }
            catch (Exception ex)
            {

            }

            return null;
        }

        public async Task<List<string>> GetAllGenre()
        {
            if (_games == null)
            {
                _games = await LoadGames();
            }
            //doesnot add if same type is in the set
            HashSet<string> types = new HashSet<string>();

            //go over all the list of the pokemons
            foreach (var g in _games)
            {
                //get the property type and convert it to string
                var type = g.GetType().GetProperty("genre").GetValue(g).ToString();

                //add the type to list
                //it avoids duplicates
                types.Add(type);
            }

            //return the list 
            return types.ToList<string>();
        }

        public async Task<List<Game>> GetGames(string genre)
        {
            string endpoint = $"https://www.freetogame.com/api/games?category={genre}";


            //create http client
            using (HttpClient client = new HttpClient())
            {

                // get respose 
                var response = await client.GetAsync(endpoint);

                if (!response.IsSuccessStatusCode)
                    throw new HttpRequestException(response.ReasonPhrase);

                //convert to json
                string json = await response.Content.ReadAsStringAsync();

                //convert to jarray
                var gamesList = JsonConvert.DeserializeObject<JArray>(json);

                //add games to list
                _games = gamesList.ToObject<List<Game>>();

                return _games;
            }
        }

        public async Task<List<string>> GetAllPlatforms()
        {
            if (_games == null)
            {
                _games = await LoadGames();
            }
            //doesnot add if same type is in the set
            HashSet<string> types = new HashSet<string>();

            //go over all the list of the pokemons
            foreach (var g in _games)
            {
                //get the property type and convert it to string
                var type = g.GetType().GetProperty("Platform").GetValue(g).ToString();

                //add the type to list
                //it avoids duplicates
                types.Add(type);
            }

            //return the list 
            return types.ToList<string>();
        }

        public async Task<List<Game>> GetGameWithPlatform(string platform)
        {
            //declare the list for adding the correct pokemons
            List<Game> correctGames = new List<Game>();


            if (_games == null)
            {
                _games = await LoadGames();
            }

            //loop through the list of pokemons
            foreach (var g in _games)
            {
                //compare the types
                if (g.Platform.Equals(platform))
                {

                    //add the correct pokemon to the list
                    correctGames.Add(g);
                }
            }

            //return the list
            return correctGames;
        }

    }

}




