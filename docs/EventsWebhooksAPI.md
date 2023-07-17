# EventsWebhooksAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](EventsWebhooksAPI.md#createwebhook) | **POST** /events/webhooks | Create Webhook
[**deleteWebhook**](EventsWebhooksAPI.md#deletewebhook) | **DELETE** /events/webhooks/{webhook_id} | Delete Webhook
[**deleteWebhooks**](EventsWebhooksAPI.md#deletewebhooks) | **DELETE** /events/webhooks | Delete Channel Webhooks
[**getWebhookById**](EventsWebhooksAPI.md#getwebhookbyid) | **GET** /events/webhooks/{webhook_id} | Get Webhook
[**getWebhooks**](EventsWebhooksAPI.md#getwebhooks) | **GET** /events/webhooks | Get Webhooks
[**updateWebhook**](EventsWebhooksAPI.md#updatewebhook) | **PUT** /events/webhooks/{webhook_id} | Update Webhook
[**updateWebhooksStatus**](EventsWebhooksAPI.md#updatewebhooksstatus) | **PUT** /events/webhooks/status/{status} | Update Webhooks Status


# **createWebhook**
```swift
    open class func createWebhook(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Create Webhook

Creates a new webhook for the desired event. The remote endpoint must be HTTPS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Create Webhook
EventsWebhooksAPI.createWebhook(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **appId** | **Int** |  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhook**
```swift
    open class func deleteWebhook(webhookId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Webhook

Deletes Webhook. Events will immediately stop posting to this endpoint upon deletion.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Delete Webhook
EventsWebhooksAPI.deleteWebhook(webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhooks**
```swift
    open class func deleteWebhooks(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Channel Webhooks

Deletes All Channel Webhooks. Events will immediately stop posting to this endpoint upon deletion.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Delete Channel Webhooks
EventsWebhooksAPI.deleteWebhooks(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **appId** | **Int** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookById**
```swift
    open class func getWebhookById(webhookId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Get Webhook

Gets webhook by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Get Webhook
EventsWebhooksAPI.getWebhookById(webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhooks**
```swift
    open class func getWebhooks(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, event: String? = nil, completion: @escaping (_ data: [Webhook]?, _ error: Error?) -> Void)
```

Get Webhooks

Gets webhooks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)
let event = "event_example" // String |  (optional)

// Get Webhooks
EventsWebhooksAPI.getWebhooks(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId, event: event) { (response, error) in
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
 **appId** | **Int** |  | [optional] 
 **event** | **String** |  | [optional] 

### Return type

[**[Webhook]**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWebhook**
```swift
    open class func updateWebhook(webhookId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Update Webhook

Updates Webhook.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Update Webhook
EventsWebhooksAPI.updateWebhook(webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWebhooksStatus**
```swift
    open class func updateWebhooksStatus(status: String, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update Webhooks Status

Updates All Webhooks Status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let status = "status_example" // String | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Update Webhooks Status
EventsWebhooksAPI.updateWebhooksStatus(status: status, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **status** | **String** |  | 
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

