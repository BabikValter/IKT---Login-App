using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RestAPI.Entity;

namespace RestAPI.Controller
{
    public abstract class AbstractControllerBase<ENTITY> : ControllerBase where ENTITY : EntityBase
    {
        [HttpGet]
        public abstract List<ENTITY> GetAll();
        [HttpGet("{id}")]
        public abstract ENTITY GetById(int id);
        [HttpPost]
        public abstract ENTITY Save([FromBody] ENTITY inputData);
        [HttpPut("{id}")]
        public abstract ENTITY Update(int id, [FromBody] ENTITY updateData);
        [HttpDelete("{id}")]
        public abstract void Delete(int id);
    }
}
