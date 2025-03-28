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

defmodule GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintListConstraint do
  @moduledoc """
  A `Constraint` that allows or disallows a list of string values, which are configured by an Organization's policy administrator with a `Policy`.

  ## Attributes

  *   `supportsIn` (*type:* `boolean()`, *default:* `nil`) - Indicates whether values grouped into categories can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `"in:Python"` would match any value in the 'Python' group.
  *   `supportsUnder` (*type:* `boolean()`, *default:* `nil`) - Indicates whether subtrees of Cloud Resource Manager resource hierarchy can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `"under:folders/123"` would match any resource under the 'folders/123' folder.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :supportsIn => boolean() | nil,
          :supportsUnder => boolean() | nil
        }

  field(:supportsIn)
  field(:supportsUnder)
end

defimpl Poison.Decoder,
  for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintListConstraint do
  def decode(value, options) do
    GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintListConstraint.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2ConstraintListConstraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
