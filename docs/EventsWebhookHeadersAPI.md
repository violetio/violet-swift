# EventsWebhookHeadersAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhookHeader**](EventsWebhookHeadersAPI.md#createwebhookheader) | **POST** /events/webhooks/{webhook_id}/headers | Create Webhook Header
[**deleteWebhookHeader**](EventsWebhookHeadersAPI.md#deletewebhookheader) | **DELETE** /events/webhooks/{webhook_id}/headers/{header_id} | Delete Webhook Header
[**getWebhookHeaderById**](EventsWebhookHeadersAPI.md#getwebhookheaderbyid) | **GET** /events/webhooks/{webhook_id}/headers/{header_id} | Get Webhook Header
[**getWebhookHeaders**](EventsWebhookHeadersAPI.md#getwebhookheaders) | **GET** /events/webhooks/{webhook_id}/headers | Get Webhook Headers
[**updateWebhookHeader**](EventsWebhookHeadersAPI.md#updatewebhookheader) | **PUT** /events/webhooks/{webhook_id}/headers/{header_id} | Update Webhook Header


# **createWebhookHeader**
```swift
    open class func createWebhookHeader(webhookId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: WebhookHeader?, _ error: Error?) -> Void)
```

Create Webhook Header

Creates a new Webhook Header.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Create Webhook Header
EventsWebhookHeadersAPI.createWebhookHeader(webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **webhookId** | **Int** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **appId** | **Int** |  | [optional] 

### Return type

[**WebhookHeader**](WebhookHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhookHeader**
```swift
    open class func deleteWebhookHeader(webhookId: Int, headerId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Webhook Header

Deletes Webhook Header.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let headerId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Delete Webhook Header
EventsWebhookHeadersAPI.deleteWebhookHeader(webhookId: webhookId, headerId: headerId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **webhookId** | **Int** |  | 
 **headerId** | **Int** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **appId** | **Int** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookHeaderById**
```swift
    open class func getWebhookHeaderById(webhookId: Int, headerId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: WebhookHeader?, _ error: Error?) -> Void)
```

Get Webhook Header

Retrieves a Webhook Header by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let headerId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Get Webhook Header
EventsWebhookHeadersAPI.getWebhookHeaderById(webhookId: webhookId, headerId: headerId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **webhookId** | **Int** |  | 
 **headerId** | **Int** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **appId** | **Int** |  | [optional] 

### Return type

[**WebhookHeader**](WebhookHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookHeaders**
```swift
    open class func getWebhookHeaders(webhookId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: [WebhookHeader]?, _ error: Error?) -> Void)
```

Get Webhook Headers

Retrieves a list of WebhookHeaders by WebhookId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Get Webhook Headers
EventsWebhookHeadersAPI.getWebhookHeaders(webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **webhookId** | **Int** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **appId** | **Int** |  | [optional] 

### Return type

[**[WebhookHeader]**](WebhookHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWebhookHeader**
```swift
    open class func updateWebhookHeader(webhookId: Int, headerId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: WebhookHeader?, _ error: Error?) -> Void)
```

Update Webhook Header

Updates Webhook Header.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let headerId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Update Webhook Header
EventsWebhookHeadersAPI.updateWebhookHeader(webhookId: webhookId, headerId: headerId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **webhookId** | **Int** |  | 
 **headerId** | **Int** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **appId** | **Int** |  | [optional] 

### Return type

[**WebhookHeader**](WebhookHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

