package com.ohgiraffers.section03.remix;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Application {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ItemController itemController = new ItemController();

        do {
            System.out.println("========== 메뉴 관리 ==========");
            System.out.println("1. 슈퍼마켓 물품 전체 조회");
            System.out.println("2. 슈퍼마켓 조건별 물품 조회");
            System.out.println("3. 슈퍼마켓 물품 코드로 조회");
            System.out.println("4. 슈퍼마켓 신규 물품 추가.");
            System.out.println("5. 슈퍼마켓 물품 수정");
            System.out.println("6. 슈퍼마켓 물품 삭제");
            System.out.print("슈퍼마켓 관리 번호 입력 : ");
            int no = sc.nextInt();

            switch (no) {
                case 1:
                    itemController.selectAllItem();
                    break;
                case 2:
                    ifSubItem();
                    break;
                case 3:
                    itemController.selectItemByCode(inputItemCode());
                    break;
                case 4:
                    itemController.registItem(inputItem());
                    break;
                case 5:
                    itemController.modifyItem(inputModifyItem());
                    break;
                case 6:
                    itemController.deleteItem(inputItemCode());
                    break;
                default:
                    System.out.println("잘못 된 메뉴를 선택하셨습니다.");
            }
        } while (true);
    }

    private static void ifSubItem() {
        Scanner sc = new Scanner(System.in);
        ItemService itemService = new ItemService();
        do{
            System.out.println("========== 슈퍼마켓 조건 조회 업무 ==========");
            System.out.println("1. 마켓 물품이름 혹은 종류이름으로 검색");
            System.out.println("9. 이전 메뉴로");
            System.out.print("메뉴 번호를 입력하세요 : ");
            int no = sc.nextInt();
            switch (no) {
                case 1 : itemService.searchItem(inputSearchCriteria()); break;
                case 9 : return;
            }
        }while (true);
    }



    private static SearchCriteria inputSearchCriteria() {
        Scanner sc = new Scanner(System.in);
        System.out.print("조회하고 싶은 것이 물품이면 name 종류면 category를 입력하세요  : ");
        String condition = sc.nextLine();
        System.out.print("ex) name 입력시 : 아침햇살, 썬칩 등.. \n   category 입력시 : 음료수류, 과자류 등..      \n 검색어를 입력해주세요 : ");
        String value = sc.nextLine();

        return new SearchCriteria(condition, value);
    }

    private static Map<String, String> inputItemCode() {

        Scanner sc = new Scanner(System.in);
        System.out.print("물품 코드를 입력하세요 : ");
        String code = sc.nextLine();

        Map<String, String> parameter = new HashMap<>();
        parameter.put("code", code);

        return parameter;
    }


    private static Map<String, String> inputItem() {

        Scanner sc = new Scanner(System.in);
        System.out.print("물품 이름을 입력하세요 : ");
        String name = sc.nextLine();
        System.out.print("물품 가격을 입력하세요 : ");
        String price = sc.nextLine();
        System.out.print("카테고리 코드를 입력하세요 : ");
        String categoryCode = sc.nextLine();

        Map<String, String> parameter = new HashMap<>();
        parameter.put("name", name);
        parameter.put("price", price);
        parameter.put("categoryCode", categoryCode);

        return parameter;
    }

    private static Map<String, String> inputModifyItem() {

        Scanner sc = new Scanner(System.in);
        System.out.print("수정할 물품 코드를 입력하세요 : ");
        String code = sc.nextLine();
        System.out.print("수정할 물품 이름을 입력하세요 : ");
        String name = sc.nextLine();
        System.out.print("수정할 물품 가격을 입력하세요 : ");
        String price = sc.nextLine();
        System.out.print("수정할 카테고리 코드를 입력하세요 : ");
        String categoryCode = sc.nextLine();

        Map<String, String> parameter = new HashMap<>();
        parameter.put("code", code);
        parameter.put("name", name);
        parameter.put("price", price);
        parameter.put("categoryCode", categoryCode);

        return parameter;
    }
}
