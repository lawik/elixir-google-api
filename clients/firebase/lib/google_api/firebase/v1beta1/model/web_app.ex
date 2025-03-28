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

defmodule GoogleApi.Firebase.V1beta1.Model.WebApp do
  @moduledoc """
  Details of a Firebase App for the web.

  ## Attributes

  *   `apiKeyId` (*type:* `String.t`, *default:* `nil`) - The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `WebApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.webApps/getConfig). If `api_key_id` is not set in requests to [`webApps.Create`](../../rest/v1beta1/projects.webApps/create), then Firebase automatically associates an `api_key_id` with the `WebApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `WebApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  *   `appId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  *   `appUrls` (*type:* `list(String.t)`, *default:* `nil`) - The URLs where the `WebApp` is hosted.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-assigned display name for the `WebApp`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.webApps#WebApp.FIELDS.app_id)).
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `WebApp`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The lifecycle state of the App.
  *   `webId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. A unique, Firebase-assigned identifier for the `WebApp`. This identifier is only used to populate the `namespace` value for the `WebApp`. For most use cases, use `appId` to identify or reference the App. The `webId` value is only unique within a `FirebaseProject` and its associated Apps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiKeyId => String.t() | nil,
          :appId => String.t() | nil,
          :appUrls => list(String.t()) | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :projectId => String.t() | nil,
          :state => String.t() | nil,
          :webId => String.t() | nil
        }

  field(:apiKeyId)
  field(:appId)
  field(:appUrls, type: :list)
  field(:displayName)
  field(:name)
  field(:projectId)
  field(:state)
  field(:webId)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.WebApp do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.WebApp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.WebApp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
