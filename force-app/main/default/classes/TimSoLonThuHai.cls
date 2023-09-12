public with sharing class TimSoLonThuHai {
    public TimSoLonThuHai() {
        Integer [] TimSo = new List<Integer>();

TimSo.add(-7);
TimSo.add(9);
TimSo.add(29);
TimSo.add(134);
TimSo.add(1099);
TimSo.add(6);

Integer SoLonNhat = TimSo[0];
Integer SoLonHai = TimSo[0];
Integer Vitri1;
for(Integer i=0; i<TimSo.size();i++){
    if (TimSo[i] > SoLonNhat) {
        SoLonNhat = TimSo[i];
        Vitri1 = i;
    } 
}
for(Integer i=0; i<TimSo.size();i++){
    
    if(TimSo[i] > SoLonHai && TimSo[i]!=SoLonNhat)
        {
            SoLonHai = TimSo[i];
        }
}


System.debug('So thu hai la  :' + SoLonHai + 'Vi tri  moi la :' + Vitri1);

    }
