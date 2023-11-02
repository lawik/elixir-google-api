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

defmodule GoogleApi.Chat.V1.Model.ActionResponse do
  @moduledoc """
  Parameters that a Chat app can use to configure how its response is posted.

  ## Attributes

  *   `dialogAction` (*type:* `GoogleApi.Chat.V1.Model.DialogAction.t`, *default:* `nil`) - Input only. A response to an event related to a [dialog](https://developers.google.com/chat/how-tos/dialogs). Must be accompanied by `ResponseType.Dialog`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Input only. The type of Chat app response.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Input only. URL for users to authenticate or configure. (Only for `REQUEST_CONFIG` response types.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dialogAction => GoogleApi.Chat.V1.Model.DialogAction.t() | nil,
          :type => String.t() | nil,
          :url => String.t() | nil
        }

  field(:dialogAction, as: GoogleApi.Chat.V1.Model.DialogAction)
  field(:type)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.ActionResponse do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.ActionResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.ActionResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
