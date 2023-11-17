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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Measurement do
  @moduledoc """
  A message representing a Measurement of a Trial. A Measurement contains the Metrics got by executing a Trial using suggested hyperparameter values.

  ## Attributes

  *   `elapsedDuration` (*type:* `String.t`, *default:* `nil`) - Output only. Time that the Trial has been running at the point of this Measurement.
  *   `metrics` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MeasurementMetric.t)`, *default:* `nil`) - Output only. A list of metrics got by evaluating the objective functions using suggested Parameter values.
  *   `stepCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of steps the machine learning model has been trained for. Must be non-negative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :elapsedDuration => String.t() | nil,
          :metrics =>
            list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MeasurementMetric.t()) | nil,
          :stepCount => String.t() | nil
        }

  field(:elapsedDuration)

  field(:metrics,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MeasurementMetric,
    type: :list
  )

  field(:stepCount)
end

defimpl Poison.Decoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Measurement do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Measurement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Measurement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
