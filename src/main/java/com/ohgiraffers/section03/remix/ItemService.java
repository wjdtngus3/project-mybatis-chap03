package com.ohgiraffers.section03.remix;

import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.ohgiraffers.section03.remix.Template.getSqlSession;

public class ItemService {

    private ItemMapper itemMapper;

    public List<ItemDTO> selectAllItem() {

        SqlSession sqlSession = getSqlSession();

        itemMapper = sqlSession.getMapper(ItemMapper.class);
        List<ItemDTO> itemList = itemMapper.selectAllItem();

        sqlSession.close();

        return itemList;
    }

    public ItemDTO selectItemByCode(int code) {

        SqlSession sqlSession = getSqlSession();
        itemMapper = sqlSession.getMapper(ItemMapper.class);

        ItemDTO item = itemMapper.selectItemByCode(code);

        sqlSession.close();

        return item;
    }

    public boolean registItem(ItemDTO item) {

        SqlSession sqlSession = getSqlSession();
        itemMapper = sqlSession.getMapper(ItemMapper.class);

        int result = itemMapper.insertItem(item);

        if(result > 0) {
            sqlSession.commit();
        } else {
            sqlSession.rollback();
        }

        sqlSession.close();

        return result > 0;
    }

    public boolean modifyItem(ItemDTO item) {

        SqlSession sqlSession = getSqlSession();
        itemMapper = sqlSession.getMapper(ItemMapper.class);

        int result = itemMapper.updateItem(item);

        if(result > 0) {
            sqlSession.commit();
        } else {
            sqlSession.rollback();
        }

        sqlSession.close();

        return result > 0;
    }

    public boolean deleteItem(int code) {

        SqlSession sqlSession = getSqlSession();
        itemMapper = sqlSession.getMapper(ItemMapper.class);

        int result = itemMapper.deleteItem(code);

        if(result > 0) {
            sqlSession.commit();
        } else {
            sqlSession.rollback();
        }

        sqlSession.close();

        return result > 0;
    }

    public void searchItem(SearchCriteria searchCriteria) {
        SqlSession sqlSession = getSqlSession();
        itemMapper = sqlSession.getMapper(ItemMapper.class);

        List<ItemDTO> itemList = itemMapper.searchItem(searchCriteria);

        if(itemList != null && itemList.size() > 0) {
            itemList.forEach(System.out::println);
        } else {
            System.out.println("검색 결과가 존재하지 않습니다.");
        }

        sqlSession.close();
    }

}
