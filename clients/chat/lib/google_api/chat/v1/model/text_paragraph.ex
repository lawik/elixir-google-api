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

defmodule GoogleApi.Chat.V1.Model.TextParagraph do
  @moduledoc """
  A paragraph of text. Formatted text supported. For more information about formatting text, see [Formatting text in Google Chat apps](https://developers.google.com/chat/format-messages#card-formatting) and [Formatting text in Google Workspace Add-ons](https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting).

  ## Attributes

  *   `text` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :text => String.t() | nil
        }

  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.TextParagraph do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.TextParagraph.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.TextParagraph do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
