package dao;

import entity.Introduce;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class IntroduceDao extends HibernateDaoSupport{

    public void save(Introduce introduce) {
        this.getHibernateTemplate().save(introduce);
    }

    public Introduce select(int id) {
        /*String sql ="select * from introduce where id=?";*/
        String hql = "from Introduce where id = ?";
        List<Introduce> list = (List<Introduce>) this.getHibernateTemplate().find(hql,id);
        if(list.size()>0)
            return list.get(0);
        return null;
    }

    public void update(Introduce introduce) {
        this.getHibernateTemplate().update(introduce);
    }
}
