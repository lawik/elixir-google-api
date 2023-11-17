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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequest do
  @moduledoc """
  Request message for FeaturestoreService.DeleteFeatureValues.

  ## Attributes

  *   `selectEntity` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity.t`, *default:* `nil`) - Select feature values to be deleted by specifying entities.
  *   `selectTimeRangeAndFeature` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectTimeRangeAndFeature.t`, *default:* `nil`) - Select feature values to be deleted by specifying time range and features.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :selectEntity =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity.t()
            | nil,
          :selectTimeRangeAndFeature =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectTimeRangeAndFeature.t()
            | nil
        }

  field(:selectEntity,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity
  )

  field(:selectTimeRangeAndFeature,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectTimeRangeAndFeature
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequest do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
