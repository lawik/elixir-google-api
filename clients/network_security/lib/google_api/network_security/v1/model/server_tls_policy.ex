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

defmodule GoogleApi.NetworkSecurity.V1.Model.ServerTlsPolicy do
  @moduledoc """
  ServerTlsPolicy is a resource that specifies how a server should authenticate incoming requests. This resource itself does not affect configuration unless it is attached to a target HTTPS proxy or endpoint config selector resource.

  ## Attributes

  *   `allowOpen` (*type:* `boolean()`, *default:* `nil`) -  Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Free-text description of the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Set of label tags associated with the resource.
  *   `mtlsPolicy` (*type:* `GoogleApi.NetworkSecurity.V1.Model.MTLSPolicy.t`, *default:* `nil`) -  Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  *   `serverCertificate` (*type:* `GoogleApi.NetworkSecurity.V1.Model.GoogleCloudNetworksecurityV1CertificateProvider.t`, *default:* `nil`) -  Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowOpen => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :labels => map() | nil,
          :mtlsPolicy => GoogleApi.NetworkSecurity.V1.Model.MTLSPolicy.t() | nil,
          :name => String.t() | nil,
          :serverCertificate =>
            GoogleApi.NetworkSecurity.V1.Model.GoogleCloudNetworksecurityV1CertificateProvider.t()
            | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:allowOpen)
  field(:createTime, as: DateTime)
  field(:description)
  field(:labels, type: :map)
  field(:mtlsPolicy, as: GoogleApi.NetworkSecurity.V1.Model.MTLSPolicy)
  field(:name)

  field(:serverCertificate,
    as: GoogleApi.NetworkSecurity.V1.Model.GoogleCloudNetworksecurityV1CertificateProvider
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkSecurity.V1.Model.ServerTlsPolicy do
  def decode(value, options) do
    GoogleApi.NetworkSecurity.V1.Model.ServerTlsPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkSecurity.V1.Model.ServerTlsPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
