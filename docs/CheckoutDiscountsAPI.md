# CheckoutDiscountsAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDiscountToCart**](CheckoutDiscountsAPI.md#adddiscounttocart) | **POST** /checkout/cart/{cart_id}/discounts | Add Discount to Cart
[**removeDiscountFromCart**](CheckoutDiscountsAPI.md#removediscountfromcart) | **DELETE** /checkout/cart/{cart_id}/discounts/{discount_id} | Remove Discount from Cart


# **addDiscountToCart**
```swift
    open class func addDiscountToCart(cartId: Int64, priceCart: Bool? = nil, body: DiscountRequest? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Add Discount to Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 
let priceCart = true // Bool |  (optional) (default to false)
let body = DiscountRequest(code: "code_example", merchantId: 123) // DiscountRequest |  (optional)

// Add Discount to Cart
CheckoutDiscountsAPI.addDiscountToCart(cartId: cartId, priceCart: priceCart, body: body) { (response, error) in
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
 **body** | [**DiscountRequest**](DiscountRequest.md) |  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDiscountFromCart**
```swift
    open class func removeDiscountFromCart(cartId: Int64, discountId: Int64, priceCart: Bool? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Remove Discount from Cart

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let cartId = 987 // Int64 | 
let discountId = 987 // Int64 | 
let priceCart = true // Bool |  (optional) (default to false)

// Remove Discount from Cart
CheckoutDiscountsAPI.removeDiscountFromCart(cartId: cartId, discountId: discountId, priceCart: priceCart) { (response, error) in
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
 **discountId** | **Int64** |  | 
 
 
 
 **priceCart** | **Bool** |  | [optional] [default to false]

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

