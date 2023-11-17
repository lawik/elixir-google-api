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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1LargeModelReference do
  @moduledoc """
  Contains information about the Large Model.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The unique name of the large Foundation or pre-built model. Like "chat-bison", "text-bison". Or model name with version ID, like "chat-bison@001", "text-bison@005", etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil
        }

  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1LargeModelReference do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1LargeModelReference.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1LargeModelReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
