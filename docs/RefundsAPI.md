# RefundsAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBagRefunds**](RefundsAPI.md#getbagrefunds) | **GET** /orders/{order_id}/bags/{bag_id}/refunds | Get Bag Refunds
[**getOrderRefundById**](RefundsAPI.md#getorderrefundbyid) | **GET** /orders/{order_id}/refunds/{refund_id} | Get Order Refund by ID
[**getOrderRefunds**](RefundsAPI.md#getorderrefunds) | **GET** /orders/{order_id}/refunds | Get Order Refunds


# **getBagRefunds**
```swift
    open class func getBagRefunds(orderId: Int64, bagId: Int64, completion: @escaping (_ data: [Refund]?, _ error: Error?) -> Void)
```

Get Bag Refunds

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let orderId = 987 // Int64 | 
let bagId = 987 // Int64 | 

// Get Bag Refunds
RefundsAPI.getBagRefunds(orderId: orderId, bagId: bagId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **Int64** |  | 
 **bagId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 

### Return type

[**[Refund]**](Refund.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderRefundById**
```swift
    open class func getOrderRefundById(orderId: Int64, refundId: Int64, completion: @escaping (_ data: Refund?, _ error: Error?) -> Void)
```

Get Order Refund by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let orderId = 987 // Int64 | 
let refundId = 987 // Int64 | 

// Get Order Refund by ID
RefundsAPI.getOrderRefundById(orderId: orderId, refundId: refundId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **Int64** |  | 
 **refundId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 

### Return type

[**Refund**](Refund.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderRefunds**
```swift
    open class func getOrderRefunds(orderId: Int64, completion: @escaping (_ data: [Refund]?, _ error: Error?) -> Void)
```

Get Order Refunds

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let orderId = 987 // Int64 | 

// Get Order Refunds
RefundsAPI.getOrderRefunds(orderId: orderId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 

### Return type

[**[Refund]**](Refund.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

