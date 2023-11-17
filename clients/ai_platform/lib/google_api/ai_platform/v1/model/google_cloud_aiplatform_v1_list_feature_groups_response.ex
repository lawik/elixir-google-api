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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListFeatureGroupsResponse do
  @moduledoc """
  Response message for FeatureRegistryService.ListFeatureGroups.

  ## Attributes

  *   `featureGroups` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureGroup.t)`, *default:* `nil`) - The FeatureGroups matching the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as ListFeatureGroupsRequest.page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :featureGroups =>
            list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureGroup.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:featureGroups,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureGroup,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListFeatureGroupsResponse do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListFeatureGroupsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListFeatureGroupsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
