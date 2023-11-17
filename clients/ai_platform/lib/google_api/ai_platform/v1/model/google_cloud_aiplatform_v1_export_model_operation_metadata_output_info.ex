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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo do
  @moduledoc """
  Further describes the output of the ExportModel. Supplements ExportModelRequest.OutputConfig.

  ## Attributes

  *   `artifactOutputUri` (*type:* `String.t`, *default:* `nil`) - Output only. If the Model artifact is being exported to Google Cloud Storage this is the full path of the directory created, into which the Model files are being written to.
  *   `imageOutputUri` (*type:* `String.t`, *default:* `nil`) - Output only. If the Model image is being exported to Google Container Registry or Artifact Registry this is the full path of the image created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactOutputUri => String.t() | nil,
          :imageOutputUri => String.t() | nil
        }

  field(:artifactOutputUri)
  field(:imageOutputUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
