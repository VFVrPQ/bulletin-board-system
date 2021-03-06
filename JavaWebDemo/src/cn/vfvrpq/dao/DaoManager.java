package cn.vfvrpq.dao;

import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;


@Repository("DaoManager")
public class DaoManager {
    @Resource(name="jdbcTemplate")
    private JdbcTemplate jdbcTemplate;
    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    @Resource(name="namedParameterJdbcTemplate")
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    public NamedParameterJdbcTemplate getNamedParameterJdbcTemplate() {
        return namedParameterJdbcTemplate;
    }

    public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
    }

    //查询
    public List query(String sql, Class cls){
        return this.jdbcTemplate.query(sql,new BeanPropertyRowMapper(cls));
    }
    public List query(String sql,Object[] params,Class cls){
        return this.jdbcTemplate.query(sql,params,new BeanPropertyRowMapper(cls));
    }

    public List query(String sql){
        return this.jdbcTemplate.queryForList(sql);
    }
    //使用命名sql查询
    public List query(String sql, Map maps,Class clazz){
        List l = this.namedParameterJdbcTemplate.query(sql,maps,new BeanPropertyRowMapper(clazz));
        return l;
    }

    //查询返回值为基础对象类型
    public  Object query(String sql,Object id,Class clazz){
        return this.jdbcTemplate.queryForObject(sql,new Object[]{id},clazz);
    }

    //更新
    public boolean execSql(String sql){
        if(sql==null || sql.equals("")){
            return false;
        }
        jdbcTemplate.execute(sql);
        return true;
    }
    public  boolean update(String sql,Object[] params){
        if(sql==null || sql.equals("")){
            return false;
        }
        jdbcTemplate.update(sql,params);
        return true;
    }
    //插入对象
    public  boolean insertByBean(String sql,Object bean){
        if(sql==null || sql.equals("")){
            return false;
        }
        BeanPropertySqlParameterSource ps = new BeanPropertySqlParameterSource(bean);
        namedParameterJdbcTemplate.update(sql,ps);
        return true;
    }

    public void deleteDatas(String sql,List<String> ids){
        final List<String> dataList = ids;
        this.getJdbcTemplate().batchUpdate(sql, new BatchPreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement preparedStatement, int i) throws SQLException {
                preparedStatement.setString(1,dataList.get(i));
            }

            @Override
            public int getBatchSize() {
                return dataList.size();
            }
        });
    }
    public  static void main(String[] args){

    }

}
