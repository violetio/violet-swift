# CatalogCategoriesAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**catalogCategoriesGet**](CatalogCategoriesAPI.md#catalogcategoriesget) | **GET** /catalog/categories | Get Categories
[**catalogCategoriesIdGet**](CatalogCategoriesAPI.md#catalogcategoriesidget) | **GET** /catalog/categories/{id} | Get Category by ID
[**catalogCategoriesIdTreeGet**](CatalogCategoriesAPI.md#catalogcategoriesidtreeget) | **GET** /catalog/categories/{id}/tree | Get Category Tree
[**catalogCategoriesSearchQueryGet**](CatalogCategoriesAPI.md#catalogcategoriessearchqueryget) | **GET** /catalog/categories/search/{query} | Search Categories
[**catalogCategoriesSlugSlugGet**](CatalogCategoriesAPI.md#catalogcategoriesslugslugget) | **GET** /catalog/categories/slug/{slug} | Get Category by Slug


# **catalogCategoriesGet**
```swift
    open class func catalogCategoriesGet(page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: [Category]?, _ error: Error?) -> Void)
```

Get Categories

Retreives a paginated list of all available categories.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletProxyClientAPI

let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)

// Get Categories
CatalogCategoriesAPI.catalogCategoriesGet(page: page, size: size) { (response, error) in
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

[**[Category]**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogCategoriesIdGet**
```swift
    open class func catalogCategoriesIdGet(id: String, completion: @escaping (_ data: Category?, _ error: Error?) -> Void)
```

Get Category by ID

Retrieves a single category by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletProxyClientAPI

let id = "id_example" // String | 

// Get Category by ID
CatalogCategoriesAPI.catalogCategoriesIdGet(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogCategoriesIdTreeGet**
```swift
    open class func catalogCategoriesIdTreeGet(id: String, completion: @escaping (_ data: [Category]?, _ error: Error?) -> Void)
```

Get Category Tree

Retreives the category tree by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletProxyClientAPI

let id = "id_example" // String | 

// Get Category Tree
CatalogCategoriesAPI.catalogCategoriesIdTreeGet(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**[Category]**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogCategoriesSearchQueryGet**
```swift
    open class func catalogCategoriesSearchQueryGet(query: String, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: [Category]?, _ error: Error?) -> Void)
```

Search Categories

Performs a paginated search of all categories where name matches query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletProxyClientAPI

let query = "query_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)

// Search Categories
CatalogCategoriesAPI.catalogCategoriesSearchQueryGet(query: query, page: page, size: size) { (response, error) in
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
 **query** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 20]

### Return type

[**[Category]**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogCategoriesSlugSlugGet**
```swift
    open class func catalogCategoriesSlugSlugGet(slug: String, completion: @escaping (_ data: Category?, _ error: Error?) -> Void)
```

Get Category by Slug

Retrieves a single category by slug.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletProxyClientAPI

let slug = "slug_example" // String | 

// Get Category by Slug
CatalogCategoriesAPI.catalogCategoriesSlugSlugGet(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

