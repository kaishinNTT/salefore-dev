public with sharing class ThuatToanSapXep {
    public ThuatToanSapXep() {
        Integer [] TimSo = new List<Integer>();

        TimSo.add(-7);
        TimSo.add(9);
        TimSo.add(29);
        TimSo.add(134);
        TimSo.add(109);
        TimSo.add(6);
        Integer Box;
        for(Integer i = 0;i<TimSo.size()-1;i++){
            for(Integer j=i+1;j<TimSo.size();j++){
                if(TimSo[i]>=TimSo[j]){
                    Box = TimSo[j];
                    TimSo[j]=TimSo[i];
                    TimSo[i]= Box;
                }
            }
        }
        System.debug(TimSo);
    }
}