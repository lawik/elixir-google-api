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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictInstanceImageObjectDetectionPredictionInstance do
  @moduledoc """
  Prediction input format for Image Object Detection.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - The image bytes or Cloud Storage URI to make the prediction on.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The MIME type of the content of the image. Only the images in below listed MIME types are supported. - image/jpeg - image/gif - image/png - image/webp - image/bmp - image/tiff - image/vnd.microsoft.icon
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t() | nil,
          :mimeType => String.t() | nil
        }

  field(:content)
  field(:mimeType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictInstanceImageObjectDetectionPredictionInstance do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictInstanceImageObjectDetectionPredictionInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictInstanceImageObjectDetectionPredictionInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
