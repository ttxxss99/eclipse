package com.ehr.service.impl;

import com.ehr.dao.ExpendDao;
import com.ehr.model.Expend;
import com.ehr.service.ExpendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Zy
 * @date 28/06/2019 9:31 AM
 */
@Service
public class ExpendServiceImpl implements ExpendService {
    @Autowired
    ExpendDao expendDao;
    @Override
    public List<String> getDates() {
        List<Expend> list = expendDao.checkReturnDates();
        List<String> list2 = new ArrayList<>();
        list.forEach(e->{
          list2.add( new SimpleDateFormat("yyyy-MM").format(e.getDate()))   ;
        });
        return list2;
    }

    @Override
    public List<String> getCompanyNames() {
        return expendDao.checkReturnNameByCompanyId();
    }

    @Override
    public List<Expend> getRecs(String date, String name) {
        return expendDao.checkByNameAndDate(date,name);
    }


}
