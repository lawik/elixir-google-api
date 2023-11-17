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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureGroupBigQuery do
  @moduledoc """
  Input source type for BigQuery Tables and Views.

  ## Attributes

  *   `bigQuerySource` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t`, *default:* `nil`) - Required. Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  *   `entityIdColumns` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigQuerySource =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t() | nil,
          :entityIdColumns => list(String.t()) | nil
        }

  field(:bigQuerySource, as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource)
  field(:entityIdColumns, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureGroupBigQuery do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureGroupBigQuery.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FeatureGroupBigQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
