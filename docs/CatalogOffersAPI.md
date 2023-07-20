# CatalogOffersAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMerchantOffers**](CatalogOffersAPI.md#getmerchantoffers) | **GET** /catalog/offers/merchants/{merchant_id} | Get All Merchant Offers
[**getOfferById**](CatalogOffersAPI.md#getofferbyid) | **GET** /catalog/offers/{offer_id} | Get Offer by ID
[**searchOffers**](CatalogOffersAPI.md#searchoffers) | **POST** /catalog/offers/search | Search Offers


# **getMerchantOffers**
```swift
    open class func getMerchantOffers(merchantId: Int, since: Int64? = nil, page: Int? = nil, size: Int? = nil, mapVariants: Bool? = nil, baseCurrency: String? = nil, completion: @escaping (_ data: PageOffer?, _ error: Error?) -> Void)
```

Get All Merchant Offers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let merchantId = 987 // Int | 
let since = 987 // Int64 |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)
let mapVariants = true // Bool |  (optional) (default to true)
let baseCurrency = "baseCurrency_example" // String |  (optional)

// Get All Merchant Offers
CatalogOffersAPI.getMerchantOffers(merchantId: merchantId, since: since, page: page, size: size, mapVariants: mapVariants, baseCurrency: baseCurrency) { (response, error) in
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
 **merchantId** | **Int** |  | 
 **since** | **Int64** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 20]
 **mapVariants** | **Bool** |  | [optional] [default to true]
 **baseCurrency** | **String** |  | [optional] 

### Return type

[**PageOffer**](PageOffer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOfferById**
```swift
    open class func getOfferById(offerId: Int64, baseCurrency: String? = nil, exchangeRate: Double? = nil, completion: @escaping (_ data: Offer?, _ error: Error?) -> Void)
```

Get Offer by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let offerId = 987 // Int64 | 
let baseCurrency = "baseCurrency_example" // String |  (optional) (default to "USD")
let exchangeRate = 987 // Double |  (optional)

// Get Offer by ID
CatalogOffersAPI.getOfferById(offerId: offerId,  baseCurrency: baseCurrency, exchangeRate: exchangeRate) { (response, error) in
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
 **baseCurrency** | **String** |  | [optional] [default to &quot;USD&quot;]
 **exchangeRate** | **Double** |  | [optional] 

### Return type

[**Offer**](Offer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchOffers**
```swift
    open class func searchOffers(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, page: Int? = nil, size: Int? = nil, excludePublic: Bool? = nil, excludeHidden: Bool? = nil, body: OfferSearchRequest? = nil, completion: @escaping (_ data: PageOffer?, _ error: Error?) -> Void)
```

Search Offers

Maximum size limit of 100 results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)
let excludePublic = true // Bool |  (optional) (default to false)
let excludeHidden = true // Bool |  (optional) (default to true)
let body = OfferSearchRequest(externalId: "externalId_example", id: 123, maxPrice: 123, merchantId: 123, minPrice: 123, name: "name_example", productId: "productId_example", publishingStatus: "publishingStatus_example", seller: "seller_example", sortBy: "sortBy_example", sortDirection: "sortDirection_example", subscriptionStatus: "subscriptionStatus_example", vendor: "vendor_example") // OfferSearchRequest |  (optional)

// Search Offers
CatalogOffersAPI.searchOffers(page: page, size: size, excludePublic: excludePublic, excludeHidden: excludeHidden, body: body) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 20]
 **excludePublic** | **Bool** |  | [optional] [default to false]
 **excludeHidden** | **Bool** |  | [optional] [default to true]
 **body** | [**OfferSearchRequest**](OfferSearchRequest.md) |  | [optional] 

### Return type

[**PageOffer**](PageOffer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

