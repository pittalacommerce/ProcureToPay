using my.procurement as my from '../db/data-model';

service CatalogService {
    @odata.draft.enabled entity Inventory as projection on my.Inventory;
    @odata.draft.enabled entity Inquiry as projection on my.Inquiry;
    @odata.draft.enabled entity InquiryItem as projection on my.InquiryItem;
    @odata.draft.enabled entity PurchaseOrder as projection on my.PurchaseOrder;
    @odata.draft.enabled entity PurchaseOrderItem as projection on my.PurchaseOrderItem;

}