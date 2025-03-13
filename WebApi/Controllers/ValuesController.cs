using Application.IService;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        private readonly IPhoneBookService _personBookService;
        public ValuesController(IPhoneBookService phoneBookService)
        {
            _personBookService = phoneBookService;
        }
        [HttpGet("search")]
        public async Task<IActionResult> Search(string query)
        {
            var results = await _personBookService.SearchAsync(query);
            return Ok(results);
        }

    }
}
