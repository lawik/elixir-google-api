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

defmodule GoogleApi.AccessContextManager.V1.Model.MethodSelector do
  @moduledoc """
  An allowed method or permission of a service specified in ApiOperation.

  ## Attributes

  *   `method` (*type:* `String.t`, *default:* `nil`) - Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.
  *   `permission` (*type:* `String.t`, *default:* `nil`) - Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :method => String.t() | nil,
          :permission => String.t() | nil
        }

  field(:method)
  field(:permission)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.MethodSelector do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.MethodSelector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.MethodSelector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
