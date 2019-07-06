package com.ehr.service;

import com.ehr.model.Expend;

import java.util.List;

/**
 * @author Zy
 * @date 28/06/2019 9:30 AM
 */
public interface ExpendService {
    List<String> getDates();
    List<String> getCompanyNames();
    List<Expend> getRecs(String date,String name);
}
