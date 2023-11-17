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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrialDetail do
  @moduledoc """
  Represents a NasTrial details along with its parameters. If there is a corresponding train NasTrial, the train NasTrial is also returned.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the NasTrialDetail.
  *   `parameters` (*type:* `String.t`, *default:* `nil`) - The parameters for the NasJob NasTrial.
  *   `searchTrial` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrial.t`, *default:* `nil`) - The requested search NasTrial.
  *   `trainTrial` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrial.t`, *default:* `nil`) - The train NasTrial corresponding to search_trial. Only populated if search_trial is used for training.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :parameters => String.t() | nil,
          :searchTrial => GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrial.t() | nil,
          :trainTrial => GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrial.t() | nil
        }

  field(:name)
  field(:parameters)
  field(:searchTrial, as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrial)
  field(:trainTrial, as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrial)
end

defimpl Poison.Decoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrialDetail do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrialDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NasTrialDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
