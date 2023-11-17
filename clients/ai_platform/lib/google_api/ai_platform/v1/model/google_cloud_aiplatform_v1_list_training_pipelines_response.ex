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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListTrainingPipelinesResponse do
  @moduledoc """
  Response message for PipelineService.ListTrainingPipelines

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results. Pass to ListTrainingPipelinesRequest.page_token to obtain that page.
  *   `trainingPipelines` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1TrainingPipeline.t)`, *default:* `nil`) - List of TrainingPipelines in the requested page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :trainingPipelines =>
            list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1TrainingPipeline.t()) | nil
        }

  field(:nextPageToken)

  field(:trainingPipelines,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1TrainingPipeline,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListTrainingPipelinesResponse do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListTrainingPipelinesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ListTrainingPipelinesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
