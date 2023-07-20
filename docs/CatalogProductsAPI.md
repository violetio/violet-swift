# CatalogProductsAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProducts**](CatalogProductsAPI.md#getproducts) | **GET** /catalog/products | Get Products


# **getProducts**
```swift
    open class func getProducts(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, page: Int? = nil, size: Int? = nil, excludePublic: Bool? = nil, excludeHidden: Bool? = nil, completion: @escaping (_ data: [Product]?, _ error: Error?) -> Void)
```

Get Products

Products will be wrapped in a Page container.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)
let excludePublic = true // Bool |  (optional) (default to false)
let excludeHidden = true // Bool |  (optional) (default to true)

// Get Products
CatalogProductsAPI.getProducts(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, page: page, size: size, excludePublic: excludePublic, excludeHidden: excludeHidden) { (response, error) in
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
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 20]
 **excludePublic** | **Bool** |  | [optional] [default to false]
 **excludeHidden** | **Bool** |  | [optional] [default to true]

### Return type

[**[Product]**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

