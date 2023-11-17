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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoClassificationPredictionResult do
  @moduledoc """
  Prediction output format for Video Classification.

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - The Model's confidence in correction of this prediction, higher value means higher confidence.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the AnnotationSpec that had been identified.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The resource ID of the AnnotationSpec that had been identified.
  *   `timeSegmentEnd` (*type:* `String.t`, *default:* `nil`) - The end, exclusive, of the video's time segment in which the AnnotationSpec has been identified. Expressed as a number of seconds as measured from the start of the video, with fractions up to a microsecond precision, and with "s" appended at the end. Note that for 'segment-classification' prediction type, this equals the original 'timeSegmentEnd' from the input instance, for other types it is the end of a shot or a 1 second interval respectively.
  *   `timeSegmentStart` (*type:* `String.t`, *default:* `nil`) - The beginning, inclusive, of the video's time segment in which the AnnotationSpec has been identified. Expressed as a number of seconds as measured from the start of the video, with fractions up to a microsecond precision, and with "s" appended at the end. Note that for 'segment-classification' prediction type, this equals the original 'timeSegmentStart' from the input instance, for other types it is the start of a shot or a 1 second interval respectively.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the prediction. The requested types can be configured via parameters. This will be one of - segment-classification - shot-classification - one-sec-interval-classification
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :displayName => String.t() | nil,
          :id => String.t() | nil,
          :timeSegmentEnd => String.t() | nil,
          :timeSegmentStart => String.t() | nil,
          :type => String.t() | nil
        }

  field(:confidence)
  field(:displayName)
  field(:id)
  field(:timeSegmentEnd)
  field(:timeSegmentStart)
  field(:type)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoClassificationPredictionResult do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoClassificationPredictionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoClassificationPredictionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
