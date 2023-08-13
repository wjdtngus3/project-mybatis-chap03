package com.ohgiraffers.section03.remix;

import java.util.List;

public class PrintResult {
    public void printItemList(List<ItemDTO> itemList) {
        itemList.forEach(System.out::println);
    }

    public void printMenu(ItemDTO item) {
        System.out.println(item);
    }

    public void printErrorMessage(String errorCode) {
        String errorMessage = "";
        switch(errorCode) {
            case "selectList" : errorMessage = "물품 목록 조회에 실패하였습니다."; break;
            case "selectOne" : errorMessage = "물품 조회에 실패하였습니다."; break;
            case "insert" : errorMessage = "물품 등록에 실패하였습니다."; break;
            case "update" : errorMessage = "물품 수정에 실패하였습니다."; break;
            case "delete" : errorMessage = "물품 삭제에 실패하였습니다."; break;
        }
        System.out.println(errorMessage);
    }

    public void printSuccessMessage(String successCode) {
        String successMessage = "";
        switch(successCode) {
            case "insert" : successMessage = "신규 물품 등록이 완료 되었습니다."; break;
            case "update" : successMessage = "물품 수정이 완료 되었습니다."; break;
            case "delete" : successMessage = "물품 삭제가 완료 되었습니다."; break;
        }
        System.out.println(successMessage);
    }
}
