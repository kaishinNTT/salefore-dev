public with sharing class BaiTapMotVeMaps {
  public BaiTapMotVeMaps() {
    List<Integer> ListNumberToCount = new List<Integer>{1,2,3,3,5,7,7,6,7,7,5,6,7,7,5,7,5,6,7,8,5,4,3,6,7};
    Map<Integer, Integer> countingMap = new Map<Integer, Integer>();
    for (Integer item : ListNumberToCount) {
        if (countingMap.containsKey(item)) {
            Integer Count = countingMap.get(item);
            countingMap.put(item, Count + 1);
        } else {
            countingMap.put(item, 1);
        }
    }
 System.debug(countingMap);
    Integer GiaTriXHNN = 0 ;
    Integer GiaTriThat = 0;
    for(Integer item : countingMap.keySet()) {
      Integer GiaTri = countingMap.get(item);
      if(GiaTri > GiaTriXHNN) {
        GiaTriXHNN = GiaTri;
        GiaTriThat = item;
      } 
    }
    System.debug('Gia Tri Xuat Hien Nhieu Nhat la '+ GiaTriThat);
  }
}