# Refund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Int** | Amount being refunded | 
**appId** | **Int** | ID of the App that created the Order | 
**bagId** | **Int64** | ID of the Bag being refunded | [optional] 
**dateCreated** | **Date** | Date of creation | [optional] 
**dateLastModified** | **Date** | Date of last update | [optional] 
**developerTransferReversalAmountUsd** | **Int** | Amount being taken back from the associated transfer to the developer | [optional] 
**errors** | Set<RefundErrors> | List of errors associated to this refund during processing. | [optional] 
**externalId** | **String** | ID of the refund on the external commerce platform. | [optional] 
**gatewayTransactionId** | **String** | ID of the Transaction in the Payment Gateway | 
**id** | **Int64** |  | [optional] [readonly] 
**merchantId** | **Int** | ID of the merchant making the refund | 
**merchantTransferReversalAmountUsd** | **Int** | Amount being taken back from the associated transfer to the merchant | [optional] 
**orderId** | **Int64** | ID of the Order being refunded | 
**reason** | **String** | Reason for refund | [optional] 
**refundCurrency** | **String** | Currency set for this refund by the external ecom platform | [optional] 
**skus** | Set<RefundOrderSku> | SKUs the refund applies to | [optional] 
**status** | **String** | Status of the Refund | [optional] 
**transactionId** | **Int64** | ID of the Transaction being refunded | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


