# CartInitializationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appOrderId** | **String** | Map the order in Violet to an order record within your system | [optional] 
**baseCurrency** | **String** | Base currency of cart | [optional] 
**customer** | [**OrderCustomer**](OrderCustomer.md) |  | [optional] 
**discounts** | Set<DiscountRequest> | Optional collection of Discounts | [optional] 
**referralId** | **String** | Associate the order with a user or affiliate in your system | [optional] 
**skus** | [OrderSku] | Optional collection of SKUs | [optional] 
**walletBasedCheckout** | **Bool** | Boolean denoting whether or not this order will be placed through a wallet based payment mechanism such as apple pay | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


