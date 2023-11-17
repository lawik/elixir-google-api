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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame do
  @moduledoc """
  The fields `xMin`, `xMax`, `yMin`, and `yMax` refer to a bounding box, i.e. the rectangle over the video frame pinpointing the found AnnotationSpec. The coordinates are relative to the frame size, and the point 0,0 is in the top left of the frame.

  ## Attributes

  *   `timeOffset` (*type:* `String.t`, *default:* `nil`) - A time (frame) of a video in which the object has been detected. Expressed as a number of seconds as measured from the start of the video, with fractions up to a microsecond precision, and with "s" appended at the end.
  *   `xMax` (*type:* `number()`, *default:* `nil`) - The rightmost coordinate of the bounding box.
  *   `xMin` (*type:* `number()`, *default:* `nil`) - The leftmost coordinate of the bounding box.
  *   `yMax` (*type:* `number()`, *default:* `nil`) - The bottommost coordinate of the bounding box.
  *   `yMin` (*type:* `number()`, *default:* `nil`) - The topmost coordinate of the bounding box.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :timeOffset => String.t() | nil,
          :xMax => number() | nil,
          :xMin => number() | nil,
          :yMax => number() | nil,
          :yMin => number() | nil
        }

  field(:timeOffset)
  field(:xMax)
  field(:xMin)
  field(:yMax)
  field(:yMin)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
