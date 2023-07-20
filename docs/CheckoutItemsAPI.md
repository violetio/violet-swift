# CheckoutItemsAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSkuToCart**](CheckoutItemsAPI.md#addskutocart) | **POST** /checkout/cart/{cart_id}/skus | Add SKU to Cart
[**removeSkuFromCart**](CheckoutItemsAPI.md#removeskufromcart) | **DELETE** /checkout/cart/{cart_id}/skus/{order_sku_id} | Remove SKU from Cart
[**updateSkuInCart**](CheckoutItemsAPI.md#updateskuincart) | **PUT** /checkout/cart/{cart_id}/skus/{order_sku_id} | Update SKU in Cart


# **addSkuToCart**
```swift
    open class func addSkuToCart(cartId: Int64, priceCart: Bool? = nil, async: Bool? = nil, body: OrderSku? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Add SKU to Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 



let priceCart = true // Bool |  (optional) (default to false)
let async = true // Bool |  (optional) (default to true)
let body = OrderSku(appId: 123, available: false, brand: "brand_example", externalId: "externalId_example", height: 123, id: 123, length: 123, linePrice: 123, merchantId: 123, name: "name_example", orderSkuRates: [OrderSkuRate(amount: 123, decimalRate: 123, dollarAmount: 123, name: "name_example", orderSkuId: 123, rate: 123, type: "type_example")], price: 123, productId: "productId_example", productType: "productType_example", quantity: 123, quantityFulfilled: 123, skuId: 123, status: "status_example", thumbnail: "thumbnail_example", transientExternalProductId: "transientExternalProductId_example", weight: 123, width: 123) // OrderSku |  (optional)

// Add SKU to Cart
CheckoutItemsAPI.addSkuToCart(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, async: async, body: body) { (response, error) in
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
 **async** | **Bool** |  | [optional] [default to true]
 **body** | [**OrderSku**](OrderSku.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSkuFromCart**
```swift
    open class func removeSkuFromCart(cartId: Int64, orderSkuId: Int64, priceCart: Bool? = nil, async: Bool? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Remove SKU from Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 
let orderSkuId = 987 // Int64 | 



let priceCart = true // Bool |  (optional) (default to false)
let async = true // Bool |  (optional) (default to false)

// Remove SKU from Cart
CheckoutItemsAPI.removeSkuFromCart(cartId: cartId, orderSkuId: orderSkuId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, async: async) { (response, error) in
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
 **orderSkuId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **priceCart** | **Bool** |  | [optional] [default to false]
 **async** | **Bool** |  | [optional] [default to false]

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSkuInCart**
```swift
    open class func updateSkuInCart(cartId: Int64, orderSkuId: Int64, priceCart: Bool? = nil, async: Bool? = nil, body: OrderSku? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Update SKU in Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 
let orderSkuId = 987 // Int64 | 



let priceCart = true // Bool |  (optional) (default to false)
let async = true // Bool |  (optional) (default to true)
let body = OrderSku(appId: 123, available: false, brand: "brand_example", externalId: "externalId_example", height: 123, id: 123, length: 123, linePrice: 123, merchantId: 123, name: "name_example", orderSkuRates: [OrderSkuRate(amount: 123, decimalRate: 123, dollarAmount: 123, name: "name_example", orderSkuId: 123, rate: 123, type: "type_example")], price: 123, productId: "productId_example", productType: "productType_example", quantity: 123, quantityFulfilled: 123, skuId: 123, status: "status_example", thumbnail: "thumbnail_example", transientExternalProductId: "transientExternalProductId_example", weight: 123, width: 123) // OrderSku |  (optional)

// Update SKU in Cart
CheckoutItemsAPI.updateSkuInCart(cartId: cartId, orderSkuId: orderSkuId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, async: async, body: body) { (response, error) in
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
 **orderSkuId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **priceCart** | **Bool** |  | [optional] [default to false]
 **async** | **Bool** |  | [optional] [default to true]
 **body** | [**OrderSku**](OrderSku.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

