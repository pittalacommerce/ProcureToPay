namespace my.procurement;

using {
  cuid,
  managed,
  temporal
} from '@sap/cds/common';

using my.masterdata as masterdata from './master-data';


entity Inventory : cuid {
  drugid             : String;
  drugname           : String;
  scientificname     : String;
  drugcategory       : String;
  storagetemperature : String;
  dangerouslevel     : String;
  noofunitsinpackage : String;
  manufacturer       : String;
  unitprice          : String;
  currency          : String(3);
  storagelocation    : String;
}


entity Inquiry : cuid {
  soldToParty           : String;
  shipToParty           : String;
  validfrom             : Date;
  validTo               : Date;
  requestedDeliveryDate : Date;
  supplier              : Association to masterdata.supplier;
  purchaseOrg           : String;
  paymentPercentage     : String;
  paymentNumberOfDays   : String;
  paymentMethod         : Association to one masterdata.paymentMethod;
  documentCurrency      : String(3);
  status                : String;
  rejectionReason       : String;
}

entity InquiryItem : cuid {
  ItemCode          : Association to Inventory;
  Item              : String;
  orderQuantity     : Double;
  orderQuantityUnit : Association to masterdata.quanityunit;
  AlternateItem     : Association to Inventory
                        on ItemCode.ID = Item;
  price             : Double;
  currency          : String(3);
}

entity PurchaseOrder : cuid {
  orderType             : String;
  supplier              : Association to masterdata.supplier;
  validfrom             : Date;
  validTo               : Date;
  requestedDeliveryDate : Date;
  Inquiry               : Association to Inquiry;
  purchaseOrg           : Association to masterdata.purchaseOrg;
  status                : String;
  paymentPercentage     : String;
  paymentNumberOfDays   : String;
  paymentMethod         : Association to one masterdata.paymentMethod;
  deliveryAddress       : Association to  masterdata.Address;
}

entity PurchaseOrderItem : cuid {
  itemNumber : String;
  ItemCode   : Association to Inventory;
  Item       : String;
  orderQuantity     : Double;
  orderQuantityUnit : Association to masterdata.quanityunit;
  price             : Double;
  currency          : String(3);
  paymentMethod         : Association to one masterdata.paymentMethod;
  deliveryAddress       : Association to  masterdata.Address;
  status                : String;

}
