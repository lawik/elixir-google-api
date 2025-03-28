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

defmodule GoogleApi.CloudSearch.V1.Model.CapTokenHolderProto do
  @moduledoc """
  Represents a principal which possesses a particular secret string whose cryptographic hash is specified here. CapTokens ("Capability Tokens") are used in ACLProto. It's expected that ACLs with CapTokenHolders will strongly enforce them by Keystore-wrapping crypto keys for the corresponding CapTokens.

  ## Attributes

  *   `tokenHmacSha1Prefix` (*type:* `String.t`, *default:* `nil`) - The hash of the corresponding capability token. The value is defined to be identical to the one in acl.proto's CapTokenMetadata: 10-byte prefix of HMAC-SHA1 of the token. The HMAC key is the following fixed (non-secret) 512-bit value: 79b1c8f4 82baf523 b8a9ab4a e960f438 c45be041 11f1f222 e8a3f64d aeb05e3d c3576acc ec649194 aede422c 4e48e0d1 ff21234a a6ed6b49 a7fa592e efd7bba3
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tokenHmacSha1Prefix => String.t() | nil
        }

  field(:tokenHmacSha1Prefix)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.CapTokenHolderProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.CapTokenHolderProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.CapTokenHolderProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
