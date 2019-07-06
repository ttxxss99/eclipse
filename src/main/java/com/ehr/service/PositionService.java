package com.ehr.service;



import com.ehr.model.Position;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author Zy
 * @date 25/06/2019 2:57 PM
 */
public interface PositionService {
    public List<Position> selectAll();
    public void insert(Position company);
    public Position selectByPrimaryKey(Integer id);
    public void updateByPrimaryKey(Position company);
    public void deleteByPrimaryKey(Integer id);
    PageInfo<Position> pageList(Integer pageNum, Integer pageSize);
    PageInfo<Position> likeSearch (String positionName , Integer deptId, Integer pageNum, Integer pageSize);
}
