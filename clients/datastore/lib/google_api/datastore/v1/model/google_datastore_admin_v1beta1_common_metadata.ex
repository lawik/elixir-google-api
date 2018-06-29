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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1CommonMetadata do
  @moduledoc """
  Metadata common to all Datastore Admin operations.

  ## Attributes

  - endTime (DateTime.t): The time the operation ended, either successfully or otherwise. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): The client-assigned labels which were provided when the operation was created. May also include additional labels. Defaults to: `null`.
  - operationType (String.t): The type of the operation. Can be used as a filter in ListOperationsRequest. Defaults to: `null`.
    - Enum - one of [OPERATION_TYPE_UNSPECIFIED, EXPORT_ENTITIES, IMPORT_ENTITIES]
  - startTime (DateTime.t): The time that work began on the operation. Defaults to: `null`.
  - state (String.t): The current state of the Operation. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, INITIALIZING, PROCESSING, CANCELLING, FINALIZING, SUCCESSFUL, FAILED, CANCELLED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :labels => map(),
          :operationType => any(),
          :startTime => DateTime.t(),
          :state => any()
        }

  field(:endTime, as: DateTime)
  field(:labels, type: :map)
  field(:operationType)
  field(:startTime, as: DateTime)
  field(:state)
end

defimpl Poison.Decoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1CommonMetadata do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1CommonMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1CommonMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
