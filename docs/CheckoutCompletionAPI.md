# CheckoutCompletionAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**priceCart**](CheckoutCompletionAPI.md#pricecart) | **GET** /checkout/cart/{cart_id}/price | Price Cart
[**submitCheckout**](CheckoutCompletionAPI.md#submitcheckout) | **POST** /checkout/cart/{cart_id}/submit | Submit Cart


# **priceCart**
```swift
    open class func priceCart(cartId: Int64, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Price Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 




// Price Cart
CheckoutCompletionAPI.priceCart(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
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

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitCheckout**
```swift
    open class func submitCheckout(cartId: Int64, body: CartSubmissionRequest? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Submit Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 



let body = CartSubmissionRequest(appOrderId: "appOrderId_example", appTransactionGateway: "appTransactionGateway_example", appTransactionId: "appTransactionId_example", orderCustomer: OrderCustomer(billingAddress: OrderAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", type: "type_example"), email: "email_example", externalId: "externalId_example", firstName: "firstName_example", lastName: "lastName_example", name: "name_example", sameAddress: false, shippingAddress: nil, userId: 123), referralId: "referralId_example") // CartSubmissionRequest |  (optional)

// Submit Cart
CheckoutCompletionAPI.submitCheckout(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, body: body) { (response, error) in
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
 **body** | [**CartSubmissionRequest**](CartSubmissionRequest.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

