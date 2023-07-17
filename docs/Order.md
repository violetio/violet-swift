# Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appCustomerId** | **String** | App Customer ID | [optional] 
**appId** | **Int** | ID of the App creating the order | [optional] 
**appName** | **String** | Name of app that originated the order. | [optional] 
**appOrderId** | **String** | App Order ID | [optional] 
**bags** | [Bag] | Bags in the Order | [optional] 
**billingAddress** | [**OrderAddress**](OrderAddress.md) |  | [optional] 
**currency** | **String** | Base currency of cart | [optional] 
**currencySymbol** | **String** | Symbol representing the desired currency | [optional] 
**customer** | [**OrderCustomer**](OrderCustomer.md) |  | [optional] 
**dateCreated** | **Date** | Date of order creation | [optional] 
**dateLastModified** | **Date** | Date of last order update | [optional] 
**developerId** | **Int** | ID of the Developer who placed | [optional] 
**discountTotal** | **Int** | Discount Total of the Order | [optional] 
**errors** | [OrderError] | Errors on the Order | [optional] 
**guest** | **Bool** |  | [optional] 
**id** | **Int64** |  | [optional] [readonly] 
**intentBasedCheckout** | **Bool** |  | [optional] 
**isGuest** | **Bool** | Order is Guest | [optional] 
**orderId** | **Int64** |  | [optional] 
**orderStatus** | **String** |  | [optional] 
**paymentIntentClientSecret** | **String** | Payment intent client secret | [optional] 
**paymentMethod** | [**OrderPaymentMethod**](OrderPaymentMethod.md) |  | [optional] 
**priced** | **Bool** | Is the cart priced | [optional] 
**referralId** | **String** | Optional value used to represent an identifier in your system. | [optional] 
**shippingAddress** | [**OrderAddress**](OrderAddress.md) |  | [optional] 
**shippingTotal** | **Int** | Shipping Total of the Order | [optional] 
**status** | **String** | Status of the Order | 
**stripeKey** | **String** | Stripe publishable key. Use for tokenizing payment methods. | [optional] 
**subTotal** | **Int** | Subtotal of the Order | [optional] 
**taxTotal** | **Int** | Tax Total of the Order | [optional] 
**token** | **String** |  | [optional] [readonly] 
**total** | **Int** | Total of the Order | [optional] 
**userId** | **Int64** | ID of the User placing the order | [optional] 
**walletBasedCheckout** | **Bool** | Is this cart going to be placed through wallet-based checkout | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


