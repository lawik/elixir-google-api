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

defmodule GoogleApi.AccessContextManager.V1.Model.EgressTo do
  @moduledoc """
  Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the `resources` specified. Note that if the destination of the request is protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.

  ## Attributes

  *   `operations` (*type:* `list(GoogleApi.AccessContextManager.V1.Model.ApiOperation.t)`, *default:* `nil`) - A list of ApiOperations that this egress rule applies to. A request matches if it contains an operation/service in this list.
  *   `resources` (*type:* `list(String.t)`, *default:* `nil`) - A list of resources, currently only projects in the form `projects/`, that match this to stanza. A request matches if it contains a resource in this list. If `*` is specified for resources, then this EgressTo rule will authorize access to all resources outside the perimeter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operations => list(GoogleApi.AccessContextManager.V1.Model.ApiOperation.t()) | nil,
          :resources => list(String.t()) | nil
        }

  field(:operations, as: GoogleApi.AccessContextManager.V1.Model.ApiOperation, type: :list)
  field(:resources, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.EgressTo do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.EgressTo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.EgressTo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
