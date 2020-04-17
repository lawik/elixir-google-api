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

defmodule GoogleApi.Content.V21.Model.PostalCodeRange do
  @moduledoc """


  ## Attributes

  *   `postalCodeRangeBegin` (*type:* `String.t`, *default:* `nil`) - A postal code or a pattern of the form `prefix*` denoting the inclusive lower bound of the range defining the area. Examples values: `"94108"`, `"9410*"`, `"9*"`. Required.
  *   `postalCodeRangeEnd` (*type:* `String.t`, *default:* `nil`) - A postal code or a pattern of the form `prefix*` denoting the inclusive upper bound of the range defining the area. It must have the same length as `postalCodeRangeBegin`: if `postalCodeRangeBegin` is a postal code then `postalCodeRangeEnd` must be a postal code too; if `postalCodeRangeBegin` is a pattern then `postalCodeRangeEnd` must be a pattern with the same prefix length. Optional: if not set, then the area is defined as being all the postal codes matching `postalCodeRangeBegin`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :postalCodeRangeBegin => String.t(),
          :postalCodeRangeEnd => String.t()
        }

  field(:postalCodeRangeBegin)
  field(:postalCodeRangeEnd)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.PostalCodeRange do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.PostalCodeRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.PostalCodeRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
