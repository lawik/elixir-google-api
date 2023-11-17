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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Execution do
  @moduledoc """
  Instance of a general execution.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Execution was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the Execution
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User provided display name of the Execution. May be up to 128 Unicode characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize your Executions. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Execution (System labels are excluded).
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Properties of the Execution. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Execution.
  *   `schemaTitle` (*type:* `String.t`, *default:* `nil`) - The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  *   `schemaVersion` (*type:* `String.t`, *default:* `nil`) - The version of the schema in `schema_title` to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of this Execution. This is a property of the Execution, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines) and the system does not prescribe or check the validity of state transitions.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Execution was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :metadata => map() | nil,
          :name => String.t() | nil,
          :schemaTitle => String.t() | nil,
          :schemaVersion => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:etag)
  field(:labels, type: :map)
  field(:metadata, type: :map)
  field(:name)
  field(:schemaTitle)
  field(:schemaVersion)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Execution do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Execution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Execution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
