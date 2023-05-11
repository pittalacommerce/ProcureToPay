using my.procurement as my from '../db/data-model';

service CatalogService {
    @odata.draft.enabled entity Inventory as projection on my.Inventory;
}