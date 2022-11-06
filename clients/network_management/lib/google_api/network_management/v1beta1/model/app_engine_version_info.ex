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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.AppEngineVersionInfo do
  @moduledoc """
  For display only. Metadata associated with an App Engine version.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of an App Engine version.
  *   `environment` (*type:* `String.t`, *default:* `nil`) - App Engine execution environment for a version.
  *   `runtime` (*type:* `String.t`, *default:* `nil`) - Runtime of the App Engine version.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI of an App Engine version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :environment => String.t() | nil,
          :runtime => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:displayName)
  field(:environment)
  field(:runtime)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.AppEngineVersionInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.AppEngineVersionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.AppEngineVersionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
