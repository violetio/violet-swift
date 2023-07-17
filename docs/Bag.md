# Bag

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appId** | **Int** | ID of the App creating this Bag | 
**appName** | **String** | Name of app that originated the order. | [optional] 
**appOrderId** | **String** | App Order ID | [optional] 
**bagId** | **Int64** |  | [optional] 
**bagStatus** | **String** |  | [optional] 
**channel** | **String** | The channel that originated this order. | [optional] 
**commissionRate** | **Double** | The developer commission rate | [optional] 
**currency** | **String** | Base currency of cart | [optional] 
**currencyExchangeRate** | **Double** | Exchange rate of currency and external currency, if different, at the time the bag was last priced. | [optional] 
**dateCreated** | **Date** | Date of creation | [optional] 
**discountTotal** | **Int** | Discount Total of the bag | [optional] 
**discounts** | Set<BagDiscount> |  | [optional] 
**externalCheckout** | **Bool** | If bag is tracked externally | [optional] 
**externalCurrency** | **String** | Currency of cart on external ecommerce platform | [optional] 
**externalId** | **String** | ID of the Order on the External Ecommerce Platform | [optional] 
**financialStatus** | **String** | Financial Status | [optional] 
**fulfillmentStatus** | **String** | Fulfillment Status | [optional] 
**fulfillments** | Set<BagFulfillment> |  | [optional] 
**id** | **Int64** |  | [optional] [readonly] 
**merchantId** | **Int** | ID of the Merchant the Bag references | 
**merchantName** | **String** | Name of Merchant | [optional] 
**orderId** | **Int64** | ID of the Order the Bag belongs to | 
**platform** | **String** | The commerce platform used by this merchant. | [optional] 
**remorsePeriodEnds** | **Date** | Date when the bag can no longer be refunded | [optional] 
**shippingMethod** | [**OrderShippingMethod**](OrderShippingMethod.md) |  | 
**shippingTotal** | **Int** | Shipping Total of the bag | [optional] 
**skus** | [OrderSku] | SKUs added to the bag | [optional] 
**status** | **String** | Status | [optional] 
**subTotal** | **Int** | Subtotal of the bag | [optional] 
**taxTotal** | **Int** | Tax Total of the bag | [optional] 
**taxes** | [OrderTax] | Taxes applied to the bag | 
**taxesIncluded** | **Bool** | Are taxes included in the cart total. | [optional] 
**total** | **Int** | Total price of the bag | [optional] 
**transactions** | [Transaction] | Transactions of the bag | [optional] 
**walletBasedCheckout** | **Bool** | Is this bag going to be placed through wallet-based checkout | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


