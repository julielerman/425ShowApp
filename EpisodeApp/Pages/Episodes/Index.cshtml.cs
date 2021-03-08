using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using EpisodeApp;

namespace EpisodeApp.Pages.Episodes
{
    public class IndexModel : PageModel
    {
        private readonly EpisodesContext _context;

        public IndexModel(EpisodesContext context)
        {
            _context = context;
        }

        public IList<Episode> Episode { get;set; }

        public async Task OnGetAsync()
        {
            Episode = await _context.Episode.ToListAsync();
        }
    }
}
