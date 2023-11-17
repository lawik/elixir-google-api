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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion do
  @moduledoc """
  Represents one model Version in ml.googleapis.com.

  ## Attributes

  *   `endpoint` (*type:* `String.t`, *default:* `nil`) - The ml.googleapis.com endpoint that this model Version currently lives in. Example values: * ml.googleapis.com * us-centrall-ml.googleapis.com * europe-west4-ml.googleapis.com * asia-east1-ml.googleapis.com
  *   `version` (*type:* `String.t`, *default:* `nil`) - Full resource name of ml engine model Version. Format: `projects/{project}/models/{model}/versions/{version}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpoint => String.t() | nil,
          :version => String.t() | nil
        }

  field(:endpoint)
  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
