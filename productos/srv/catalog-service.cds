using com.acd as acd from '../db/schema';

service CatalogService {
    entity Products as projection on acd.Products;
}