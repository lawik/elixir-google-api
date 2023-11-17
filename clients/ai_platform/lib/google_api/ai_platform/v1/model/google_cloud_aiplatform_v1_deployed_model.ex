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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel do
  @moduledoc """
  A deployment of a Model. Endpoints contain one or more DeployedModels.

  ## Attributes

  *   `automaticResources` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1AutomaticResources.t`, *default:* `nil`) - A description of resources that to large degree are decided by Vertex AI, and require only a modest additional configuration.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when the DeployedModel was created.
  *   `dedicatedResources` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DedicatedResources.t`, *default:* `nil`) - A description of resources that are dedicated to the DeployedModel, and that need a higher degree of manual configuration.
  *   `disableContainerLogging` (*type:* `boolean()`, *default:* `nil`) - For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the DeployedModel. If not provided upon creation, the Model's display_name is used.
  *   `enableAccessLogging` (*type:* `boolean()`, *default:* `nil`) - If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each prediction request. Note that logs may incur a cost, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option.
  *   `explanationSpec` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec.t`, *default:* `nil`) - Explanation configuration for this DeployedModel. When deploying a Model using EndpointService.DeployModel, this value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of explanation_spec is not populated, the value of the same field of Model.explanation_spec is inherited. If the corresponding Model.explanation_spec is not populated, all fields of the explanation_spec will be used for the explanation configuration.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Immutable. The ID of the DeployedModel. If not provided upon deployment, Vertex AI will generate a value for this ID. This value should be 1-10 characters, and valid characters are `/[0-9]/`.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Model that this is the deployment of. Note that the Model may be in a different location than the DeployedModel's Endpoint. The resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed.
  *   `modelVersionId` (*type:* `String.t`, *default:* `nil`) - Output only. The version ID of the model that is deployed.
  *   `privateEndpoints` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PrivateEndpoints.t`, *default:* `nil`) - Output only. Provide paths for users to send predict/explain/health requests directly to the deployed model services running on Cloud via private services access. This field is populated if network is configured.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The service account that the DeployedModel's container runs as. Specify the email address of the service account. If this service account is not specified, the container runs as a service account that doesn't have access to the resource project. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automaticResources =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1AutomaticResources.t() | nil,
          :createTime => DateTime.t() | nil,
          :dedicatedResources =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DedicatedResources.t() | nil,
          :disableContainerLogging => boolean() | nil,
          :displayName => String.t() | nil,
          :enableAccessLogging => boolean() | nil,
          :explanationSpec =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec.t() | nil,
          :id => String.t() | nil,
          :model => String.t() | nil,
          :modelVersionId => String.t() | nil,
          :privateEndpoints =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PrivateEndpoints.t() | nil,
          :serviceAccount => String.t() | nil
        }

  field(:automaticResources,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1AutomaticResources
  )

  field(:createTime, as: DateTime)

  field(:dedicatedResources,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DedicatedResources
  )

  field(:disableContainerLogging)
  field(:displayName)
  field(:enableAccessLogging)

  field(:explanationSpec, as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec)

  field(:id)
  field(:model)
  field(:modelVersionId)

  field(:privateEndpoints,
    as: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1PrivateEndpoints
  )

  field(:serviceAccount)
end

defimpl Poison.Decoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
