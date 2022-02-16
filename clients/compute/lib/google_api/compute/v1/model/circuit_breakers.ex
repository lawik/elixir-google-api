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

defmodule GoogleApi.Compute.V1.Model.CircuitBreakers do
  @moduledoc """
  Settings controlling the volume of requests, connections and retries to this backend service.

  ## Attributes

  *   `maxConnections` (*type:* `integer()`, *default:* `nil`) - Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `maxPendingRequests` (*type:* `integer()`, *default:* `nil`) - Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `maxRequests` (*type:* `integer()`, *default:* `nil`) - The maximum number of parallel requests that allowed to the backend service. If not specified, there is no limit.
  *   `maxRequestsPerConnection` (*type:* `integer()`, *default:* `nil`) - Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `maxRetries` (*type:* `integer()`, *default:* `nil`) - Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxConnections => integer() | nil,
          :maxPendingRequests => integer() | nil,
          :maxRequests => integer() | nil,
          :maxRequestsPerConnection => integer() | nil,
          :maxRetries => integer() | nil
        }

  field(:maxConnections)
  field(:maxPendingRequests)
  field(:maxRequests)
  field(:maxRequestsPerConnection)
  field(:maxRetries)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.CircuitBreakers do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.CircuitBreakers.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.CircuitBreakers do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
