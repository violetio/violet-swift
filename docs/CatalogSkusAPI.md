# CatalogSkusAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSkuById**](CatalogSkusAPI.md#getskubyid) | **GET** /catalog/skus/{sku_id} | Get Sku by ID

# **getSkuById**
```swift
    open class func getSkuById(skuId: Int64, baseCurrency: String? = nil, completion: @escaping (_ data: Sku?, _ error: Error?) -> Void)
```

Get Sku by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let skuId = 987 // Int64 | 
let baseCurrency = "baseCurrency_example" // String |  (optional) (default to "USD")

// Get Sku by ID
CatalogSkusAPI.getSkuById(skuId: skuId, baseCurrency: baseCurrency) { (response, error) in
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
 
 **baseCurrency** | **String** |  | [optional] [default to &quot;USD&quot;]

### Return type

[**Sku**](Sku.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

