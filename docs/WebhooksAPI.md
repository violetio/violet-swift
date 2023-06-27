# WebhooksAPI

All URIs are relative to *http://localhost:8020/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appsAppIdWebhooksGet**](WebhooksAPI.md#appsappidwebhooksget) | **GET** /apps/{app_id}/webhooks | List Webhooks
[**appsAppIdWebhooksPost**](WebhooksAPI.md#appsappidwebhookspost) | **POST** /apps/{app_id}/webhooks | Create Webhook
[**appsAppIdWebhooksWebhookIdDelete**](WebhooksAPI.md#appsappidwebhookswebhookiddelete) | **DELETE** /apps/{app_id}/webhooks/{webhook_id} | Delete Webhook
[**appsAppIdWebhooksWebhookIdGet**](WebhooksAPI.md#appsappidwebhookswebhookidget) | **GET** /apps/{app_id}/webhooks/{webhook_id} | Get Webhook by ID
[**appsAppIdWebhooksWebhookIdPut**](WebhooksAPI.md#appsappidwebhookswebhookidput) | **PUT** /apps/{app_id}/webhooks/{webhook_id} | Update Webhook


# **appsAppIdWebhooksGet**
```swift
    open class func appsAppIdWebhooksGet(appId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int64? = nil, event: String? = nil, completion: @escaping (_ data: [Webhook]?, _ error: Error?) -> Void)
```

List Webhooks

Retrieves a list of previously created webhooks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let appId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int64 |  (optional)
let event = "event_example" // String |  (optional)

// List Webhooks
WebhooksAPI.appsAppIdWebhooksGet(appId: appId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, event: event) { (response, error) in
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
 **appId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int64** |  | [optional] 
 **event** | **String** |  | [optional] 

### Return type

[**[Webhook]**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppIdWebhooksPost**
```swift
    open class func appsAppIdWebhooksPost(appId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int64? = nil, body: Webhook? = nil, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Create Webhook

Creates a new webhook for the desired event. The remote endpoint must be HTTPS.<br><br>We currently limit webhooks to one per event per app. If the event is already active on a previously created webhook that existing webhook will be updated with the new endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let appId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int64 |  (optional)
let body = Webhook(id: 123, appId: 123, event: "event_example", remoteEndpoint: "remoteEndpoint_example", status: "status_example", dateCreated: Date(), dateLastModified: Date()) // Webhook |  (optional)

// Create Webhook
WebhooksAPI.appsAppIdWebhooksPost(appId: appId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, body: body) { (response, error) in
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
 **appId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int64** |  | [optional] 
 **body** | [**Webhook**](Webhook.md) |  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppIdWebhooksWebhookIdDelete**
```swift
    open class func appsAppIdWebhooksWebhookIdDelete(appId: Int64, webhookId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int64? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Webhook

Removes a webhook. Events will immedietly stop posting to this endpoint upon deletion.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let appId = 987 // Int64 | 
let webhookId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int64 |  (optional)

// Delete Webhook
WebhooksAPI.appsAppIdWebhooksWebhookIdDelete(appId: appId, webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
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
 **appId** | **Int64** |  | 
 **webhookId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int64** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppIdWebhooksWebhookIdGet**
```swift
    open class func appsAppIdWebhooksWebhookIdGet(appId: Int64, webhookId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int64? = nil, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Get Webhook by ID

Retrieves a single webhook by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let appId = 987 // Int64 | 
let webhookId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int64 |  (optional)

// Get Webhook by ID
WebhooksAPI.appsAppIdWebhooksWebhookIdGet(appId: appId, webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
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
 **appId** | **Int64** |  | 
 **webhookId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int64** |  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsAppIdWebhooksWebhookIdPut**
```swift
    open class func appsAppIdWebhooksWebhookIdPut(appId: Int64, webhookId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int64? = nil, body: Webhook? = nil, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Update Webhook

Modifies an existing webhook by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let appId = 987 // Int64 | 
let webhookId = 987 // Int64 | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int64 |  (optional)
let body = Webhook(id: 123, appId: 123, event: "event_example", remoteEndpoint: "remoteEndpoint_example", status: "status_example", dateCreated: Date(), dateLastModified: Date()) // Webhook |  (optional)

// Update Webhook
WebhooksAPI.appsAppIdWebhooksWebhookIdPut(appId: appId, webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, body: body) { (response, error) in
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
 **appId** | **Int64** |  | 
 **webhookId** | **Int64** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int64** |  | [optional] 
 **body** | [**Webhook**](Webhook.md) |  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

