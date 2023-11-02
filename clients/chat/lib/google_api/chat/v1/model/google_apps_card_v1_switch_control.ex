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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1SwitchControl do
  @moduledoc """
  Either a toggle-style switch or a checkbox inside a `decoratedText` widget. Only supported in the `decoratedText` widget.

  ## Attributes

  *   `controlType` (*type:* `String.t`, *default:* `nil`) - How the switch appears in the user interface.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name by which the switch widget is identified in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/ui/read-form-data).
  *   `onChangeAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - The action to perform when the switch state is changed, such as what function to run.
  *   `selected` (*type:* `boolean()`, *default:* `nil`) - When `true`, the switch is selected.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value entered by a user, returned as part of a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/ui/read-form-data).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :controlType => String.t() | nil,
          :name => String.t() | nil,
          :onChangeAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :selected => boolean() | nil,
          :value => String.t() | nil
        }

  field(:controlType)
  field(:name)
  field(:onChangeAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:selected)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1SwitchControl do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1SwitchControl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1SwitchControl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
