package dao;

import model.Type;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DBUtil;

import java.sql.SQLException;
import java.util.List;

public class TypeDao
{
    public List<Type> GetAllType() throws SQLException {
        QueryRunner r=new QueryRunner(DBUtil.getDataSource());
        String sql="select * from type";
        return r.query(sql,new BeanListHandler<Type>(Type.class));
    }
    public Type selectTypeNameByID(int typeid) throws SQLException {
        QueryRunner r=new QueryRunner(DBUtil.getDataSource());
        String sql="select * from type where id=?";
        return r.query(sql,new BeanHandler<Type>(Type.class),typeid);
    }
}
