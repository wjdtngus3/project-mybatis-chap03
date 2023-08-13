package com.ohgiraffers.section03.remix;

import java.util.List;
import java.util.Map;

public class ItemController {

    private final ItemService itemService;
    private final PrintResult printResult;

    public ItemController() {
        itemService = new ItemService();
        printResult = new PrintResult();
    }

    public void selectAllItem() {

        List<ItemDTO> itemList = itemService.selectAllItem();

        if(itemList != null) {
            printResult.printItemList(itemList);
        } else {
            printResult.printErrorMessage("selectList");
        }

    }

    public void selectItemByCode(Map<String, String> parameter) {

        int code = Integer.parseInt(parameter.get("code"));

        ItemDTO item = itemService.selectItemByCode(code);

        if(item != null) {
            printResult.printMenu(item);
        } else {
            printResult.printErrorMessage("selectOne");
        }
    }

    public void registItem(Map<String, String> parameter) {

        String name = parameter.get("name");
        int price = Integer.parseInt(parameter.get("price"));
        int categoryCode = Integer.parseInt(parameter.get("categoryCode"));

        ItemDTO item = new ItemDTO();
        item.setName(name);
        item.setPrice(price);
        item.setCategoryCode(categoryCode);

        if(itemService.registItem(item)) {
            printResult.printSuccessMessage("insert");
        } else {
            printResult.printErrorMessage("insert");
        }
    }

    public void modifyItem(Map<String, String> parameter) {

        int code = Integer.parseInt(parameter.get("code"));
        String name = parameter.get("name");
        int price = Integer.parseInt(parameter.get("price"));
        int categoryCode = Integer.parseInt(parameter.get("categoryCode"));

        ItemDTO item = new ItemDTO();
        item.setCode(code);
        item.setName(name);
        item.setPrice(price);
        item.setCategoryCode(categoryCode);

        if(itemService.modifyItem(item)) {
            printResult.printSuccessMessage("update");
        } else {
            printResult.printErrorMessage("update");
        }
    }

    public void deleteItem(Map<String, String> parameter) {

        int code = Integer.parseInt(parameter.get("code"));

        if(itemService.deleteItem(code)) {
            printResult.printSuccessMessage("delete");
        } else {
            printResult.printErrorMessage("delete");
        }

    }
}














