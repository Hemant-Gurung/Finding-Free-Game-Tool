using FreeGames.Model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using static FreeGames.ViewModel.DetailPageVM;

namespace FreeGames.Repositories
{
    public class GamesApiLongDescription
    {
        

       public  gameSpec gameSpe = new gameSpec();
        public Game game;
        public async Task<Game> GetGameInfo(int id)
        {

            //Get all games from the api
            string endpoint = $"https://www.freetogame.com/api/game?id={id}";

            using (HttpClient client = new HttpClient())
            {

                // get respose 
                var response = await client.GetAsync(endpoint);

                if (!response.IsSuccessStatusCode)
                    throw new HttpRequestException(response.ReasonPhrase);

                //convert to json
                string json = await response.Content.ReadAsStringAsync();

                //convert to jarray
                var correctgame = JsonConvert.DeserializeObject<JObject>(json);

                //var screenshot = correctgame.SelectToken("screenshots");

                //foreach (var item in screenshot)
                //{
                //    var a = item.SelectToken("image").ToString();

                //    break;
                //}

                game = correctgame.ToObject<Game>();

                // game.image = screenshot.SelectToken("image").ToString();
                //add games to list
                return game;
            }
        }


        public async Task<string> GetGameImage(int id)
        {
            string endpoint = $"https://www.freetogame.com/api/game?id={id}";

            using (HttpClient client = new HttpClient())
            {

                // get respose 
                var response = await client.GetAsync(endpoint);

                if (!response.IsSuccessStatusCode)
                    throw new HttpRequestException(response.ReasonPhrase);

                //convert to json
                string json = await response.Content.ReadAsStringAsync();

                //convert to jarray
                var correctgame = JsonConvert.DeserializeObject<JObject>(json);

                var screenshot = correctgame.SelectToken("screenshots");

                foreach (var item in screenshot)
                {
                    var a = item.SelectToken("image").ToString();
                    return a;
                   
                }


                // game.image = screenshot.SelectToken("image").ToString();
                //add games to list
                return null;
            }
            return null;
        }


        public async Task<gameSpec> GetGameSpec(int id)
        {
            string endpoint = $"https://www.freetogame.com/api/game?id={id}";

            using (HttpClient client = new HttpClient())
            {

                // get respose 
                var response = await client.GetAsync(endpoint);

                if (!response.IsSuccessStatusCode)
                    throw new HttpRequestException(response.ReasonPhrase);

                //convert to json
                string json = await response.Content.ReadAsStringAsync();

                //convert to jarray
                var correctgame = JsonConvert.DeserializeObject<JObject>(json);

                var screenshot = correctgame.SelectToken("minimum_system_requirements");

               
                    var oos = screenshot.SelectToken("os").ToString();
                    var proce = screenshot.SelectToken("processor").ToString();
                    var mem = screenshot.SelectToken("memory").ToString();
                    var grap = screenshot.SelectToken("graphics").ToString();
                    var storage = screenshot.SelectToken("storage").ToString();

                    gameSpe.ops = oos;
                    gameSpe.process = proce;
                    gameSpe.mems = mem;
                    gameSpe.graps = grap;
                    gameSpe.storages = storage;

         
               return gameSpe;
            }
        }
         
    }
}
