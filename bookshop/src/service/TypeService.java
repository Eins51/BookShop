package service;

import dao.TypeDao;
import model.Type;

import java.sql.SQLException;
import java.util.List;

public class TypeService {
    TypeDao tDao=new TypeDao();
    public List<Type> GetAllType()
    {
        List<Type> list=null;
        try {
            list=tDao.GetAllType();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public Type selectTypeNameByID(int typeid)
    {
        Type type=null;
        try {
            type=tDao.selectTypeNameByID(typeid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return type;
    }

}
