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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader do
  @moduledoc """
  Response header with metadata for the requested ReadFeatureValuesRequest.entity_type and Features.

  ## Attributes

  *   `entityType` (*type:* `String.t`, *default:* `nil`) - The resource name of the EntityType from the ReadFeatureValuesRequest. Value format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entityType}`.
  *   `featureDescriptors` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ReadFeatureValuesResponseFeatureDescriptor.t)`, *default:* `nil`) - List of Feature metadata corresponding to each piece of ReadFeatureValuesResponse.EntityView.data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityType => String.t() | nil,
          :featureDescriptors =>
            list(
              GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ReadFeatureValuesResponseFeatureDescriptor.t()
            )
            | nil
        }

  field(:entityType)

  field(:featureDescriptors,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ReadFeatureValuesResponseFeatureDescriptor,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
