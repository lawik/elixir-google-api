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

defmodule GoogleApi.Connectors.V1.Model.NodeConfig do
  @moduledoc """
  Configuration for the connection.

  ## Attributes

  *   `maxNodeCount` (*type:* `integer()`, *default:* `nil`) - Maximum number of nodes in the runtime nodes.
  *   `minNodeCount` (*type:* `integer()`, *default:* `nil`) - Minimum number of nodes in the runtime nodes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxNodeCount => integer() | nil,
          :minNodeCount => integer() | nil
        }

  field(:maxNodeCount)
  field(:minNodeCount)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.NodeConfig do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.NodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.NodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
