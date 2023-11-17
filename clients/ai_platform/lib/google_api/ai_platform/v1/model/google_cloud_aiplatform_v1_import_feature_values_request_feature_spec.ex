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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec do
  @moduledoc """
  Defines the Feature value(s) to import.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. ID of the Feature to import values of. This Feature must exist in the target EntityType, or the request will fail.
  *   `sourceField` (*type:* `String.t`, *default:* `nil`) - Source column to get the Feature values from. If not set, uses the column with the same name as the Feature ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :sourceField => String.t() | nil
        }

  field(:id)
  field(:sourceField)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
