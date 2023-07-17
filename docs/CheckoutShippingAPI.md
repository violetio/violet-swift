# CheckoutShippingAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyShippingMethods1**](CheckoutShippingAPI.md#applyshippingmethods1) | **POST** /checkout/cart/{cart_id}/shipping | Set Shipping Methods
[**getAvailableShippingMethods1**](CheckoutShippingAPI.md#getavailableshippingmethods1) | **GET** /checkout/cart/{cart_id}/shipping/available | Get Available Shipping Methods
[**removeShippingMethod1**](CheckoutShippingAPI.md#removeshippingmethod1) | **DELETE** /checkout/cart/{cart_id}/shipping/{shipping_method_id} | Remove Shipping Method


# **applyShippingMethods1**
```swift
    open class func applyShippingMethods1(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, priceCart: Bool? = nil, body: [BagShippingMethod]? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Set Shipping Methods

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let priceCart = true // Bool |  (optional) (default to false)
let body = [BagShippingMethod(bagId: 123, shippingMethodId: 123, shippingMethodLabel: "shippingMethodLabel_example")] // [BagShippingMethod] |  (optional)

// Set Shipping Methods
CheckoutShippingAPI.applyShippingMethods1(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, body: body) { (response, error) in
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
 **cartId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **priceCart** | **Bool** |  | [optional] [default to false]
 **body** | [**[BagShippingMethod]**](BagShippingMethod.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableShippingMethods1**
```swift
    open class func getAvailableShippingMethods1(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, completion: @escaping (_ data: [OrderShippingMethodWrapper]?, _ error: Error?) -> Void)
```

Get Available Shipping Methods

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)

// Get Available Shipping Methods
CheckoutShippingAPI.getAvailableShippingMethods1(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
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
 **cartId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 

### Return type

[**[OrderShippingMethodWrapper]**](OrderShippingMethodWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeShippingMethod1**
```swift
    open class func removeShippingMethod1(cartId: Int64, shippingMethodId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, priceCart: Bool? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Remove Shipping Method

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let shippingMethodId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let priceCart = true // Bool |  (optional) (default to false)

// Remove Shipping Method
CheckoutShippingAPI.removeShippingMethod1(cartId: cartId, shippingMethodId: shippingMethodId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart) { (response, error) in
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
 **cartId** | **Int64** |  | 
 **shippingMethodId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **priceCart** | **Bool** |  | [optional] [default to false]

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

