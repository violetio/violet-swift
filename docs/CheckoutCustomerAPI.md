# CheckoutCustomerAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyBillingAddress1**](CheckoutCustomerAPI.md#applybillingaddress1) | **POST** /checkout/cart/{cart_id}/billing_address | Set Billing Address
[**applyGuestCustomerToCart1**](CheckoutCustomerAPI.md#applyguestcustomertocart1) | **POST** /checkout/cart/{cart_id}/customer | Apply Guest Customer to Cart
[**applyShippingAddress1**](CheckoutCustomerAPI.md#applyshippingaddress1) | **POST** /checkout/cart/{cart_id}/shipping_address | Set Shipping Address
[**updateBillingAddress1**](CheckoutCustomerAPI.md#updatebillingaddress1) | **PUT** /checkout/cart/{cart_id}/billing_address | Update Billing Address
[**updateShippingAddress1**](CheckoutCustomerAPI.md#updateshippingaddress1) | **PUT** /checkout/cart/{cart_id}/shipping_address | Update Shipping Address


# **applyBillingAddress1**
```swift
    open class func applyBillingAddress1(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, priceCart: Bool? = nil, body: OrderAddress? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Set Billing Address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let priceCart = true // Bool |  (optional) (default to false)
let body = OrderAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", type: "type_example") // OrderAddress |  (optional)

// Set Billing Address
CheckoutCustomerAPI.applyBillingAddress1(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, body: body) { (response, error) in
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
 **body** | [**OrderAddress**](OrderAddress.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applyGuestCustomerToCart1**
```swift
    open class func applyGuestCustomerToCart1(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, async: Bool? = nil, body: OrderCustomer? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Apply Guest Customer to Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let async = true // Bool |  (optional) (default to false)
let body = OrderCustomer(billingAddress: OrderAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", type: "type_example"), email: "email_example", externalId: "externalId_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", sameAddress: false, shippingAddress: nil, userId: 123) // OrderCustomer |  (optional)

// Apply Guest Customer to Cart
CheckoutCustomerAPI.applyGuestCustomerToCart1(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, async: async, body: body) { (response, error) in
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
 **async** | **Bool** |  | [optional] [default to false]
 **body** | [**OrderCustomer**](OrderCustomer.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applyShippingAddress1**
```swift
    open class func applyShippingAddress1(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, priceCart: Bool? = nil, body: OrderAddress? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Set Shipping Address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let priceCart = true // Bool |  (optional) (default to false)
let body = OrderAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", type: "type_example") // OrderAddress |  (optional)

// Set Shipping Address
CheckoutCustomerAPI.applyShippingAddress1(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, body: body) { (response, error) in
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
 **body** | [**OrderAddress**](OrderAddress.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBillingAddress1**
```swift
    open class func updateBillingAddress1(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, priceCart: Bool? = nil, body: OrderAddress? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Update Billing Address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let priceCart = true // Bool |  (optional) (default to false)
let body = OrderAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", type: "type_example") // OrderAddress |  (optional)

// Update Billing Address
CheckoutCustomerAPI.updateBillingAddress1(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, body: body) { (response, error) in
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
 **body** | [**OrderAddress**](OrderAddress.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingAddress1**
```swift
    open class func updateShippingAddress1(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, priceCart: Bool? = nil, body: OrderAddress? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Update Shipping Address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let priceCart = true // Bool |  (optional) (default to false)
let body = OrderAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", type: "type_example") // OrderAddress |  (optional)

// Update Shipping Address
CheckoutCustomerAPI.updateShippingAddress1(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, body: body) { (response, error) in
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
 **body** | [**OrderAddress**](OrderAddress.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

