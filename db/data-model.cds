namespace my.procurement;

entity Inventory {
   @UI.Hidden
  key UUID: String not null;
    @UI.Hidden
  ID : String;
  drugid  : String;
  drugname  : String;
  scientificname  : String;
  drugcategory  : String;
  storagetemperature:String;
  dangerouslevel:String;
  noofunitsinpackage:String;
  manufacturer:String;
  unitprice:String;
  storagelocation:String;
}