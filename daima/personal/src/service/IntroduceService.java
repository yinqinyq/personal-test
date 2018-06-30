package service;

import dao.IntroduceDao;
import entity.Introduce;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class IntroduceService {

    private IntroduceDao introduceDao;
    public void setIntroduceDao(IntroduceDao introduceDao) {
        this.introduceDao = introduceDao;
    }

    public void saveOne(Introduce introduce) {
        introduceDao.save(introduce);
    }

    public Introduce selectOne(int id) {
        return introduceDao.select(id);
    }

    public void updateOne(Introduce introduce) {
        introduceDao.update(introduce);
    }
}
