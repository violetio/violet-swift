# Sku

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**albums** | Set<Album> | Sku Albums | [optional] 
**asin** | **String** | Amazon Standard Identification Number | [optional] 
**currency** | **String** | The base currency of this SKU | 
**dateCreated** | **Date** | Date of SKU creation | [optional] 
**dateLastModified** | **Date** | Date of last SKU update | [optional] 
**displayOrder** | **Int** | Order to display SKU | [optional] 
**ean** | **String** | European Article Number | [optional] 
**externalId** | **String** | ID of the SKU on the External Ecom Platform | [optional] 
**gtin** | **String** | Global Trade Item Number | [optional] 
**id** | **Int64** |  | [optional] [readonly] 
**inStock** | **Bool** | Is the Product in Stock | [optional] 
**inventoryTracked** | **Bool** | Is the SKUs inventory tracked | [optional] 
**isbn** | **String** | International Standard Book Number | [optional] 
**merchantId** | **Int** | ID of the Merchant | 
**name** | **String** | Sku Name | [optional] 
**offerId** | **Int64** | ID of the Offer | 
**presentedCurrency** | **String** | The presented currency of this SKU | [optional] 
**quantityAvailable** | **Int** | Quantity Available | [optional] 
**retailPrice** | **Int** | Retail Price of the SKU | [optional] 
**salePrice** | **Int** | Sale Price of the SKU | 
**skuDimensions** | [**SkuDimensions**](SkuDimensions.md) |  | [optional] 
**status** | **String** | SKU Status | [optional] 
**taxType** | **String** | Type of Tax on this SKU | [optional] 
**taxable** | **Bool** | Is the product taxable | [optional] 
**type** | **String** |  | 
**upc** | **String** | Universal Product Code | [optional] 
**variantValues** | Set<SkuVariantValue> | Variant Values that apply to this SKU | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


