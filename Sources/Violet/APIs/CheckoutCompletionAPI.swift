//
// CheckoutCompletionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CheckoutCompletionAPI {

    /**
     Price Cart
     
     - parameter cartId: (path)  
     - parameter xVioletToken: (header)  (optional)
     - parameter xVioletAppSecret: (header)  (optional)
     - parameter xVioletAppId: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func priceCart(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, apiResponseQueue: DispatchQueue = VioletAPI.apiResponseQueue, completion: @escaping ((_ data: Order?, _ error: Error?) -> Void)) -> RequestTask {
        return priceCartWithRequestBuilder(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Price Cart
     - GET /checkout/cart/{cart_id}/price
     - parameter cartId: (path)  
     - parameter xVioletToken: (header)  (optional)
     - parameter xVioletAppSecret: (header)  (optional)
     - parameter xVioletAppId: (header)  (optional)
     - returns: RequestBuilder<Order> 
     */
    open class func priceCartWithRequestBuilder(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil) -> RequestBuilder<Order> {
        var localVariablePath = "/checkout/cart/{cart_id}/price"
        let cartIdPreEscape = "\(APIHelper.mapValueToPathItem(cartId))"
        let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = VioletAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Violet-Token": xVioletToken?.encodeToJSON(),
            "X-Violet-App-Secret": xVioletAppSecret?.encodeToJSON(),
            "X-Violet-App-Id": xVioletAppId?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Order>.Type = VioletAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Submit Cart
     
     - parameter cartId: (path)  
     - parameter xVioletToken: (header)  (optional)
     - parameter xVioletAppSecret: (header)  (optional)
     - parameter xVioletAppId: (header)  (optional)
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func submitCheckout(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, body: CartSubmissionRequest? = nil, apiResponseQueue: DispatchQueue = VioletAPI.apiResponseQueue, completion: @escaping ((_ data: Order?, _ error: Error?) -> Void)) -> RequestTask {
        return submitCheckoutWithRequestBuilder(cartId: cartId, xVioletToken: xVioletToken, xVioletAppSecret: xVioletAppSecret, xVioletAppId: xVioletAppId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Submit Cart
     - POST /checkout/cart/{cart_id}/submit
     - parameter cartId: (path)  
     - parameter xVioletToken: (header)  (optional)
     - parameter xVioletAppSecret: (header)  (optional)
     - parameter xVioletAppId: (header)  (optional)
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Order> 
     */
    open class func submitCheckoutWithRequestBuilder(cartId: Int64, xVioletToken: String? = nil, xVioletAppSecret: String? = nil, xVioletAppId: Int? = nil, body: CartSubmissionRequest? = nil) -> RequestBuilder<Order> {
        var localVariablePath = "/checkout/cart/{cart_id}/submit"
        let cartIdPreEscape = "\(APIHelper.mapValueToPathItem(cartId))"
        let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = VioletAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Violet-Token": xVioletToken?.encodeToJSON(),
            "X-Violet-App-Secret": xVioletAppSecret?.encodeToJSON(),
            "X-Violet-App-Id": xVioletAppId?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Order>.Type = VioletAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
