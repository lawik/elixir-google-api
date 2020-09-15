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

defmodule GoogleApi.HealthCare.V1beta1.Model.ParserConfig do
  @moduledoc """
  The configuration for the parser. It determines how the server parses the messages.

  ## Attributes

  *   `allowNullHeader` (*type:* `boolean()`, *default:* `nil`) - Determines whether messages with no header are allowed.
  *   `schema` (*type:* `GoogleApi.HealthCare.V1beta1.Model.SchemaPackage.t`, *default:* `nil`) - Schemas used to parse messages in this store, if schematized parsing is desired.
  *   `segmentTerminator` (*type:* `String.t`, *default:* `nil`) - Byte(s) to use as the segment terminator. If this is unset, '\\r' is used as segment terminator, matching the HL7 version 2 specification.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Immutable. Determines the version of the unschematized parser to be used when `schema` is not given. This field is immutable after store creation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowNullHeader => boolean(),
          :schema => GoogleApi.HealthCare.V1beta1.Model.SchemaPackage.t(),
          :segmentTerminator => String.t(),
          :version => String.t()
        }

  field(:allowNullHeader)
  field(:schema, as: GoogleApi.HealthCare.V1beta1.Model.SchemaPackage)
  field(:segmentTerminator)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ParserConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ParserConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ParserConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
