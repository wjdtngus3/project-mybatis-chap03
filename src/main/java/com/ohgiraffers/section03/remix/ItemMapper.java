package com.ohgiraffers.section03.remix;

import java.util.List;

public interface ItemMapper {

    List<ItemDTO> selectAllItem();

    ItemDTO selectItemByCode(int code);

    int insertItem(ItemDTO item);

    int updateItem(ItemDTO item);

    int deleteItem(int code);

    List<ItemDTO> searchItem(SearchCriteria searchCriteria);

}








