# CheckoutShippingAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyShippingMethods**](CheckoutShippingAPI.md#applyshippingmethods) | **POST** /checkout/cart/{cart_id}/shipping | Set Shipping Methods
[**getAvailableShippingMethods**](CheckoutShippingAPI.md#getavailableshippingmethods) | **GET** /checkout/cart/{cart_id}/shipping/available | Get Available Shipping Methods
[**removeShippingMethod**](CheckoutShippingAPI.md#removeshippingmethod) | **DELETE** /checkout/cart/{cart_id}/shipping/{shipping_method_id} | Remove Shipping Method


# **applyShippingMethods**
```swift
    open class func applyShippingMethods(cartId: Int64, priceCart: Bool? = nil, body: [BagShippingMethod]? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Set Shipping Methods

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 
let priceCart = true // Bool |  (optional) (default to false)
let body = [BagShippingMethod(bagId: 123, shippingMethodId: 123, shippingMethodLabel: "shippingMethodLabel_example")] // [BagShippingMethod] |  (optional)

// Set Shipping Methods
CheckoutShippingAPI.applyShippingMethods(cartId: cartId, priceCart: priceCart, body: body) { (response, error) in
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

# **getAvailableShippingMethods**
```swift
    open class func getAvailableShippingMethods(cartId: Int64, completion: @escaping (_ data: [OrderShippingMethodWrapper]?, _ error: Error?) -> Void)
```

Get Available Shipping Methods

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 

// Get Available Shipping Methods
CheckoutShippingAPI.getAvailableShippingMethods(cartId: cartId) { (response, error) in
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
 
### Return type

[**[OrderShippingMethodWrapper]**](OrderShippingMethodWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeShippingMethod**
```swift
    open class func removeShippingMethod(cartId: Int64, shippingMethodId: Int64, priceCart: Bool? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Remove Shipping Method

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 
let shippingMethodId = 987 // Int64 | 
let priceCart = true // Bool |  (optional) (default to false)

// Remove Shipping Method
CheckoutShippingAPI.removeShippingMethod(cartId: cartId, shippingMethodId: shippingMethodId, priceCart: priceCart) { (response, error) in
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
 **priceCart** | **Bool** |  | [optional] [default to false]

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

