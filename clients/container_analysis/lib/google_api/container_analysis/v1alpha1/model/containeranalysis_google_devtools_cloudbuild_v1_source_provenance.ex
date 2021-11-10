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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance do
  @moduledoc """
  Provenance of the source. Ways to find the original source, or verify that some source was used for this build.

  ## Attributes

  *   `fileHashes` (*type:* `%{optional(String.t) => GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes.t}`, *default:* `nil`) - Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that `FileHashes` will only be populated if `BuildOptions` has requested a `SourceProvenanceHash`. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (`.tar.gz`), the `FileHash` will be for the single path to that file.
  *   `resolvedRepoSource` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource.t`, *default:* `nil`) - A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  *   `resolvedStorageSource` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource.t`, *default:* `nil`) - A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  *   `resolvedStorageSourceManifest` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest.t`, *default:* `nil`) - A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. This feature is in Preview.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileHashes =>
            %{
              optional(String.t()) =>
                GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes.t()
            }
            | nil,
          :resolvedRepoSource =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource.t()
            | nil,
          :resolvedStorageSource =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource.t()
            | nil,
          :resolvedStorageSourceManifest =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest.t()
            | nil
        }

  field(:fileHashes,
    as:
      GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes,
    type: :map
  )

  field(:resolvedRepoSource,
    as:
      GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
  )

  field(:resolvedStorageSource,
    as:
      GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
  )

  field(:resolvedStorageSourceManifest,
    as:
      GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
