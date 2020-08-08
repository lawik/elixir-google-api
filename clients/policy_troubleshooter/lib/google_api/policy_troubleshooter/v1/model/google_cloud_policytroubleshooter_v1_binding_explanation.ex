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

defmodule GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanation do
  @moduledoc """
  Details about how a binding in a policy affects a member's ability to use a permission.

  ## Attributes

  *   `access` (*type:* `String.t`, *default:* `nil`) - Required. Indicates whether _this binding_ provides the specified permission to the specified member for the specified resource. This field does _not_ indicate whether the member actually has the permission for the resource. There might be another binding that overrides this binding. To determine whether the member actually has the permission, use the `access` field in the TroubleshootIamPolicyResponse.
  *   `condition` (*type:* `GoogleApi.PolicyTroubleshooter.V1.Model.GoogleTypeExpr.t`, *default:* `nil`) - A condition expression that prevents access unless the expression evaluates to `true`. To learn about IAM Conditions, see http://cloud.google.com/iam/help/conditions/overview.
  *   `memberships` (*type:* `%{optional(String.t) => GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership.t}`, *default:* `nil`) - Indicates whether each member in the binding includes the member specified in the request, either directly or indirectly. Each key identifies a member in the binding, and each value indicates whether the member in the binding includes the member in the request. For example, suppose that a binding includes the following members: * `user:alice@example.com` * `group:product-eng@example.com` You want to troubleshoot access for `user:bob@example.com`. This user is a member of the group `group:product-eng@example.com`. For the first member in the binding, the key is `user:alice@example.com`, and the `membership` field in the value is set to `MEMBERSHIP_NOT_INCLUDED`. For the second member in the binding, the key is `group:product-eng@example.com`, and the `membership` field in the value is set to `MEMBERSHIP_INCLUDED`.
  *   `relevance` (*type:* `String.t`, *default:* `nil`) - The relevance of this binding to the overall determination for the entire policy.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role that this binding grants. For example, `roles/compute.serviceAgent`. For a complete list of predefined IAM roles, as well as the permissions in each role, see https://cloud.google.com/iam/help/roles/reference.
  *   `rolePermission` (*type:* `String.t`, *default:* `nil`) - Indicates whether the role granted by this binding contains the specified permission.
  *   `rolePermissionRelevance` (*type:* `String.t`, *default:* `nil`) - The relevance of the permission's existence, or nonexistence, in the role to the overall determination for the entire policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :access => String.t(),
          :condition => GoogleApi.PolicyTroubleshooter.V1.Model.GoogleTypeExpr.t(),
          :memberships => %{
            optional(String.t()) =>
              GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership.t()
          },
          :relevance => String.t(),
          :role => String.t(),
          :rolePermission => String.t(),
          :rolePermissionRelevance => String.t()
        }

  field(:access)
  field(:condition, as: GoogleApi.PolicyTroubleshooter.V1.Model.GoogleTypeExpr)

  field(:memberships,
    as:
      GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership,
    type: :map
  )

  field(:relevance)
  field(:role)
  field(:rolePermission)
  field(:rolePermissionRelevance)
end

defimpl Poison.Decoder,
  for: GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanation do
  def decode(value, options) do
    GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
