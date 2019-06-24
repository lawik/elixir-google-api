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

defmodule GoogleApi.AdSense.V14.Model.SavedAdStyle do
  @moduledoc """


  ## Attributes

  *   `adStyle` (*type:* `GoogleApi.AdSense.V14.Model.AdStyle.t`, *default:* `nil`) - The AdStyle itself.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier of this saved ad style. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
  *   `kind` (*type:* `String.t`, *default:* `adsense#savedAdStyle`) - Kind of resource this is, in this case adsense#savedAdStyle.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The user selected name of this SavedAdStyle.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adStyle => GoogleApi.AdSense.V14.Model.AdStyle.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t()
        }

  field(:adStyle, as: GoogleApi.AdSense.V14.Model.AdStyle)
  field(:id)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.SavedAdStyle do
  def decode(value, options) do
    GoogleApi.AdSense.V14.Model.SavedAdStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.SavedAdStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
