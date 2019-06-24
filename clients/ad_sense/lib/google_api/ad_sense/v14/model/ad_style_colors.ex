# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdSense.V14.Model.AdStyleColors do
  @moduledoc """
  The colors which are included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash.

  ## Attributes

  *   `background` (*type:* `String.t`, *default:* `nil`) - The color of the ad background.
  *   `border` (*type:* `String.t`, *default:* `nil`) - The color of the ad border.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The color of the ad text.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The color of the ad title.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The color of the ad url.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :background => String.t(),
          :border => String.t(),
          :text => String.t(),
          :title => String.t(),
          :url => String.t()
        }

  field(:background)
  field(:border)
  field(:text)
  field(:title)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.AdStyleColors do
  def decode(value, options) do
    GoogleApi.AdSense.V14.Model.AdStyleColors.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.AdStyleColors do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
