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

defmodule GoogleApi.CloudSearch.V1.Model.MdbUserProto do
  @moduledoc """
  An entity from the MDB namespace that is to be interpreted as a user. If using this for authorization, you should only do an exact match on the peer role against user_name.

  ## Attributes

  *   `gaiaId` (*type:* `String.t`, *default:* `nil`) - Do not set this field. Contact credentials-eng@ if you believe you absolutely need to use it. This is the @prod.google.com Gaia ID that corresponds to the MDB user, see go/authn-merge for details. This field may always be safely ignored when performing an authorization check.
  *   `userName` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gaiaId => String.t() | nil,
          :userName => String.t() | nil
        }

  field(:gaiaId)
  field(:userName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.MdbUserProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.MdbUserProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.MdbUserProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
