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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTextSentimentAnnotation do
  @moduledoc """
  Annotation details specific to text sentiment.

  ## Attributes

  *   `annotationSpecId` (*type:* `String.t`, *default:* `nil`) - The resource Id of the AnnotationSpec that this Annotation pertains to.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the AnnotationSpec that this Annotation pertains to.
  *   `sentiment` (*type:* `integer()`, *default:* `nil`) - The sentiment score for text.
  *   `sentimentMax` (*type:* `integer()`, *default:* `nil`) - The sentiment max score for text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationSpecId => String.t() | nil,
          :displayName => String.t() | nil,
          :sentiment => integer() | nil,
          :sentimentMax => integer() | nil
        }

  field(:annotationSpecId)
  field(:displayName)
  field(:sentiment)
  field(:sentimentMax)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTextSentimentAnnotation do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTextSentimentAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTextSentimentAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
