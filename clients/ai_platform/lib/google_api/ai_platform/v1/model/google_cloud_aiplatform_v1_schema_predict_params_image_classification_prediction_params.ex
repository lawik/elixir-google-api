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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsImageClassificationPredictionParams do
  @moduledoc """
  Prediction model parameters for Image Classification.

  ## Attributes

  *   `confidenceThreshold` (*type:* `number()`, *default:* `nil`) - The Model only returns predictions with at least this confidence score. Default value is 0.0
  *   `maxPredictions` (*type:* `integer()`, *default:* `nil`) - The Model only returns up to that many top, by confidence score, predictions per instance. If this number is very high, the Model may return fewer predictions. Default value is 10.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceThreshold => number() | nil,
          :maxPredictions => integer() | nil
        }

  field(:confidenceThreshold)
  field(:maxPredictions)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsImageClassificationPredictionParams do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsImageClassificationPredictionParams.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictParamsImageClassificationPredictionParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
