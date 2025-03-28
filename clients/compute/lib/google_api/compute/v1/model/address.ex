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

defmodule GoogleApi.Compute.V1.Model.Address do
  @moduledoc """
  Represents an IP Address resource. Google Compute Engine has two IP Address resources: * [Global (external and internal)](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses) * [Regional (external and internal)](https://cloud.google.com/compute/docs/reference/rest/v1/addresses) For more information, see Reserving a static external IP address.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - The static IP address represented by this resource.
  *   `addressType` (*type:* `String.t`, *default:* `nil`) - The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this field when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `ipVersion` (*type:* `String.t`, *default:* `nil`) - The IP version that will be used by this address. Valid options are IPV4 or IPV6. This can only be specified for a global address.
  *   `ipv6EndpointType` (*type:* `String.t`, *default:* `nil`) - The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
  *   `kind` (*type:* `String.t`, *default:* `compute#address`) - [Output Only] Type of the resource. Always compute#address for addresses.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The URL of the network in which to reserve the address. This field can only be used with INTERNAL type with the VPC_PEERING purpose.
  *   `networkTier` (*type:* `String.t`, *default:* `nil`) - This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
  *   `prefixLength` (*type:* `integer()`, *default:* `nil`) - The prefix length if the resource represents an IP range.
  *   `purpose` (*type:* `String.t`, *default:* `nil`) - The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, load balancers, and similar resources. - DNS_RESOLVER for a DNS resolver address in a subnetwork for a Cloud DNS inbound forwarder IP addresses (regional internal IP address in a subnet of a VPC network) - VPC_PEERING for global internal IP addresses used for private services access allocated ranges. - NAT_AUTO for the regional external IP addresses used by Cloud NAT when allocating addresses using automatic NAT IP address allocation. - IPSEC_INTERCONNECT for addresses created from a private IP range that are reserved for a VLAN attachment in an *HA VPN over Cloud Interconnect* configuration. These addresses are regional resources. - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned to multiple internal forwarding rules. - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to configure Private Service Connect. Only global internal addresses can use this purpose. 
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the region where a regional address resides. For regional addresses, you must specify the region as a path parameter in the HTTP request URL. *This field is not applicable to global addresses.*
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the address, which can be one of RESERVING, RESERVED, or IN_USE. An address that is RESERVING is currently in the process of being reserved. A RESERVED address is currently reserved and available to use. An IN_USE address is currently being used by another resource and is not available.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range. This field can only be used with INTERNAL type with a GCE_ENDPOINT or DNS_RESOLVER purpose.
  *   `users` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] The URLs of the resources that are using this address.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :addressType => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :id => String.t() | nil,
          :ipVersion => String.t() | nil,
          :ipv6EndpointType => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :networkTier => String.t() | nil,
          :prefixLength => integer() | nil,
          :purpose => String.t() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil,
          :status => String.t() | nil,
          :subnetwork => String.t() | nil,
          :users => list(String.t()) | nil
        }

  field(:address)
  field(:addressType)
  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:ipVersion)
  field(:ipv6EndpointType)
  field(:kind)
  field(:name)
  field(:network)
  field(:networkTier)
  field(:prefixLength)
  field(:purpose)
  field(:region)
  field(:selfLink)
  field(:status)
  field(:subnetwork)
  field(:users, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Address do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Address.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Address do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
