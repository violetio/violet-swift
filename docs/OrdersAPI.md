# OrdersAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllOrders1**](OrdersAPI.md#getallorders1) | **GET** /orders | Get Orders
[**getOrderById1**](OrdersAPI.md#getorderbyid1) | **GET** /orders/{order_id} | Get Order by ID
[**searchBags1**](OrdersAPI.md#searchbags1) | **POST** /orders/bags/search | Search Bags
[**searchOrders1**](OrdersAPI.md#searchorders1) | **POST** /orders/search | Search Orders


# **getAllOrders1**
```swift
    open class func getAllOrders1(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: PageOrder?, _ error: Error?) -> Void)
```

Get Orders

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)

// Get Orders
OrdersAPI.getAllOrders1(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, page: page, size: size) { (response, error) in
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

### Return type

[**PageOrder**](PageOrder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById1**
```swift
    open class func getOrderById1(orderId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Get Order by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let orderId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)

// Get Order by ID
OrdersAPI.getOrderById1(orderId: orderId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
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
 **orderId** | **Int64** |  | 
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

# **searchBags1**
```swift
    open class func searchBags1(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, page: Int? = nil, size: Int? = nil, extended: Bool? = nil, body: SearchRequest? = nil, completion: @escaping (_ data: PageBag?, _ error: Error?) -> Void)
```

Search Bags

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)
let extended = true // Bool |  (optional) (default to false)
let body = SearchRequest(appOrderId: "appOrderId_example", bagId: 123, externalOrderId: "externalOrderId_example", orderId: 123, referralId: "referralId_example", userId: 123) // SearchRequest |  (optional)

// Search Bags
OrdersAPI.searchBags1(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, page: page, size: size, extended: extended, body: body) { (response, error) in
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
 **extended** | **Bool** |  | [optional] [default to false]
 **body** | [**SearchRequest**](SearchRequest.md) |  | [optional] 

### Return type

[**PageBag**](PageBag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchOrders1**
```swift
    open class func searchOrders1(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, page: Int? = nil, size: Int? = nil, extended: Bool? = nil, body: SearchRequest? = nil, completion: @escaping (_ data: PageOrder?, _ error: Error?) -> Void)
```

Search Orders

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)
let extended = true // Bool |  (optional) (default to false)
let body = SearchRequest(appOrderId: "appOrderId_example", bagId: 123, externalOrderId: "externalOrderId_example", orderId: 123, referralId: "referralId_example", userId: 123) // SearchRequest |  (optional)

// Search Orders
OrdersAPI.searchOrders1(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, page: page, size: size, extended: extended, body: body) { (response, error) in
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
 **extended** | **Bool** |  | [optional] [default to false]
 **body** | [**SearchRequest**](SearchRequest.md) |  | [optional] 

### Return type

[**PageOrder**](PageOrder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

