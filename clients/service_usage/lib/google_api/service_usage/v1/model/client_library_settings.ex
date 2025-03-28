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

defmodule GoogleApi.ServiceUsage.V1.Model.ClientLibrarySettings do
  @moduledoc """
  Details about how and where to publish client libraries.

  ## Attributes

  *   `cppSettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.CppSettings.t`, *default:* `nil`) - Settings for C++ client libraries.
  *   `dotnetSettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.DotnetSettings.t`, *default:* `nil`) - Settings for .NET client libraries.
  *   `goSettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.GoSettings.t`, *default:* `nil`) - Settings for Go client libraries.
  *   `javaSettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.JavaSettings.t`, *default:* `nil`) - Settings for legacy Java features, supported in the Service YAML.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Launch stage of this version of the API.
  *   `nodeSettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.NodeSettings.t`, *default:* `nil`) - Settings for Node client libraries.
  *   `phpSettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.PhpSettings.t`, *default:* `nil`) - Settings for PHP client libraries.
  *   `pythonSettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.PythonSettings.t`, *default:* `nil`) - Settings for Python client libraries.
  *   `restNumericEnums` (*type:* `boolean()`, *default:* `nil`) - When using transport=rest, the client request will encode enums as numbers rather than strings.
  *   `rubySettings` (*type:* `GoogleApi.ServiceUsage.V1.Model.RubySettings.t`, *default:* `nil`) - Settings for Ruby client libraries.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Version of the API to apply these settings to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cppSettings => GoogleApi.ServiceUsage.V1.Model.CppSettings.t() | nil,
          :dotnetSettings => GoogleApi.ServiceUsage.V1.Model.DotnetSettings.t() | nil,
          :goSettings => GoogleApi.ServiceUsage.V1.Model.GoSettings.t() | nil,
          :javaSettings => GoogleApi.ServiceUsage.V1.Model.JavaSettings.t() | nil,
          :launchStage => String.t() | nil,
          :nodeSettings => GoogleApi.ServiceUsage.V1.Model.NodeSettings.t() | nil,
          :phpSettings => GoogleApi.ServiceUsage.V1.Model.PhpSettings.t() | nil,
          :pythonSettings => GoogleApi.ServiceUsage.V1.Model.PythonSettings.t() | nil,
          :restNumericEnums => boolean() | nil,
          :rubySettings => GoogleApi.ServiceUsage.V1.Model.RubySettings.t() | nil,
          :version => String.t() | nil
        }

  field(:cppSettings, as: GoogleApi.ServiceUsage.V1.Model.CppSettings)
  field(:dotnetSettings, as: GoogleApi.ServiceUsage.V1.Model.DotnetSettings)
  field(:goSettings, as: GoogleApi.ServiceUsage.V1.Model.GoSettings)
  field(:javaSettings, as: GoogleApi.ServiceUsage.V1.Model.JavaSettings)
  field(:launchStage)
  field(:nodeSettings, as: GoogleApi.ServiceUsage.V1.Model.NodeSettings)
  field(:phpSettings, as: GoogleApi.ServiceUsage.V1.Model.PhpSettings)
  field(:pythonSettings, as: GoogleApi.ServiceUsage.V1.Model.PythonSettings)
  field(:restNumericEnums)
  field(:rubySettings, as: GoogleApi.ServiceUsage.V1.Model.RubySettings)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.ClientLibrarySettings do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.ClientLibrarySettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.ClientLibrarySettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
