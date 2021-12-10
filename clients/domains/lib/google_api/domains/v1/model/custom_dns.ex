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

defmodule GoogleApi.Domains.V1.Model.CustomDns do
  @moduledoc """
  Configuration for an arbitrary DNS provider.

  ## Attributes

  *   `dsRecords` (*type:* `list(GoogleApi.Domains.V1.Model.DsRecord.t)`, *default:* `nil`) - The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  *   `nameServers` (*type:* `list(String.t)`, *default:* `nil`) - Required. A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dsRecords => list(GoogleApi.Domains.V1.Model.DsRecord.t()) | nil,
          :nameServers => list(String.t()) | nil
        }

  field(:dsRecords, as: GoogleApi.Domains.V1.Model.DsRecord, type: :list)
  field(:nameServers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1.Model.CustomDns do
  def decode(value, options) do
    GoogleApi.Domains.V1.Model.CustomDns.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1.Model.CustomDns do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
