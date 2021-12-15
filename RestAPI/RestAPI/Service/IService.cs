using System.Collections.Generic;
using RestAPI.Entity;

namespace RestAPI.Service
{
    public interface IService<T> where T : EntityBase
    {
        T GetById(int id);
        List<T> GetAll();
        T Save(T inputData);
        T Update(int id, T updateData);
        void Delete(int id);
    }
}
