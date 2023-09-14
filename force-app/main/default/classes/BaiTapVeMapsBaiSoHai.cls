public with sharing class BaiTapVeMapsBaiSoHai {
    public BaiTapVeMapsBaiSoHai() {
        List<String> MangChuCaiAphabet = new List<String> {'A','B','C','D'};
        List<String> MangChuCaiMoi = new List<String>();
        
        for (String NapMangChuCaiMoi : MangChuCaiAphabet) {
            MangChuCaiMoi.add(NapMangChuCaiMoi);
        }
        for (Integer i = 0; i < MangChuCaiAphabet.size(); i++) {
            for (Integer j = 0; j < MangChuCaiAphabet.size(); j++) {
                String MangMoiTongHop = MangChuCaiAphabet[i] + MangChuCaiAphabet[j];
                if (MangChuCaiMoi.contains(MangMoiTongHop) == false && i != j) {
                    MangChuCaiMoi.add(MangMoiTongHop);
                }
            }
        }
        
        System.debug(MangChuCaiMoi);
    }
}