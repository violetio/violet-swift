//
// CheckoutShippingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CheckoutShippingAPI {

    /**
     Get Available Shipping Methods
     
     - parameter xVioletToken: (header)  
     - parameter xVioletAppSecret: (header)  
     - parameter xVioletAppId: (header)  
     - parameter cartId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func checkoutCartCartIdShippingAvailableGet(xVioletToken: String, xVioletAppSecret: String, xVioletAppId: Int64, cartId: Int64, apiResponseQueue: DispatchQueue = VioletPublicClientAPIAPI.apiResponseQueue, completion: @escaping ((_ data: [OrderShippingMethodWrapper]?, _ error: Error?) -> Void)) -> RequestTask {
        return checkoutCartCartIdShippingAvailableGetWithRequestBuilder(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, cartId: cartId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Available Shipping Methods
     - GET /checkout/cart/{cart_id}/shipping/available
     - Returns a list of available shipping methods for each bag. The shipping address and customer must be applied to the cart before requesting shipping methods.
     - parameter xVioletToken: (header)  
     - parameter xVioletAppSecret: (header)  
     - parameter xVioletAppId: (header)  
     - parameter cartId: (path)  
     - returns: RequestBuilder<[OrderShippingMethodWrapper]> 
     */
    open class func checkoutCartCartIdShippingAvailableGetWithRequestBuilder(xVioletToken: String, xVioletAppSecret: String, xVioletAppId: Int64, cartId: Int64) -> RequestBuilder<[OrderShippingMethodWrapper]> {
        var localVariablePath = "/checkout/cart/{cart_id}/shipping/available"
        let cartIdPreEscape = "\(APIHelper.mapValueToPathItem(cartId))"
        let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = VioletPublicClientAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Violet-Token": xVioletToken.encodeToJSON(),
            "X-Violet-App-Secret": xVioletAppSecret.encodeToJSON(),
            "X-Violet-App-Id": xVioletAppId.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[OrderShippingMethodWrapper]>.Type = VioletPublicClientAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Set Shipping Methods
     
     - parameter xVioletToken: (header)  
     - parameter xVioletAppSecret: (header)  
     - parameter xVioletAppId: (header)  
     - parameter cartId: (path)  
     - parameter priceCart: (query)  (optional, default to false)
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func checkoutCartCartIdShippingPost(xVioletToken: String, xVioletAppSecret: String, xVioletAppId: Int64, cartId: Int64, priceCart: Bool? = nil, body: [BagShippingMethod]? = nil, apiResponseQueue: DispatchQueue = VioletPublicClientAPIAPI.apiResponseQueue, completion: @escaping ((_ data: Order?, _ error: Error?) -> Void)) -> RequestTask {
        return checkoutCartCartIdShippingPostWithRequestBuilder(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, cartId: cartId, priceCart: priceCart, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set Shipping Methods
     - POST /checkout/cart/{cart_id}/shipping
     - Applies a shipping method to a bag. Shipping methods available to each bag can be retreived from 'Get Available Shipping Methods' endpoint. Each bag requires a shipping method.
     - parameter xVioletToken: (header)  
     - parameter xVioletAppSecret: (header)  
     - parameter xVioletAppId: (header)  
     - parameter cartId: (path)  
     - parameter priceCart: (query)  (optional, default to false)
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Order> 
     */
    open class func checkoutCartCartIdShippingPostWithRequestBuilder(xVioletToken: String, xVioletAppSecret: String, xVioletAppId: Int64, cartId: Int64, priceCart: Bool? = nil, body: [BagShippingMethod]? = nil) -> RequestBuilder<Order> {
        var localVariablePath = "/checkout/cart/{cart_id}/shipping"
        let cartIdPreEscape = "\(APIHelper.mapValueToPathItem(cartId))"
        let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = VioletPublicClientAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "price_cart": (wrappedValue: priceCart?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Violet-Token": xVioletToken.encodeToJSON(),
            "X-Violet-App-Secret": xVioletAppSecret.encodeToJSON(),
            "X-Violet-App-Id": xVioletAppId.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Order>.Type = VioletPublicClientAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Remove Shipping Method
     
     - parameter xVioletToken: (header)  
     - parameter xVioletAppSecret: (header)  
     - parameter xVioletAppId: (header)  
     - parameter cartId: (path)  
     - parameter shippingMethodId: (path)  
     - parameter priceCart: (query)  (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func checkoutCartCartIdShippingShippingMethodIdDelete(xVioletToken: String, xVioletAppSecret: String, xVioletAppId: Int64, cartId: Int64, shippingMethodId: Int64, priceCart: Bool? = nil, apiResponseQueue: DispatchQueue = VioletPublicClientAPIAPI.apiResponseQueue, completion: @escaping ((_ data: Order?, _ error: Error?) -> Void)) -> RequestTask {
        return checkoutCartCartIdShippingShippingMethodIdDeleteWithRequestBuilder(xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, cartId: cartId, shippingMethodId: shippingMethodId, priceCart: priceCart).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove Shipping Method
     - DELETE /checkout/cart/{cart_id}/shipping/{shipping_method_id}
     - Removes a previously applied shipping from the cart.
     - parameter xVioletToken: (header)  
     - parameter xVioletAppSecret: (header)  
     - parameter xVioletAppId: (header)  
     - parameter cartId: (path)  
     - parameter shippingMethodId: (path)  
     - parameter priceCart: (query)  (optional, default to false)
     - returns: RequestBuilder<Order> 
     */
    open class func checkoutCartCartIdShippingShippingMethodIdDeleteWithRequestBuilder(xVioletToken: String, xVioletAppSecret: String, xVioletAppId: Int64, cartId: Int64, shippingMethodId: Int64, priceCart: Bool? = nil) -> RequestBuilder<Order> {
        var localVariablePath = "/checkout/cart/{cart_id}/shipping/{shipping_method_id}"
        let cartIdPreEscape = "\(APIHelper.mapValueToPathItem(cartId))"
        let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
        let shippingMethodIdPreEscape = "\(APIHelper.mapValueToPathItem(shippingMethodId))"
        let shippingMethodIdPostEscape = shippingMethodIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{shipping_method_id}", with: shippingMethodIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = VioletPublicClientAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "price_cart": (wrappedValue: priceCart?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Violet-Token": xVioletToken.encodeToJSON(),
            "X-Violet-App-Secret": xVioletAppSecret.encodeToJSON(),
            "X-Violet-App-Id": xVioletAppId.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Order>.Type = VioletPublicClientAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
