# Violet Swift SDK

## Overview

Provides Violet API Access for Full Checkout.
See [Violet Docs](https://docs.violet.io) for complete API Documentation.

## Installation

In Xcode, add `https://github.com/violetio/violet-swift`, Release: `1.0.0`
to your Project within the `Package Dependencies` Configuration section.

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8020/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------

*CatalogOffersAPI* | [**getMerchantOffers**](docs/CatalogOffersAPI.md#getmerchantoffers) | **GET** /catalog/offers/merchants/{merchant_id} | Get All Merchant Offers
*CatalogOffersAPI* | [**getOfferById**](docs/CatalogOffersAPI.md#getofferbyid) | **GET** /catalog/offers/{offer_id} | Get Offer by ID
*CatalogOffersAPI* | [**searchOffers**](docs/CatalogOffersAPI.md#searchoffers) | **POST** /catalog/offers/search | Search Offers
*CatalogSkusAPI* | [**getSkuById**](docs/CatalogSkusAPI.md#getskubyid) | **GET** /catalog/skus/{sku_id} | Get Sku by ID
*CheckoutCartAPI* | [**createCart**](docs/CheckoutCartAPI.md#createcart) | **POST** /checkout/cart | Create Cart
*CheckoutCartAPI* | [**deleteCart**](docs/CheckoutCartAPI.md#deletecart) | **DELETE** /checkout/cart/{cart_id} | Delete Cart
*CheckoutCartAPI* | [**getCart**](docs/CheckoutCartAPI.md#getcart) | **GET** /checkout/cart/{cart_id} | Get Cart by ID
*CheckoutCartAPI* | [**getCartByToken**](docs/CheckoutCartAPI.md#getcartbytoken) | **GET** /checkout/cart/byToken/{token} | Get Cart by Token
*CheckoutCompletionAPI* | [**priceCart**](docs/CheckoutCompletionAPI.md#pricecart) | **GET** /checkout/cart/{cart_id}/price | Price Cart
*CheckoutCompletionAPI* | [**submitCheckout**](docs/CheckoutCompletionAPI.md#submitcheckout) | **POST** /checkout/cart/{cart_id}/submit | Submit Cart
*CheckoutCustomerAPI* | [**applyBillingAddress**](docs/CheckoutCustomerAPI.md#applybillingaddress) | **POST** /checkout/cart/{cart_id}/billing_address | Set Billing Address
*CheckoutCustomerAPI* | [**applyGuestCustomerToCart**](docs/CheckoutCustomerAPI.md#applyguestcustomertocart) | **POST** /checkout/cart/{cart_id}/customer | Apply Guest Customer to Cart
*CheckoutCustomerAPI* | [**applyShippingAddress**](docs/CheckoutCustomerAPI.md#applyshippingaddress) | **POST** /checkout/cart/{cart_id}/shipping_address | Set Shipping Address
*CheckoutCustomerAPI* | [**updateBillingAddress**](docs/CheckoutCustomerAPI.md#updatebillingaddress) | **PUT** /checkout/cart/{cart_id}/billing_address | Update Billing Address
*CheckoutCustomerAPI* | [**updateShippingAddress**](docs/CheckoutCustomerAPI.md#updateshippingaddress) | **PUT** /checkout/cart/{cart_id}/shipping_address | Update Shipping Address
*CheckoutDiscountsAPI* | [**addDiscountToCart**](docs/CheckoutDiscountsAPI.md#adddiscounttocart) | **POST** /checkout/cart/{cart_id}/discounts | Add Discount to Cart
*CheckoutDiscountsAPI* | [**removeDiscountFromCart**](docs/CheckoutDiscountsAPI.md#removediscountfromcart) | **DELETE** /checkout/cart/{cart_id}/discounts/{discount_id} | Remove Discount from Cart
*CheckoutItemsAPI* | [**addSkuToCart**](docs/CheckoutItemsAPI.md#addskutocart) | **POST** /checkout/cart/{cart_id}/skus | Add SKU to Cart
*CheckoutItemsAPI* | [**removeSkuFromCart**](docs/CheckoutItemsAPI.md#removeskufromcart) | **DELETE** /checkout/cart/{cart_id}/skus/{order_sku_id} | Remove SKU from Cart
*CheckoutItemsAPI* | [**updateSkuInCart**](docs/CheckoutItemsAPI.md#updateskuincart) | **PUT** /checkout/cart/{cart_id}/skus/{order_sku_id} | Update SKU in Cart
*CheckoutPaymentAPI* | [**applyPaymentMethod**](docs/CheckoutPaymentAPI.md#applypaymentmethod) | **POST** /checkout/cart/{cart_id}/payment | Apply Payment Method
*CheckoutShippingAPI* | [**applyShippingMethods**](docs/CheckoutShippingAPI.md#applyshippingmethods) | **POST** /checkout/cart/{cart_id}/shipping | Set Shipping Methods
*CheckoutShippingAPI* | [**getAvailableShippingMethods**](docs/CheckoutShippingAPI.md#getavailableshippingmethods) | **GET** /checkout/cart/{cart_id}/shipping/available | Get Available Shipping Methods
*CheckoutShippingAPI* | [**removeShippingMethod**](docs/CheckoutShippingAPI.md#removeshippingmethod) | **DELETE** /checkout/cart/{cart_id}/shipping/{shipping_method_id} | Remove Shipping Method
*OrdersAPI* | [**getAllOrders**](docs/OrdersAPI.md#getallorders) | **GET** /orders | Get Orders
*OrdersAPI* | [**getOrderById**](docs/OrdersAPI.md#getorderbyid) | **GET** /orders/{order_id} | Get Order by ID
*OrdersAPI* | [**searchBags**](docs/OrdersAPI.md#searchbags) | **POST** /orders/bags/search | Search Bags
*OrdersAPI* | [**searchOrders**](docs/OrdersAPI.md#searchorders) | **POST** /orders/search | Search Orders
*RefundsAPI* | [**getBagRefunds**](docs/RefundsAPI.md#getbagrefunds) | **GET** /orders/{order_id}/bags/{bag_id}/refunds | Get Bag Refunds
*RefundsAPI* | [**getOrderRefundById**](docs/RefundsAPI.md#getorderrefundbyid) | **GET** /orders/{order_id}/refunds/{refund_id} | Get Order Refund by ID
*RefundsAPI* | [**getOrderRefunds**](docs/RefundsAPI.md#getorderrefunds) | **GET** /orders/{order_id}/refunds | Get Order Refunds



