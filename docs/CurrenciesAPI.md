# CurrenciesAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLatestRates1**](CurrenciesAPI.md#getlatestrates1) | **GET** /currencies/latest | Retrieves the latest currency exchange rates that are currently being utilized within Violet when calculating the prices of Offers and Carts with differing currencies.


# **getLatestRates1**
```swift
    open class func getLatestRates1(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, baseCurrency: String? = nil, symbols: String? = nil, completion: @escaping (_ data: Latest?, _ error: Error?) -> Void)
```

Retrieves the latest currency exchange rates that are currently being utilized within Violet when calculating the prices of Offers and Carts with differing currencies.

Retrieved exchange rates may cached. This cache will never exceed 24 hours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let baseCurrency = "baseCurrency_example" // String |  (optional)
let symbols = "symbols_example" // String |  (optional)

// Retrieves the latest currency exchange rates that are currently being utilized within Violet when calculating the prices of Offers and Carts with differing currencies.
CurrenciesAPI.getLatestRates1(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, baseCurrency: baseCurrency, symbols: symbols) { (response, error) in
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
 **baseCurrency** | **String** |  | [optional] 
 **symbols** | **String** |  | [optional] 

### Return type

[**Latest**](Latest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

