# Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Int** | Total amount being transacted | [optional] 
**appId** | **Int** | ID of the App that created the Order | 
**bagId** | **Int64** | ID of the Bag the Transaction applies to | 
**currency** | **String** | Currency the Transaction takes place in | [optional] 
**dateCreated** | **Date** | Date of transaction creation | [optional] 
**dateLastModified** | **Date** | Date of last transaction update | [optional] 
**errorCode** | **String** | Error Code from gateway if error occurred | [optional] 
**gateway** | **String** | Gateway processing the Transaction | [optional] 
**gatewayTransactionId** | **String** | ID of the Transaction in the Payment Gateway | [optional] 
**id** | **Int64** |  | [optional] [readonly] 
**merchantId** | **Int** | ID of the Merchant receiving the transaction | 
**orderId** | **Int64** | ID of the Order the Transaction applies to | [optional] 
**orderPaymentMethod** | [**OrderPaymentMethod**](OrderPaymentMethod.md) |  | [optional] 
**paymentMethodId** | **Int64** | ID of the referenced Payment Method | 
**status** | **String** | Transaction Status | [optional] 
**test** | **Bool** | Is this a test Transaction | [optional] 
**type** | **String** | Transaction Type | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


