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

defmodule GoogleApi.Firebase.V1beta1.Model.AndroidApp do
  @moduledoc """
  Details of a Firebase App for Android.

  ## Attributes

  *   `apiKeyId` (*type:* `String.t`, *default:* `nil`) - The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `AndroidApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.androidApps/getConfig). If `api_key_id` is not set in requests to [`androidApps.Create`](../../rest/v1beta1/projects.androidApps/create), then Firebase automatically associates an `api_key_id` with the `AndroidApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `AndroidApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  *   `appId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The globally unique, Firebase-assigned identifier for the `AndroidApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-assigned display name for the `AndroidApp`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Immutable. The canonical package name of the Android app as would appear in the Google Play Developer Console.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `AndroidApp`.
  *   `sha1Hashes` (*type:* `list(String.t)`, *default:* `nil`) - The SHA1 certificate hashes for the AndroidApp.
  *   `sha256Hashes` (*type:* `list(String.t)`, *default:* `nil`) - The SHA256 certificate hashes for the AndroidApp.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The lifecycle state of the App.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiKeyId => String.t() | nil,
          :appId => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :packageName => String.t() | nil,
          :projectId => String.t() | nil,
          :sha1Hashes => list(String.t()) | nil,
          :sha256Hashes => list(String.t()) | nil,
          :state => String.t() | nil
        }

  field(:apiKeyId)
  field(:appId)
  field(:displayName)
  field(:name)
  field(:packageName)
  field(:projectId)
  field(:sha1Hashes, type: :list)
  field(:sha256Hashes, type: :list)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.AndroidApp do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.AndroidApp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.AndroidApp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
