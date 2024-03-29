# CheckoutCartAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCart**](CheckoutCartAPI.md#createcart) | **POST** /checkout/cart | Create Cart
[**deleteCart**](CheckoutCartAPI.md#deletecart) | **DELETE** /checkout/cart/{cart_id} | Delete Cart
[**getCart**](CheckoutCartAPI.md#getcart) | **GET** /checkout/cart/{cart_id} | Get Cart by ID
[**getCartByToken**](CheckoutCartAPI.md#getcartbytoken) | **GET** /checkout/cart/byToken/{token} | Get Cart by Token


# **createCart**
```swift
    open class func createCart(applyCurrentUser: Bool? = nil, defaultPayment: Bool? = nil, appOrderId: String? = nil, baseCurrency: String? = nil, referralId: String? = nil, channel: Channel_createCart? = nil, async: Bool? = nil, body: CartInitializationRequest? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Create Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let applyCurrentUser = true // Bool |  (optional) (default to false)
let defaultPayment = true // Bool |  (optional) (default to false)
let appOrderId = "appOrderId_example" // String |  (optional)
let baseCurrency = "baseCurrency_example" // String |  (optional)
let referralId = "referralId_example" // String |  (optional)
let channel = "channel_example" // String |  (optional)
let async = true // Bool |  (optional) (default to true)
let body = CartInitializationRequest(appOrderId: "appOrderId_example", baseCurrency: "baseCurrency_example", customer: OrderCustomer(billingAddress: OrderAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", type: "type_example"), email: "email_example", externalId: "externalId_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", sameAddress: false, shippingAddress: nil, userId: 123), discounts: [DiscountRequest(code: "code_example", merchantId: 123)], referralId: "referralId_example", skus: [OrderSku(appId: 123, available: false, brand: "brand_example", externalId: "externalId_example", height: 123, id: 123, length: 123, linePrice: 123, merchantId: 123, name: "name_example", orderSkuRates: [OrderSkuRate(amount: 123, decimalRate: 123, dollarAmount: 123, name: "name_example", orderSkuId: 123, rate: 123, type: "type_example")], price: 123, productId: "productId_example", productType: "productType_example", quantity: 123, quantityFulfilled: 123, skuId: 123, status: "status_example", thumbnail: "thumbnail_example", transientExternalProductId: "transientExternalProductId_example", weight: 123, width: 123)], walletBasedCheckout: false) // CartInitializationRequest |  (optional)

// Create Cart
CheckoutCartAPI.createCart(applyCurrentUser: applyCurrentUser, defaultPayment: defaultPayment, appOrderId: appOrderId, baseCurrency: baseCurrency, referralId: referralId, channel: channel, async: async, body: body) { (response, error) in
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
 
 
 
 **applyCurrentUser** | **Bool** |  | [optional] [default to false]
 **defaultPayment** | **Bool** |  | [optional] [default to false]
 **appOrderId** | **String** |  | [optional] 
 **baseCurrency** | **String** |  | [optional] 
 **referralId** | **String** |  | [optional] 
 **channel** | **String** |  | [optional] 
 **async** | **Bool** |  | [optional] [default to true]
 **body** | [**CartInitializationRequest**](CartInitializationRequest.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCart**
```swift
    open class func deleteCart(cartId: Int64, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 

// Delete Cart
CheckoutCartAPI.deleteCart(cartId: cartId) { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCart**
```swift
    open class func getCart(cartId: Int64, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Get Cart by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 

// Get Cart by ID
CheckoutCartAPI.getCart(cartId: cartId) { (response, error) in
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

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartByToken**
```swift
    open class func getCartByToken(token: String, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Get Cart by Token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let token = "token_example" // String | 

// Get Cart by Token
CheckoutCartAPI.getCartByToken(token: token) { (response, error) in
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
 **token** | **String** |  | 
 
 
 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

