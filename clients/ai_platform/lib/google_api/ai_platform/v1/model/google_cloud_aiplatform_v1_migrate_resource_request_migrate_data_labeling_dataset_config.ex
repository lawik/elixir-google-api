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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig do
  @moduledoc """
  Config for migrating Dataset in datalabeling.googleapis.com to Vertex AI's Dataset.

  ## Attributes

  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Required. Full resource name of data labeling Dataset. Format: `projects/{project}/datasets/{dataset}`.
  *   `datasetDisplayName` (*type:* `String.t`, *default:* `nil`) - Optional. Display name of the Dataset in Vertex AI. System will pick a display name if unspecified.
  *   `migrateDataLabelingAnnotatedDatasetConfigs` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfigMigrateDataLabelingAnnotatedDatasetConfig.t)`, *default:* `nil`) - Optional. Configs for migrating AnnotatedDataset in datalabeling.googleapis.com to Vertex AI's SavedQuery. The specified AnnotatedDatasets have to belong to the datalabeling Dataset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset => String.t() | nil,
          :datasetDisplayName => String.t() | nil,
          :migrateDataLabelingAnnotatedDatasetConfigs =>
            list(
              GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfigMigrateDataLabelingAnnotatedDatasetConfig.t()
            )
            | nil
        }

  field(:dataset)
  field(:datasetDisplayName)

  field(:migrateDataLabelingAnnotatedDatasetConfigs,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfigMigrateDataLabelingAnnotatedDatasetConfig,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
