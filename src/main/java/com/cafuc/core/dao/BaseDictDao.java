package com.cafuc.core.dao;

import com.cafuc.core.entity.BaseDict;

import java.util.List;

/**
 * @author: xcz
 */

public interface BaseDictDao {
    List<BaseDict> selectBaseDictByTypeCode(String typecode);


}
