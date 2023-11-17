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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceAutomlModel do
  @moduledoc """
  Represents one Model in automl.googleapis.com.

  ## Attributes

  *   `model` (*type:* `String.t`, *default:* `nil`) - Full resource name of automl Model. Format: `projects/{project}/locations/{location}/models/{model}`.
  *   `modelDisplayName` (*type:* `String.t`, *default:* `nil`) - The Model's display name in automl.googleapis.com.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :model => String.t() | nil,
          :modelDisplayName => String.t() | nil
        }

  field(:model)
  field(:modelDisplayName)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceAutomlModel do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceAutomlModel.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceAutomlModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
