class Lot{
  final String lotId;
  final String lotProId;
  final String lotProCode;
  final String lotProBarcode;
  final String lotProName;
  final String lotProLot;
  final String lotProDate;
  final String lotProPic;

  Lot({
    this.lotId,
    this.lotProId,
    this.lotProCode,
    this.lotProBarcode,
    this.lotProName,
    this.lotProLot,
    this.lotProDate,
    this.lotProPic
  });

  factory Lot.fromJson(Map<String, dynamic> json){
    return new Lot(
      lotId: json['WH_receiveBox_TC_id'],
      lotProId: json['WH_receiveBox_TC_idPro'],
      lotProCode: json['pcode'],
      lotProBarcode: json['WH_receiveBox_TC_barcode'],
      lotProName: json['nproductMain'],
      lotProLot: json['transection_lot'],
      lotProDate: json['WH_receiveBox_TC_dateAdd'],
      lotProPic: json['pic'],
    );
  }

}