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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1AssignNotebookRuntimeRequest do
  @moduledoc """
  Request message for NotebookService.AssignNotebookRuntime.

  ## Attributes

  *   `notebookRuntime` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntime.t`, *default:* `nil`) - Required. Provide runtime specific information (e.g. runtime owner, notebook id) used for NotebookRuntime assignment.
  *   `notebookRuntimeId` (*type:* `String.t`, *default:* `nil`) - Optional. User specified ID for the notebook runtime.
  *   `notebookRuntimeTemplate` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the NotebookRuntimeTemplate based on which a NotebookRuntime will be assigned (reuse or create a new one).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :notebookRuntime =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntime.t() | nil,
          :notebookRuntimeId => String.t() | nil,
          :notebookRuntimeTemplate => String.t() | nil
        }

  field(:notebookRuntime, as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntime)

  field(:notebookRuntimeId)
  field(:notebookRuntimeTemplate)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1AssignNotebookRuntimeRequest do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1AssignNotebookRuntimeRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1AssignNotebookRuntimeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
