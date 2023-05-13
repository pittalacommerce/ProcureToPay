namespace my.masterdata;

using {
    cuid ,
    managed ,
    temporal
} from '@sap/cds/common';

entity paymentMethod:cuid{
      paymentMethod: String;
}

entity supplier:cuid{
      supplier: String;
}

entity quanityunit:cuid{
      quanityunit: String;
}

entity status:cuid{
      status: String;
}

entity purchaseOrg:cuid{
      purchaseOrg: String;
}

entity Address: cuid{
    title: String;
    name: String;
    streetHouseNumber: String;
    district: String;
    postalCode: String;
    city: String;
    region: String;
    country: String;


}