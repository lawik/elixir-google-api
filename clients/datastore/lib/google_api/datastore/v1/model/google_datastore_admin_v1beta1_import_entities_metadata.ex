# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata do
  @moduledoc """
  Metadata for ImportEntities operations.

  ## Attributes

  - common (GoogleDatastoreAdminV1beta1CommonMetadata): Metadata common to all Datastore Admin operations. Defaults to: `null`.
  - entityFilter (GoogleDatastoreAdminV1beta1EntityFilter): Description of which entities are being imported. Defaults to: `null`.
  - inputUrl (String.t): The location of the import metadata file. This will be the same value as the google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url field. Defaults to: `null`.
  - progressBytes (GoogleDatastoreAdminV1beta1Progress): An estimate of the number of bytes processed. Defaults to: `null`.
  - progressEntities (GoogleDatastoreAdminV1beta1Progress): An estimate of the number of entities processed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :common => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1CommonMetadata.t(),
          :entityFilter =>
            GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1EntityFilter.t(),
          :inputUrl => any(),
          :progressBytes => GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress.t(),
          :progressEntities =>
            GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress.t()
        }

  field(:common, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1CommonMetadata)
  field(:entityFilter, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1EntityFilter)
  field(:inputUrl)
  field(:progressBytes, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress)
  field(:progressEntities, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress)
end

defimpl Poison.Decoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1ImportEntitiesMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
