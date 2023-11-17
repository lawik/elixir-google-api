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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesResponse do
  @moduledoc """
  Response message for TensorboardService.BatchCreateTensorboardTimeSeries.

  ## Attributes

  *   `tensorboardTimeSeries` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeries.t)`, *default:* `nil`) - The created TensorboardTimeSeries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tensorboardTimeSeries =>
            list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeries.t())
            | nil
        }

  field(:tensorboardTimeSeries,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeries,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesResponse do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
