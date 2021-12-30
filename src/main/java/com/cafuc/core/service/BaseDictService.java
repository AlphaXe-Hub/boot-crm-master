package com.cafuc.core.service;

import com.cafuc.core.entity.BaseDict;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author XCZ
 */
@Service
public interface BaseDictService {
    //根据类别代码查询数据字典

    List<BaseDict> findBaseDictByTypeCode(String typecode);


}
