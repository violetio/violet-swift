# CatalogSkusAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSkuById1**](CatalogSkusAPI.md#getskubyid1) | **GET** /catalog/skus/{sku_id} | Get Sku by ID


# **getSkuById1**
```swift
    open class func getSkuById1(skuId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, baseCurrency: String? = nil, completion: @escaping (_ data: Sku?, _ error: Error?) -> Void)
```

Get Sku by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let skuId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let baseCurrency = "baseCurrency_example" // String |  (optional) (default to "USD")

// Get Sku by ID
CatalogSkusAPI.getSkuById1(skuId: skuId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, baseCurrency: baseCurrency) { (response, error) in
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
 **skuId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **baseCurrency** | **String** |  | [optional] [default to &quot;USD&quot;]

### Return type

[**Sku**](Sku.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

