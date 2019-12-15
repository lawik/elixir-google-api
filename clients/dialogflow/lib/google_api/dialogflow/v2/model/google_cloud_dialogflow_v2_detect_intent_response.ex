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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentResponse do
  @moduledoc """
  The message returned from the DetectIntent method.

  ## Attributes

  *   `outputAudio` (*type:* `String.t`, *default:* `nil`) - The audio data bytes encoded as specified in the request.
      Note: The output audio is generated based on the values of default platform
      text responses found in the `query_result.fulfillment_messages` field. If
      multiple default text responses exist, they will be concatenated when
      generating audio. If no default platform text responses exist, the
      generated audio content will be empty.
  *   `outputAudioConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig.t`, *default:* `nil`) - The config used by the speech synthesizer to generate the output audio.
  *   `queryResult` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult.t`, *default:* `nil`) - The selected results of the conversational query or event processing.
      See `alternative_query_results` for additional potential results.
  *   `responseId` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the response. It can be used to
      locate a response in the training example set or for reporting issues.
  *   `webhookStatus` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t`, *default:* `nil`) - Specifies the status of the webhook request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :outputAudio => String.t(),
          :outputAudioConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig.t(),
          :queryResult => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult.t(),
          :responseId => String.t(),
          :webhookStatus => GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t()
        }

  field(:outputAudio)

  field(:outputAudioConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig
  )

  field(:queryResult, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult)
  field(:responseId)
  field(:webhookStatus, as: GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
