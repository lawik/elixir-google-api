# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserEvent do
  @moduledoc """
  UserEvent captures all metadata information Retail API needs to know about how end users interact with customers' website.

  ## Attributes

  *   `attributes` (*type:* `%{optional(String.t) => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute.t}`, *default:* `nil`) - Extra user event features to include in the recommendation model. If you provide custom attributes for ingested user events, also include them in the user events that you associate with prediction requests. Custom attribute formatting must be consistent between imported events and events provided with prediction requests. This lets the Retail API use those custom attributes when training models and serving predictions, which helps improve recommendation quality. This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT error is returned: * The key must be a UTF-8 encoded string with a length limit of 5,000 characters. * For text attributes, at most 400 values are allowed. Empty values are not allowed. Each value must be a UTF-8 encoded string with a length limit of 256 characters. * For number attributes, at most 400 values are allowed. For product recommendations, an example of extra user information is traffic_channel, which is how a user arrives at the site. Users can arrive at the site by coming to the site directly, coming through Google search, or in other ways.
  *   `attributionToken` (*type:* `String.t`, *default:* `nil`) - Highly recommended for user events that are the result of PredictionService.Predict. This field enables accurate attribution of recommendation model performance. The value must be a valid PredictResponse.attribution_token for user events that are the result of PredictionService.Predict. The value must be a valid SearchResponse.attribution_token for user events that are the result of SearchService.Search. This token enables us to accurately attribute page view or purchase back to the event and the particular predict response containing this clicked/purchased product. If user clicks on product K in the recommendation results, pass PredictResponse.attribution_token as a URL parameter to product K's page. When recording events on product K's page, log the PredictResponse.attribution_token to this field.
  *   `cartId` (*type:* `String.t`, *default:* `nil`) - The ID or name of the associated shopping cart. This ID is used to associate multiple items added or present in the cart before purchase. This can only be set for `add-to-cart`, `purchase-complete`, or `shopping-cart-page-view` events.
  *   `completionDetail` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompletionDetail.t`, *default:* `nil`) - The main auto-completion details related to the event. This field should be set for `search` event when autocomplete function is enabled and the user clicks a suggestion for search.
  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - Only required for UserEventService.ImportUserEvents method. Timestamp of when the user event happened.
  *   `eventType` (*type:* `String.t`, *default:* `nil`) - Required. User event type. Allowed values are: * `add-to-cart`: Products being added to cart. * `category-page-view`: Special pages such as sale or promotion pages viewed. * `detail-page-view`: Products detail page viewed. * `home-page-view`: Homepage viewed. * `promotion-offered`: Promotion is offered to a user. * `promotion-not-offered`: Promotion is not offered to a user. * `purchase-complete`: User finishing a purchase. * `search`: Product search. * `shopping-cart-page-view`: User viewing a shopping cart.
  *   `experimentIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of identifiers for the independent experiment groups this user event belongs to. This is used to distinguish between user events associated with different experiment setups (e.g. using Retail API, using different recommendation models).
  *   `filter` (*type:* `String.t`, *default:* `nil`) - The filter syntax consists of an expression language for constructing a predicate from one or more fields of the products being filtered. See SearchRequest.filter for definition and syntax. The value must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `offset` (*type:* `integer()`, *default:* `nil`) - An integer that specifies the current offset for pagination (the 0-indexed starting location, amongst the products deemed by the API as relevant). See SearchRequest.offset for definition. If this field is negative, an INVALID_ARGUMENT is returned. This can only be set for `search` events. Other event types should not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - The order in which products are returned. See SearchRequest.order_by for definition and syntax. The value must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. This can only be set for `search` events. Other event types should not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `pageCategories` (*type:* `list(String.t)`, *default:* `nil`) - The categories associated with a category page. To represent full path of category, use '>' sign to separate different hierarchies. If '>' is part of the category name, replace it with other character(s). Category pages include special pages such as sales or promotions. For instance, a special sale page may have the category hierarchy: "pageCategories" : ["Sales > 2017 Black Friday Deals"]. Required for `category-page-view` events. At least one of search_query or page_categories is required for `search` events. Other event types should not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `pageViewId` (*type:* `String.t`, *default:* `nil`) - A unique ID of a web page view. This should be kept the same for all user events triggered from the same pageview. For example, an item detail page view could trigger multiple events as the user is browsing the page. The `pageViewId` property should be kept the same for all these events so that they can be grouped together properly. When using the client side event reporting with JavaScript pixel and Google Tag Manager, this value is filled in automatically.
  *   `productDetails` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ProductDetail.t)`, *default:* `nil`) - The main product details related to the event. This field is optional except for the following event types: * `add-to-cart` * `detail-page-view` * `purchase-complete` In a `search` event, this field represents the products returned to the end user on the current page (the end user may have not finished browsing the whole page yet). When a new page is returned to the end user, after pagination/filtering/ordering even for the same query, a new `search` event with different product_details is desired. The end user may have not finished browsing the whole page yet.
  *   `purchaseTransaction` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurchaseTransaction.t`, *default:* `nil`) - A transaction represents the entire purchase transaction. Required for `purchase-complete` events. Other event types should not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `referrerUri` (*type:* `String.t`, *default:* `nil`) - The referrer URL of the current page. When using the client side event reporting with JavaScript pixel and Google Tag Manager, this value is filled in automatically.
  *   `searchQuery` (*type:* `String.t`, *default:* `nil`) - The user's search query. See SearchRequest.query for definition. The value must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. At least one of search_query or page_categories is required for `search` events. Other event types should not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for tracking a visitor session with a length limit of 128 bytes. A session is an aggregation of an end user behavior in a time span. A general guideline to populate the sesion_id: 1. If user has no activity for 30 min, a new session_id should be assigned. 2. The session_id should be unique across users, suggest use uuid or add visitor_id as prefix.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Complete URL (window.location.href) of the user's current page. When using the client side event reporting with JavaScript pixel and Google Tag Manager, this value is filled in automatically. Maximum length 5,000 characters.
  *   `userInfo` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserInfo.t`, *default:* `nil`) - User information.
  *   `visitorId` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, which should be able to uniquely identify a visitor on a single device. This unique identifier should not change if the visitor log in/out of the website. Don't set the field to the same fixed ID for different users. This mixes the event history of those users together, which results in degraded model quality. The field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. The field should not contain PII or user-data. We recommend to use Google Analytics [Client ID](https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#clientId) for this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes =>
            %{
              optional(String.t()) =>
                GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute.t()
            }
            | nil,
          :attributionToken => String.t() | nil,
          :cartId => String.t() | nil,
          :completionDetail =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompletionDetail.t() | nil,
          :eventTime => DateTime.t() | nil,
          :eventType => String.t() | nil,
          :experimentIds => list(String.t()) | nil,
          :filter => String.t() | nil,
          :offset => integer() | nil,
          :orderBy => String.t() | nil,
          :pageCategories => list(String.t()) | nil,
          :pageViewId => String.t() | nil,
          :productDetails =>
            list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ProductDetail.t()) | nil,
          :purchaseTransaction =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurchaseTransaction.t() | nil,
          :referrerUri => String.t() | nil,
          :searchQuery => String.t() | nil,
          :sessionId => String.t() | nil,
          :uri => String.t() | nil,
          :userInfo => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserInfo.t() | nil,
          :visitorId => String.t() | nil
        }

  field(:attributes, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute, type: :map)
  field(:attributionToken)
  field(:cartId)
  field(:completionDetail, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompletionDetail)
  field(:eventTime, as: DateTime)
  field(:eventType)
  field(:experimentIds, type: :list)
  field(:filter)
  field(:offset)
  field(:orderBy)
  field(:pageCategories, type: :list)
  field(:pageViewId)

  field(:productDetails,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ProductDetail,
    type: :list
  )

  field(:purchaseTransaction, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurchaseTransaction)

  field(:referrerUri)
  field(:searchQuery)
  field(:sessionId)
  field(:uri)
  field(:userInfo, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserInfo)
  field(:visitorId)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserEvent do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
