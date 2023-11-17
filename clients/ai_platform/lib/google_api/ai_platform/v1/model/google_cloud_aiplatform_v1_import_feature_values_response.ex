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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesResponse do
  @moduledoc """
  Response message for FeaturestoreService.ImportFeatureValues.

  ## Attributes

  *   `importedEntityCount` (*type:* `String.t`, *default:* `nil`) - Number of entities that have been imported by the operation.
  *   `importedFeatureValueCount` (*type:* `String.t`, *default:* `nil`) - Number of Feature values that have been imported by the operation.
  *   `invalidRowCount` (*type:* `String.t`, *default:* `nil`) - The number of rows in input source that weren't imported due to either * Not having any featureValues. * Having a null entityId. * Having a null timestamp. * Not being parsable (applicable for CSV sources).
  *   `timestampOutsideRetentionRowsCount` (*type:* `String.t`, *default:* `nil`) - The number rows that weren't ingested due to having feature timestamps outside the retention boundary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :importedEntityCount => String.t() | nil,
          :importedFeatureValueCount => String.t() | nil,
          :invalidRowCount => String.t() | nil,
          :timestampOutsideRetentionRowsCount => String.t() | nil
        }

  field(:importedEntityCount)
  field(:importedFeatureValueCount)
  field(:invalidRowCount)
  field(:timestampOutsideRetentionRowsCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesResponse do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
