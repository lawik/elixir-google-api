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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute do
  @moduledoc """
  A transition route specifies a intent that can be matched and/or a data condition that can be evaluated during a session. When a specified transition is matched, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the transition, it will be called. * If there is a `target_page` associated with the transition, the session will transition into the specified page. * If there is a `target_flow` associated with the transition, the session will transition into the specified flow.

  ## Attributes

  *   `condition` (*type:* `String.t`, *default:* `nil`) - The condition to evaluate against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition). At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  *   `intent` (*type:* `String.t`, *default:* `nil`) - The unique identifier of an Intent. Format: `projects//locations//agents//intents/`. Indicates that the transition can only happen when the given intent is matched. At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of this transition route.
  *   `targetFlow` (*type:* `String.t`, *default:* `nil`) - The target flow to transition to. Format: `projects//locations//agents//flows/`.
  *   `targetPage` (*type:* `String.t`, *default:* `nil`) - The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  *   `triggerFulfillment` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment.t`, *default:* `nil`) - The fulfillment to call when the condition is satisfied. At least one of `trigger_fulfillment` and `target` must be specified. When both are defined, `trigger_fulfillment` is executed first.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => String.t() | nil,
          :intent => String.t() | nil,
          :name => String.t() | nil,
          :targetFlow => String.t() | nil,
          :targetPage => String.t() | nil,
          :triggerFulfillment =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment.t() | nil
        }

  field(:condition)
  field(:intent)
  field(:name)
  field(:targetFlow)
  field(:targetPage)

  field(:triggerFulfillment,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
