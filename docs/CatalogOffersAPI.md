# CatalogOffersAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**catalogOffersMerchantsMerchantIdGet**](CatalogOffersAPI.md#catalogoffersmerchantsmerchantidget) | **GET** /catalog/offers/merchants/{merchant_id} | Get Offers by merchant_id
[**catalogOffersOfferIdGet**](CatalogOffersAPI.md#catalogoffersofferidget) | **GET** /catalog/offers/{offer_id} | Get Offer by ID


# **catalogOffersMerchantsMerchantIdGet**
```swift
    open class func catalogOffersMerchantsMerchantIdGet(merchantId: Int64, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: PageOffer?, _ error: Error?) -> Void)
```

Get Offers by merchant_id

Retrieves a page of offers by Merchant ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletProxyClientAPI

let merchantId = 987 // Int64 | 
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)

// Get Offers by merchant_id
CatalogOffersAPI.catalogOffersMerchantsMerchantIdGet(merchantId: merchantId, page: page, size: size) { (response, error) in
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
 **merchantId** | **Int64** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 20]

### Return type

[**PageOffer**](PageOffer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogOffersOfferIdGet**
```swift
    open class func catalogOffersOfferIdGet(offerId: Int64, completion: @escaping (_ data: Offer?, _ error: Error?) -> Void)
```

Get Offer by ID

Retrieves a single offer by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletProxyClientAPI

let offerId = 987 // Int64 | 

// Get Offer by ID
CatalogOffersAPI.catalogOffersOfferIdGet(offerId: offerId) { (response, error) in
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
 **offerId** | **Int64** |  | 

### Return type

[**Offer**](Offer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

