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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequest do
  @moduledoc """
  Request message for JobService.SearchModelDeploymentMonitoringStatsAnomalies.

  ## Attributes

  *   `deployedModelId` (*type:* `String.t`, *default:* `nil`) - Required. The DeployedModel ID of the [ModelDeploymentMonitoringObjectiveConfig.deployed_model_id].
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The latest timestamp of stats being generated. If not set, indicates feching stats till the latest possible one.
  *   `featureDisplayName` (*type:* `String.t`, *default:* `nil`) - The feature display name. If specified, only return the stats belonging to this feature. Format: ModelMonitoringStatsAnomalies.FeatureHistoricStatsAnomalies.feature_display_name, example: "user_destination".
  *   `objectives` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequestStatsAnomaliesObjective.t)`, *default:* `nil`) - Required. Objectives of the stats to retrieve.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The standard list page size.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A page token received from a previous JobService.SearchModelDeploymentMonitoringStatsAnomalies call.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The earliest timestamp of stats being generated. If not set, indicates fetching stats till the earliest possible one.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployedModelId => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :featureDisplayName => String.t() | nil,
          :objectives =>
            list(
              GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequestStatsAnomaliesObjective.t()
            )
            | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:deployedModelId)
  field(:endTime, as: DateTime)
  field(:featureDisplayName)

  field(:objectives,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequestStatsAnomaliesObjective,
    type: :list
  )

  field(:pageSize)
  field(:pageToken)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequest do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
