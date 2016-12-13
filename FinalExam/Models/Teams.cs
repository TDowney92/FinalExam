using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace FinalExam.Models
{
    [Table("Teams")]
    public partial class Teams 
    {
        // GET api/<controller>
        public Teams()
        {
            Teams = new HashSet<Team>();
        }
        
        public int TeamId { get; set; }

        [StringLength(120)]
        [Display(Name = "Team")]

        public string Team { get; set; }

        public virtual ICollection<Team> Teams { get; set; }


        public GamesPLayed()
        {
            GamesPLayed = new HashSet<GamesPlayed>();
        }

        public int GamesId { get; set; }

        [StringLength(120)]
        [Display(GamesPLayed = "GP")]

        public string GamesPLayed { get; set; }

        public virtual ICollection<GamesPlayed> Teams { get; set; }
    }
}