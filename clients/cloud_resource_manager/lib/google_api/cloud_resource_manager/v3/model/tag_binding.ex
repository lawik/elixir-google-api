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

defmodule GoogleApi.CloudResourceManager.V3.Model.TagBinding do
  @moduledoc """
  A TagBinding represents a connection between a TagValue and a cloud resource Once a TagBinding is created, the TagValue is applied to all the descendants of the Google Cloud resource.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the TagBinding. This is a String of the form: `tagBindings/{full-resource-name}/{tag-value-name}` (e.g. `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The full resource name of the resource the TagValue is bound to. E.g. `//cloudresourcemanager.googleapis.com/projects/123`
  *   `tagValue` (*type:* `String.t`, *default:* `nil`) - The TagValue of the TagBinding. Must be of the form `tagValues/456`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :tagValue => String.t() | nil
        }

  field(:name)
  field(:parent)
  field(:tagValue)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V3.Model.TagBinding do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V3.Model.TagBinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V3.Model.TagBinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
