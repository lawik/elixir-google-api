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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PublisherModel do
  @moduledoc """
  A Model Garden Publisher Model.

  ## Attributes

  *   `frameworks` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Additional information about the model's Frameworks.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Optional. Indicates the launch stage of the model.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the PublisherModel.
  *   `openSourceCategory` (*type:* `String.t`, *default:* `nil`) - Required. Indicates the open source category of the publisher model.
  *   `predictSchemata` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PredictSchemata.t`, *default:* `nil`) - Optional. The schemata that describes formats of the PublisherModel's predictions and explanations as given and returned via PredictionService.Predict.
  *   `publisherModelTemplate` (*type:* `String.t`, *default:* `nil`) - Optional. Output only. Immutable. Used to indicate this model has a publisher model and provide the template of the publisher model resource name.
  *   `supportedActions` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PublisherModelCallToAction.t`, *default:* `nil`) - Optional. Supported call-to-action options.
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The version ID of the PublisherModel. A new version is committed when a new model version is uploaded under an existing model id. It is an auto-incrementing decimal number in string representation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :frameworks => list(String.t()) | nil,
          :launchStage => String.t() | nil,
          :name => String.t() | nil,
          :openSourceCategory => String.t() | nil,
          :predictSchemata =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PredictSchemata.t() | nil,
          :publisherModelTemplate => String.t() | nil,
          :supportedActions =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PublisherModelCallToAction.t()
            | nil,
          :versionId => String.t() | nil
        }

  field(:frameworks, type: :list)
  field(:launchStage)
  field(:name)
  field(:openSourceCategory)

  field(:predictSchemata, as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PredictSchemata)

  field(:publisherModelTemplate)

  field(:supportedActions,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PublisherModelCallToAction
  )

  field(:versionId)
end

defimpl Poison.Decoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PublisherModel do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PublisherModel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PublisherModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
