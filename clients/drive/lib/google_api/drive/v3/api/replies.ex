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

defmodule GoogleApi.Drive.V3.Api.Replies do
  @moduledoc """
  API calls for all endpoints tagged `Replies`.
  """

  alias GoogleApi.Drive.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Creates a new reply to a comment.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `comment_id` (*type:* `String.t`) - The ID of the comment.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Drive.V3.Model.Reply.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Reply{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_replies_create(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Reply.t()} | {:error, Tesla.Env.t()}
  def drive_replies_create(connection, file_id, comment_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/drive/v3/files/{fileId}/comments/{commentId}/replies", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Reply{}])
  end

  @doc """
  Deletes a reply.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `comment_id` (*type:* `String.t`) - The ID of the comment.
  *   `reply_id` (*type:* `String.t`) - The ID of the reply.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_replies_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def drive_replies_delete(
        connection,
        file_id,
        comment_id,
        reply_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/drive/v3/files/{fileId}/comments/{commentId}/replies/{replyId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1),
        "replyId" => URI.encode(reply_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets a reply by ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `comment_id` (*type:* `String.t`) - The ID of the comment.
  *   `reply_id` (*type:* `String.t`) - The ID of the reply.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:includeDeleted` (*type:* `boolean()`) - Whether to return deleted replies. Deleted replies will not include their original content.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Reply{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_replies_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Drive.V3.Model.Reply.t()} | {:error, Tesla.Env.t()}
  def drive_replies_get(
        connection,
        file_id,
        comment_id,
        reply_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeDeleted => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}/comments/{commentId}/replies/{replyId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1),
        "replyId" => URI.encode(reply_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Reply{}])
  end

  @doc """
  Lists a comment's replies.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `comment_id` (*type:* `String.t`) - The ID of the comment.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:includeDeleted` (*type:* `boolean()`) - Whether to include deleted replies. Deleted replies will not include their original content.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of replies to return per page.
      *   `:pageToken` (*type:* `String.t`) - The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.ReplyList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_replies_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.ReplyList.t()} | {:error, Tesla.Env.t()}
  def drive_replies_list(connection, file_id, comment_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeDeleted => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}/comments/{commentId}/replies", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.ReplyList{}])
  end

  @doc """
  Updates a reply with patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `comment_id` (*type:* `String.t`) - The ID of the comment.
  *   `reply_id` (*type:* `String.t`) - The ID of the reply.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Drive.V3.Model.Reply.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Reply{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_replies_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Drive.V3.Model.Reply.t()} | {:error, Tesla.Env.t()}
  def drive_replies_update(
        connection,
        file_id,
        comment_id,
        reply_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/drive/v3/files/{fileId}/comments/{commentId}/replies/{replyId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1),
        "replyId" => URI.encode(reply_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Reply{}])
  end
end
