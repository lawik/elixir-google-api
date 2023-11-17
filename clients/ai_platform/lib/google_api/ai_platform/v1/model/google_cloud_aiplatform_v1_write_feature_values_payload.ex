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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1WriteFeatureValuesPayload do
  @moduledoc """
  Contains Feature values to be written for a specific entity.

  ## Attributes

  *   `entityId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the entity.
  *   `featureValues` (*type:* `%{optional(String.t) => GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureValue.t}`, *default:* `nil`) - Required. Feature values to be written, mapping from Feature ID to value. Up to 100,000 `feature_values` entries may be written across all payloads. The feature generation time, aligned by days, must be no older than five years (1825 days) and no later than one year (366 days) in the future.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityId => String.t() | nil,
          :featureValues =>
            %{
              optional(String.t()) =>
                GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureValue.t()
            }
            | nil
        }

  field(:entityId)

  field(:featureValues,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureValue,
    type: :map
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1WriteFeatureValuesPayload do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1WriteFeatureValuesPayload.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1WriteFeatureValuesPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
