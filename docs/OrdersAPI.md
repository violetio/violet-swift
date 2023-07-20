# OrdersAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllOrders**](OrdersAPI.md#getallorders) | **GET** /orders | Get Orders
[**getOrderById**](OrdersAPI.md#getorderbyid) | **GET** /orders/{order_id} | Get Order by ID
[**searchBags**](OrdersAPI.md#searchbags) | **POST** /orders/bags/search | Search Bags
[**searchOrders**](OrdersAPI.md#searchorders) | **POST** /orders/search | Search Orders


# **getAllOrders**
```swift
    open class func getAllOrders(page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: PageOrder?, _ error: Error?) -> Void)
```

Get Orders

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)

// Get Orders
OrdersAPI.getAllOrders(page: page, size: size) { (response, error) in
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

### Return type

[**PageOrder**](PageOrder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
```swift
    open class func getOrderById(orderId: Int64, completion: @escaping (_ data: Order?, _ error: Error?) -> Void)
```

Get Order by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let orderId = 987 // Int64 | 

// Get Order by ID
OrdersAPI.getOrderById(orderId: orderId) { (response, error) in
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
 
### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchBags**
```swift
    open class func searchBags(page: Int? = nil, size: Int? = nil, extended: Bool? = nil, body: SearchRequest? = nil, completion: @escaping (_ data: PageBag?, _ error: Error?) -> Void)
```

Search Bags

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)
let extended = true // Bool |  (optional) (default to false)
let body = SearchRequest(appOrderId: "appOrderId_example", bagId: 123, externalOrderId: "externalOrderId_example", orderId: 123, referralId: "referralId_example", userId: 123) // SearchRequest |  (optional)

// Search Bags
OrdersAPI.searchBags(page: page, size: size, extended: extended, body: body) { (response, error) in
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

# **searchOrders**
```swift
    open class func searchOrders(page: Int? = nil, size: Int? = nil, extended: Bool? = nil, body: SearchRequest? = nil, completion: @escaping (_ data: PageOrder?, _ error: Error?) -> Void)
```

Search Orders

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Violet

let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)
let extended = true // Bool |  (optional) (default to false)
let body = SearchRequest(appOrderId: "appOrderId_example", bagId: 123, externalOrderId: "externalOrderId_example", orderId: 123, referralId: "referralId_example", userId: 123) // SearchRequest |  (optional)

// Search Orders
OrdersAPI.searchOrders(page: page, size: size, extended: extended, body: body) { (response, error) in
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

