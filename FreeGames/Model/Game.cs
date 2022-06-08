using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FreeGames.Model
{
    public class Game
    {
        public int Id { get; set; } 
        public string Platform { get; set; }
        public string Publisher { get; set; }
        public string release_date { get; set; }
        public string short_description { get; set; }
        public string description { get; set; }
        public string thumbnail { get; set; }
        public string Title { get; set; }
        public string developer { get; set; }
        public string genre { get; set; }    
        public string freetogame_profile_url { get; set; }
        public string image { get; set; }   
        // PROCESSOR
        public string os { get; set; }
        public string processor { get; set; }
        public string memory { get; set; }
        public string graphics { get; set; }
        public string storage { get; set; }
       

        public void SetImage(string mage)
        {
            image = mage;
        }
    }
}
