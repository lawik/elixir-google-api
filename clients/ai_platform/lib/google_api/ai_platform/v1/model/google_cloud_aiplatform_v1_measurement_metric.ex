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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MeasurementMetric do
  @moduledoc """
  A message representing a metric in the measurement.

  ## Attributes

  *   `metricId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the Metric. The Metric should be defined in StudySpec's Metrics.
  *   `value` (*type:* `float()`, *default:* `nil`) - Output only. The value for this metric.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metricId => String.t() | nil,
          :value => float() | nil
        }

  field(:metricId)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MeasurementMetric do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MeasurementMetric.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MeasurementMetric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
