# EventsWebhookEventsAPI

All URIs are relative to *https://sandbox-api.violet.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllWebhookEvents**](EventsWebhookEventsAPI.md#getallwebhookevents) | **GET** /events/webhooks/all/events | Get All Webhook Events
[**getWebhookEventBodyByEventId**](EventsWebhookEventsAPI.md#getwebhookeventbodybyeventid) | **GET** /events/webhooks/{webhook_id}/events/{event_id}/body | Get Webhook Event Body
[**getWebhookEventById**](EventsWebhookEventsAPI.md#getwebhookeventbyid) | **GET** /events/webhooks/{webhook_id}/events/{event_id} | Get Webhook Event
[**getWebhookEventTypes**](EventsWebhookEventsAPI.md#getwebhookeventtypes) | **GET** /events/webhooks/event/types | Get Webhook Event Types
[**getWebhookEvents**](EventsWebhookEventsAPI.md#getwebhookevents) | **GET** /events/webhooks/{webhook_id}/events | Get Webhook Events


# **getAllWebhookEvents**
```swift
    open class func getAllWebhookEvents(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, since: Int64? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: WebhookEvent?, _ error: Error?) -> Void)
```

Get All Webhook Events

Retrieves WebhookEvents from all Webhooks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)
let since = 987 // Int64 |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)

// Get All Webhook Events
EventsWebhookEventsAPI.getAllWebhookEvents(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId, since: since, page: page, size: size) { (response, error) in
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
 **since** | **Int64** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 20]

### Return type

[**WebhookEvent**](WebhookEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookEventBodyByEventId**
```swift
    open class func getWebhookEventBodyByEventId(webhookId: Int, eventId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: WebhookEventBody?, _ error: Error?) -> Void)
```

Get Webhook Event Body

Retrieves the body of a Webhook Event.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let eventId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Get Webhook Event Body
EventsWebhookEventsAPI.getWebhookEventBodyByEventId(webhookId: webhookId, eventId: eventId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **eventId** | **Int** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **appId** | **Int** |  | [optional] 

### Return type

[**WebhookEventBody**](WebhookEventBody.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookEventById**
```swift
    open class func getWebhookEventById(webhookId: Int, eventId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, completion: @escaping (_ data: WebhookEvent?, _ error: Error?) -> Void)
```

Get Webhook Event

Retrieves a single WebhookEvent by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let eventId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)

// Get Webhook Event
EventsWebhookEventsAPI.getWebhookEventById(webhookId: webhookId, eventId: eventId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId) { (response, error) in
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
 **eventId** | **Int** |  | 
 **xVioletToken** | **String** |  | [optional] 
 **xVioletAppSecret** | **String** |  | [optional] 
 **xVioletAppId** | **Int** |  | [optional] 
 **appId** | **Int** |  | [optional] 

### Return type

[**WebhookEvent**](WebhookEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookEventTypes**
```swift
    open class func getWebhookEventTypes(xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get Webhook Event Types

Retrieves a list of all supported Webhook event types.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)

// Get Webhook Event Types
EventsWebhookEventsAPI.getWebhookEventTypes(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId) { (response, error) in
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

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookEvents**
```swift
    open class func getWebhookEvents(webhookId: Int, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, appId: Int? = nil, since: Int64? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: WebhookEvent?, _ error: Error?) -> Void)
```

Get Webhook Events

Retrieves WebhookEvents from a single Webhook.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import VioletPublicClient

let webhookId = 987 // Int | 
let xVioletToken = "xVioletToken_example" // String |  (optional)
let xVioletAppSecret = "xVioletAppSecret_example" // String |  (optional)
let xVioletAppId = 987 // Int |  (optional)
let appId = 987 // Int |  (optional)
let since = 987 // Int64 |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let size = 987 // Int |  (optional) (default to 20)

// Get Webhook Events
EventsWebhookEventsAPI.getWebhookEvents(webhookId: webhookId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, appId: appId, since: since, page: page, size: size) { (response, error) in
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
 **since** | **Int64** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **size** | **Int** |  | [optional] [default to 20]

### Return type

[**WebhookEvent**](WebhookEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

