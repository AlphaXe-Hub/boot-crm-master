package com.wangze.core.dao;

import com.wangze.core.entity.BaseDict;

import java.util.List;

/**
 * @author: xcz
 */

public interface BaseDictDao {
    List<BaseDict> selectBaseDictByTypeCode(String typecode);


}
