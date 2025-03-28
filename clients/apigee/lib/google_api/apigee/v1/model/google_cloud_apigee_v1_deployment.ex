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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Deployment do
  @moduledoc """


  ## Attributes

  *   `apiProxy` (*type:* `String.t`, *default:* `nil`) - API proxy.
  *   `deployStartTime` (*type:* `String.t`, *default:* `nil`) - Time the API proxy was marked `deployed` in the control plane in millisconds since epoch.
  *   `environment` (*type:* `String.t`, *default:* `nil`) - Environment.
  *   `errors` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Errors reported for this deployment. Populated only when state == ERROR. **Note**: This field is displayed only when viewing deployment status.
  *   `instances` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatus.t)`, *default:* `nil`) - Status reported by each runtime instance. **Note**: This field is displayed only when viewing deployment status.
  *   `pods` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PodStatus.t)`, *default:* `nil`) - Status reported by runtime pods. **Note**: **This field is deprecated**. Runtime versions 1.3 and above report instance level status rather than pod status.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - API proxy revision.
  *   `routeConflicts` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict.t)`, *default:* `nil`) - Conflicts in the desired state routing configuration. The presence of conflicts does not cause the state to be `ERROR`, but it will mean that some of the deployment's base paths are not routed to its environment. If the conflicts change, the state will transition to `PROGRESSING` until the latest configuration is rolled out to all instances. **Note**: This field is displayed only when viewing deployment status.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The full resource name of Cloud IAM Service Account that this deployment is using, eg, `projects/-/serviceAccounts/{email}`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Current state of the deployment. **Note**: This field is displayed only when viewing deployment status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiProxy => String.t() | nil,
          :deployStartTime => String.t() | nil,
          :environment => String.t() | nil,
          :errors => list(GoogleApi.Apigee.V1.Model.GoogleRpcStatus.t()) | nil,
          :instances =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatus.t()) | nil,
          :pods => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PodStatus.t()) | nil,
          :revision => String.t() | nil,
          :routeConflicts =>
            list(
              GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict.t()
            )
            | nil,
          :serviceAccount => String.t() | nil,
          :state => String.t() | nil
        }

  field(:apiProxy)
  field(:deployStartTime)
  field(:environment)
  field(:errors, as: GoogleApi.Apigee.V1.Model.GoogleRpcStatus, type: :list)

  field(:instances,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatus,
    type: :list
  )

  field(:pods, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PodStatus, type: :list)
  field(:revision)

  field(:routeConflicts,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict,
    type: :list
  )

  field(:serviceAccount)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Deployment do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Deployment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Deployment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
