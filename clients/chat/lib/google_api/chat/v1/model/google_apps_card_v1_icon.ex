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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon do
  @moduledoc """
  An icon displayed in a widget on a card. For an example in Google Chat apps, see [Icon](https://developers.google.com/chat/ui/widgets/icon). Supports [built-in](https://developers.google.com/chat/format-messages#builtinicons) and [custom](https://developers.google.com/chat/format-messages#customicons) icons.

  ## Attributes

  *   `altText` (*type:* `String.t`, *default:* `nil`) - Optional. A description of the icon used for accessibility. If unspecified, the default value `Button` is provided. As a best practice, you should set a helpful description for what the icon displays, and if applicable, what it does. For example, `A user's account portrait`, or `Opens a new browser tab and navigates to the Google Chat developer documentation at https://developers.google.com/chat`. If the icon is set in a `Button`, the `altText` appears as helper text when the user hovers over the button. However, if the button also sets `text`, the icon's `altText` is ignored.
  *   `iconUrl` (*type:* `String.t`, *default:* `nil`) - Display a custom icon hosted at an HTTPS URL. For example: ``` "iconUrl": "https://developers.google.com/chat/images/quickstart-app-avatar.png" ``` Supported file types include `.png` and `.jpg`.
  *   `imageType` (*type:* `String.t`, *default:* `nil`) - The crop style applied to the image. In some cases, applying a `CIRCLE` crop causes the image to be drawn larger than a built-in icon.
  *   `knownIcon` (*type:* `String.t`, *default:* `nil`) - Display one of the built-in icons provided by Google Workspace. For example, to display an airplane icon, specify `AIRPLANE`. For a bus, specify `BUS`. For a full list of supported icons, see [built-in icons](https://developers.google.com/chat/format-messages#builtinicons).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altText => String.t() | nil,
          :iconUrl => String.t() | nil,
          :imageType => String.t() | nil,
          :knownIcon => String.t() | nil
        }

  field(:altText)
  field(:iconUrl)
  field(:imageType)
  field(:knownIcon)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
