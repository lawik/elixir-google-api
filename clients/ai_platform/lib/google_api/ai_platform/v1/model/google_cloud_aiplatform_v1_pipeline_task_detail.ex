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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetail do
  @moduledoc """
  The runtime detail of a task execution.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Task create time.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Task end time.
  *   `error` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - Output only. The error that occurred during task execution. Only populated when the task's state is FAILED or CANCELLED.
  *   `execution` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Execution.t`, *default:* `nil`) - Output only. The execution metadata of the task.
  *   `executorDetail` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetail.t`, *default:* `nil`) - Output only. The detailed execution info.
  *   `inputs` (*type:* `%{optional(String.t) => GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailArtifactList.t}`, *default:* `nil`) - Output only. The runtime input artifacts of the task.
  *   `outputs` (*type:* `%{optional(String.t) => GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailArtifactList.t}`, *default:* `nil`) - Output only. The runtime output artifacts of the task.
  *   `parentTaskId` (*type:* `String.t`, *default:* `nil`) - Output only. The id of the parent task if the task is within a component scope. Empty if the task is at the root level.
  *   `pipelineTaskStatus` (*type:* `list(GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatus.t)`, *default:* `nil`) - Output only. A list of task status. This field keeps a record of task status evolving over time.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Task start time.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the task.
  *   `taskId` (*type:* `String.t`, *default:* `nil`) - Output only. The system generated ID of the task.
  *   `taskName` (*type:* `String.t`, *default:* `nil`) - Output only. The user specified name of the task that is defined in pipeline_spec.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :error => GoogleApi.AiPlatform.V1.Model.GoogleRpcStatus.t() | nil,
          :execution => GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Execution.t() | nil,
          :executorDetail =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetail.t()
            | nil,
          :inputs =>
            %{
              optional(String.t()) =>
                GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailArtifactList.t()
            }
            | nil,
          :outputs =>
            %{
              optional(String.t()) =>
                GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailArtifactList.t()
            }
            | nil,
          :parentTaskId => String.t() | nil,
          :pipelineTaskStatus =>
            list(
              GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatus.t()
            )
            | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :taskId => String.t() | nil,
          :taskName => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.AiPlatform.V1.Model.GoogleRpcStatus)
  field(:execution, as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1Execution)

  field(:executorDetail,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetail
  )

  field(:inputs,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailArtifactList,
    type: :map
  )

  field(:outputs,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailArtifactList,
    type: :map
  )

  field(:parentTaskId)

  field(:pipelineTaskStatus,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatus,
    type: :list
  )

  field(:startTime, as: DateTime)
  field(:state)
  field(:taskId)
  field(:taskName)
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetail do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetail.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
