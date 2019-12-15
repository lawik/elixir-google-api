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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelectItem do
  @moduledoc """
  An item in the list.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The main text describing the item.
  *   `image` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage.t`, *default:* `nil`) - Optional. The image to display.
  *   `info` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSelectItemInfo.t`, *default:* `nil`) - Required. Additional information about this option.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. The title of the list item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :image => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage.t(),
          :info =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSelectItemInfo.t(),
          :title => String.t()
        }

  field(:description)
  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage)

  field(:info,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSelectItemInfo
  )

  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelectItem do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelectItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageListSelectItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
