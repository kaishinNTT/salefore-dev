public with sharing class BaiTapSoBa {
    public BaiTapSoBa() {
        List<String> MangChuCaiAphabet = new List<String> {'A','B','C'};
        List<String> MangChuCaiMoi = new List<String>();

        for (String chuCaiAphabet : MangChuCaiAphabet) {
            MangChuCaiMoi.add(chuCaiAphabet);
        }

        String MangMoiTongHop;
        for (Integer i = 0; i < MangChuCaiAphabet.size(); i++) {
            for (Integer j = i + 1; j < MangChuCaiAphabet.size(); j++) {
                MangMoiTongHop = MangChuCaiAphabet[i] + MangChuCaiAphabet[j];
                if (i != j) {
                    MangChuCaiMoi.add(MangMoiTongHop);
                }
            }  
        }
            
        }
        for (Integer a = 0; a < MangChuCaiMoi.size(); a++) { 
            System.debug(MangChuCaiMoi[a]);    
        }
    }