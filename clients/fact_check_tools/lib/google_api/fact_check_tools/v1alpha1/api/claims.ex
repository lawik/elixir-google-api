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

defmodule GoogleApi.FactCheckTools.V1alpha1.Api.Claims do
  @moduledoc """
  API calls for all endpoints tagged `Claims`.
  """

  alias GoogleApi.FactCheckTools.V1alpha1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Search through fact-checked claims.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FactCheckTools.V1alpha1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:languageCode` (*type:* `String.t`) - The BCP-47 language code, such as "en-US" or "sr-Latn". Can be used to restrict results by language, though we do not currently consider the region.
      *   `:maxAgeDays` (*type:* `integer()`) - The maximum age of the returned search results, in days. Age is determined by either claim date or review date, whichever is newer.
      *   `:offset` (*type:* `integer()`) - An integer that specifies the current offset (that is, starting result location) in search results. This field is only considered if `page_token` is unset. For example, 0 means to return results starting from the first matching result, and 10 means to return from the 11th result.
      *   `:pageSize` (*type:* `integer()`) - The pagination size. We will return up to that many results. Defaults to 10 if not set.
      *   `:pageToken` (*type:* `String.t`) - The pagination token. You may provide the `next_page_token` returned from a previous List request, if any, in order to get the next page. All other fields must have the same values as in the previous request.
      *   `:query` (*type:* `String.t`) - Textual query string. Required unless `review_publisher_site_filter` is specified.
      *   `:reviewPublisherSiteFilter` (*type:* `String.t`) - The review publisher site to filter results by, e.g. nytimes.com.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec factchecktools_claims_search(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def factchecktools_claims_search(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :languageCode => :query,
      :maxAgeDays => :query,
      :offset => :query,
      :pageSize => :query,
      :pageToken => :query,
      :query => :query,
      :reviewPublisherSiteFilter => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha1/claims:search", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse{}
        ]
    )
  end
end
