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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesRequest do
  @moduledoc """
  Request message for MigrationService.SearchMigratableResources.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - A filter for your search. You can use the following types of filters: * Resource type filters. The following strings filter for a specific type of MigratableResource: * `ml_engine_model_version:*` * `automl_model:*` * `automl_dataset:*` * `data_labeling_dataset:*` * "Migrated or not" filters. The following strings filter for resources that either have or have not already been migrated: * `last_migrate_time:*` filters for migrated resources. * `NOT last_migrate_time:*` filters for not yet migrated resources.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The standard page size. The default and maximum value is 100.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - The standard page token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil
        }

  field(:filter)
  field(:pageSize)
  field(:pageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesRequest do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SearchMigratableResourcesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
