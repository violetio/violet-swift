# CheckoutPaymentAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyPaymentMethod**](CheckoutPaymentAPI.md#applypaymentmethod) | **POST** /checkout/cart/{cart_id}/payment | Apply Payment Method


# **applyPaymentMethod**
```swift
    open class func applyPaymentMethod(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, priceCart: Bool? = nil, body: PaymentMethodRequest? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Apply Payment Method

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let priceCart = true // Bool |  (optional) (default to false)
let body = PaymentMethodRequest(appOrderId: "appOrderId_example", cardCvc: 123, cardExpMonth: 123, cardExpYear: 123, cardNumber: "cardNumber_example", cardPostalCode: "cardPostalCode_example", completeCheckout: false, intentBasedCapture: false, token: "token_example") // PaymentMethodRequest |  (optional)

// Apply Payment Method
CheckoutPaymentAPI.applyPaymentMethod(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, priceCart: priceCart, body: body) { (response, error) in
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
 **body** | [**PaymentMethodRequest**](PaymentMethodRequest.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

