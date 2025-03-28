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

defmodule GoogleApi.BeyondCorp.V1.Model.ClientConnectorService do
  @moduledoc """
  Message describing ClientConnectorService object.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Create time stamp.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided name. The display name should follow certain format. * Must be 6 to 30 characters in length. * Can only contain lowercase letters, numbers, and hyphens. * Must start with a letter.
  *   `egress` (*type:* `GoogleApi.BeyondCorp.V1.Model.Egress.t`, *default:* `nil`) - Required. The details of the egress settings.
  *   `ingress` (*type:* `GoogleApi.BeyondCorp.V1.Model.Ingress.t`, *default:* `nil`) - Required. The details of the ingress settings.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of resource. The name is ignored during creation.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The operational state of the ClientConnectorService.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Update time stamp.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :egress => GoogleApi.BeyondCorp.V1.Model.Egress.t() | nil,
          :ingress => GoogleApi.BeyondCorp.V1.Model.Ingress.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:egress, as: GoogleApi.BeyondCorp.V1.Model.Egress)
  field(:ingress, as: GoogleApi.BeyondCorp.V1.Model.Ingress)
  field(:name)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BeyondCorp.V1.Model.ClientConnectorService do
  def decode(value, options) do
    GoogleApi.BeyondCorp.V1.Model.ClientConnectorService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BeyondCorp.V1.Model.ClientConnectorService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
