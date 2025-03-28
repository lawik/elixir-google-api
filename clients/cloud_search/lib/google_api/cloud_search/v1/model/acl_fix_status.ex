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

defmodule GoogleApi.CloudSearch.V1.Model.AclFixStatus do
  @moduledoc """
  The message reconstructed based on information in the response of /PermissionFixOptionsService.Query (or the Apiary API that wraps it). Indicates the ability of the requester to change the access to the Drive file for the room roster or the DM members. Used in GetMessagePreviewMetadataResponse only.

  ## Attributes

  *   `fixability` (*type:* `String.t`, *default:* `nil`) - 
  *   `fixableEmailAddress` (*type:* `list(String.t)`, *default:* `nil`) - List of recipient email addresses for which access can be granted. This field contains the same email addresses from the GetMessagePreviewMetadata request if all recipients can be successfully added to the ACL as determined by Drive ACL Fixer. For now, the field is non-empty if and only if the "fixability" value is "CAN_FIX".
  *   `outOfDomainWarningEmailAddress` (*type:* `list(String.t)`, *default:* `nil`) - List of recipient email addresses for which an out-of-domain-sharing warning must be shown, stating that these email addresses are not in the Google Apps organization that the requested item belong to. Empty if all recipients are in the same Google Apps organization.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fixability => String.t() | nil,
          :fixableEmailAddress => list(String.t()) | nil,
          :outOfDomainWarningEmailAddress => list(String.t()) | nil
        }

  field(:fixability)
  field(:fixableEmailAddress, type: :list)
  field(:outOfDomainWarningEmailAddress, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AclFixStatus do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AclFixStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AclFixStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
