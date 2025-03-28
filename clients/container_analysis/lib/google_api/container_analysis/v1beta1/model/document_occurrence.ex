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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.DocumentOccurrence do
  @moduledoc """
  DocumentOccurrence represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/v2.3/document-creation-information/

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Identify when the SPDX file was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard
  *   `creatorComment` (*type:* `String.t`, *default:* `nil`) - A field for creators of the SPDX file to provide general comments about the creation of the SPDX file or any other relevant comment not included in the other fields
  *   `creators` (*type:* `list(String.t)`, *default:* `nil`) - Identify who (or what, in the case of a tool) created the SPDX file. If the SPDX file was created by an individual, indicate the person's name
  *   `documentComment` (*type:* `String.t`, *default:* `nil`) - A field for creators of the SPDX file content to provide comments to the consumers of the SPDX document
  *   `externalDocumentRefs` (*type:* `list(String.t)`, *default:* `nil`) - Identify any external SPDX documents referenced within this SPDX document
  *   `id` (*type:* `String.t`, *default:* `nil`) - Identify the current SPDX document which may be referenced in relationships by other files, packages internally and documents externally
  *   `licenseListVersion` (*type:* `String.t`, *default:* `nil`) - A field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created
  *   `namespace` (*type:* `String.t`, *default:* `nil`) - Provide an SPDX document specific namespace as a unique absolute Uniform Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘#’ delimiter
  *   `title` (*type:* `String.t`, *default:* `nil`) - Identify name of this document as designated by creator
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :creatorComment => String.t() | nil,
          :creators => list(String.t()) | nil,
          :documentComment => String.t() | nil,
          :externalDocumentRefs => list(String.t()) | nil,
          :id => String.t() | nil,
          :licenseListVersion => String.t() | nil,
          :namespace => String.t() | nil,
          :title => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:creatorComment)
  field(:creators, type: :list)
  field(:documentComment)
  field(:externalDocumentRefs, type: :list)
  field(:id)
  field(:licenseListVersion)
  field(:namespace)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.DocumentOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.DocumentOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.DocumentOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
