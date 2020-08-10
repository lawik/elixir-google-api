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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun do
  @moduledoc """
  Represents a data transfer run.

  ## Attributes

  *   `dataSourceId` (*type:* `String.t`, *default:* `nil`) - Output only. Data source id.
  *   `destinationDatasetId` (*type:* `String.t`, *default:* `nil`) - Output only. The BigQuery target dataset id.
  *   `emailPreferences` (*type:* `GoogleApi.BigQueryDataTransfer.V1.Model.EmailPreferences.t`, *default:* `nil`) - Output only. Email notifications will be sent according to these preferences to the email address of the user who owns the transfer config this run was derived from.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when transfer run ended. Parameter ignored by server for input requests.
  *   `errorStatus` (*type:* `GoogleApi.BigQueryDataTransfer.V1.Model.Status.t`, *default:* `nil`) - Status of the transfer run.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the transfer run. Transfer run names have the form `projects/{project_id}/locations/{location}/transferConfigs/{config_id}/runs/{run_id}`. The name is ignored when creating a transfer run.
  *   `notificationPubsubTopic` (*type:* `String.t`, *default:* `nil`) - Output only. Pub/Sub topic where a notification will be sent after this transfer run finishes
  *   `params` (*type:* `map()`, *default:* `nil`) - Output only. Data transfer specific parameters.
  *   `runTime` (*type:* `DateTime.t`, *default:* `nil`) - For batch transfer runs, specifies the date and time of the data should be ingested.
  *   `schedule` (*type:* `String.t`, *default:* `nil`) - Output only. Describes the schedule of this transfer run if it was created as part of a regular schedule. For batch transfer runs that are scheduled manually, this is empty. NOTE: the system might choose to delay the schedule depending on the current load, so `schedule_time` doesn't always match this.
  *   `scheduleTime` (*type:* `DateTime.t`, *default:* `nil`) - Minimum time after which a transfer run can be started.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when transfer run was started. Parameter ignored by server for input requests.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Data transfer run state. Ignored for input requests.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last time the data transfer run state was updated.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Deprecated. Unique ID of the user on whose behalf transfer is done.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceId => String.t(),
          :destinationDatasetId => String.t(),
          :emailPreferences => GoogleApi.BigQueryDataTransfer.V1.Model.EmailPreferences.t(),
          :endTime => DateTime.t(),
          :errorStatus => GoogleApi.BigQueryDataTransfer.V1.Model.Status.t(),
          :name => String.t(),
          :notificationPubsubTopic => String.t(),
          :params => map(),
          :runTime => DateTime.t(),
          :schedule => String.t(),
          :scheduleTime => DateTime.t(),
          :startTime => DateTime.t(),
          :state => String.t(),
          :updateTime => DateTime.t(),
          :userId => String.t()
        }

  field(:dataSourceId)
  field(:destinationDatasetId)
  field(:emailPreferences, as: GoogleApi.BigQueryDataTransfer.V1.Model.EmailPreferences)
  field(:endTime, as: DateTime)
  field(:errorStatus, as: GoogleApi.BigQueryDataTransfer.V1.Model.Status)
  field(:name)
  field(:notificationPubsubTopic)
  field(:params, type: :map)
  field(:runTime, as: DateTime)
  field(:schedule)
  field(:scheduleTime, as: DateTime)
  field(:startTime, as: DateTime)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
