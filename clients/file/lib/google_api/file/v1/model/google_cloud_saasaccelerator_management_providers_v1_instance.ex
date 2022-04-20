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

defmodule GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1Instance do
  @moduledoc """


  ## Attributes

  *   `consumerDefinedName` (*type:* `String.t`, *default:* `nil`) - consumer_defined_name is the name that is set by the consumer. On the other hand Name field represents system-assigned id of an instance so consumers are not necessarily aware of it. consumer_defined_name is used for notification/UI purposes for consumer to recognize their instances.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when the resource was created.
  *   `instanceType` (*type:* `String.t`, *default:* `nil`) - Optional. The instance_type of this instance of format: projects/{project_number}/locations/{location_id}/instanceTypes/{instance_type_id}. Instance Type represents a high-level tier or SKU of the service that this instance belong to. When enabled(eg: Maintenance Rollout), Rollout uses 'instance_type' along with 'software_versions' to determine whether instance needs an update or not.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.
  *   `maintenancePolicyNames` (*type:* `map()`, *default:* `nil`) - Deprecated. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the referenced policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go/cloud-saas-mw-ug.
  *   `maintenanceSchedules` (*type:* `%{optional(String.t) => GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.t}`, *default:* `nil`) - The MaintenanceSchedule contains the scheduling information of published maintenance schedule with same key as software_versions.
  *   `maintenanceSettings` (*type:* `GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.t`, *default:* `nil`) - Optional. The MaintenanceSettings associated with instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique name of the resource. It uses the form: `projects/{project_number}/locations/{location_id}/instances/{instance_id}` Note: This name is passed, stored and logged across the rollout system. So use of consumer project_id or any other consumer PII in the name is strongly discouraged for wipeout (go/wipeout) compliance. See go/elysium/project_ids#storage-guidance for more details.
  *   `notificationParameters` (*type:* `%{optional(String.t) => GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter.t}`, *default:* `nil`) - Optional. notification_parameter are information that service producers may like to include that is not relevant to Rollout. This parameter will only be passed to Gamma and Cloud Logging for notification/logging purpose.
  *   `producerMetadata` (*type:* `map()`, *default:* `nil`) - Output only. Custom string attributes used primarily to expose producer-specific information in monitoring dashboards. See go/get-instance-metadata.
  *   `provisionedResources` (*type:* `list(GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.t)`, *default:* `nil`) - Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. See go/get-instance-metadata.
  *   `slmInstanceTemplate` (*type:* `String.t`, *default:* `nil`) - Link to the SLM instance template. Only populated when updating SLM instances via SSA's Actuation service adaptor. Service producers with custom control plane (e.g. Cloud SQL) doesn't need to populate this field. Instead they should use software_versions.
  *   `sloMetadata` (*type:* `GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.t`, *default:* `nil`) - Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform. See go/cloud-ssa-standard-slo for feature description.
  *   `softwareVersions` (*type:* `map()`, *default:* `nil`) - Software versions that are used to deploy this instance. This can be mutated by rollout services.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current lifecycle state of the resource (e.g. if it's being created or ready to use).
  *   `tenantProjectId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the associated GCP tenant project. See go/get-instance-metadata.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when the resource was last modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerDefinedName => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :instanceType => String.t() | nil,
          :labels => map() | nil,
          :maintenancePolicyNames => map() | nil,
          :maintenanceSchedules =>
            %{
              optional(String.t()) =>
                GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.t()
            }
            | nil,
          :maintenanceSettings =>
            GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.t()
            | nil,
          :name => String.t() | nil,
          :notificationParameters =>
            %{
              optional(String.t()) =>
                GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter.t()
            }
            | nil,
          :producerMetadata => map() | nil,
          :provisionedResources =>
            list(
              GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.t()
            )
            | nil,
          :slmInstanceTemplate => String.t() | nil,
          :sloMetadata =>
            GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.t()
            | nil,
          :softwareVersions => map() | nil,
          :state => String.t() | nil,
          :tenantProjectId => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:consumerDefinedName)
  field(:createTime, as: DateTime)
  field(:instanceType)
  field(:labels, type: :map)
  field(:maintenancePolicyNames, type: :map)

  field(:maintenanceSchedules,
    as:
      GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule,
    type: :map
  )

  field(:maintenanceSettings,
    as: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
  )

  field(:name)

  field(:notificationParameters,
    as:
      GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter,
    type: :map
  )

  field(:producerMetadata, type: :map)

  field(:provisionedResources,
    as:
      GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource,
    type: :list
  )

  field(:slmInstanceTemplate)

  field(:sloMetadata,
    as: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
  )

  field(:softwareVersions, type: :map)
  field(:state)
  field(:tenantProjectId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1Instance do
  def decode(value, options) do
    GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1Instance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.File.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
