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

defmodule GoogleApi.TagManager.V2.Model.ContainerVersion do
  @moduledoc """
  Represents a Google Tag Manager Container Version.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - GTM Account ID.
  *   `builtInVariable` (*type:* `list(GoogleApi.TagManager.V2.Model.BuiltInVariable.t)`, *default:* `nil`) - The built-in variables in the container that this version was taken from.
  *   `client` (*type:* `list(GoogleApi.TagManager.V2.Model.Client.t)`, *default:* `nil`) - The clients in the container that this version was taken from.
  *   `container` (*type:* `GoogleApi.TagManager.V2.Model.Container.t`, *default:* `nil`) - The container that this version was taken from.
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - GTM Container ID.
  *   `containerVersionId` (*type:* `String.t`, *default:* `nil`) - The Container Version ID uniquely identifies the GTM Container Version.
  *   `customTemplate` (*type:* `list(GoogleApi.TagManager.V2.Model.CustomTemplate.t)`, *default:* `nil`) - The custom templates in the container that this version was taken from.
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - A value of true indicates this container version has been deleted.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Container version description. @mutable tagmanager.accounts.containers.versions.update
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the GTM Container Version as computed at storage time. This value is recomputed whenever the container version is modified.
  *   `folder` (*type:* `list(GoogleApi.TagManager.V2.Model.Folder.t)`, *default:* `nil`) - The folders in the container that this version was taken from.
  *   `gtagConfig` (*type:* `list(GoogleApi.TagManager.V2.Model.GtagConfig.t)`, *default:* `nil`) - The Google tag configs in the container that this version was taken from.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Container version display name. @mutable tagmanager.accounts.containers.versions.update
  *   `path` (*type:* `String.t`, *default:* `nil`) - GTM Container Version's API relative path.
  *   `tag` (*type:* `list(GoogleApi.TagManager.V2.Model.Tag.t)`, *default:* `nil`) - The tags in the container that this version was taken from.
  *   `tagManagerUrl` (*type:* `String.t`, *default:* `nil`) - Auto generated link to the tag manager UI
  *   `trigger` (*type:* `list(GoogleApi.TagManager.V2.Model.Trigger.t)`, *default:* `nil`) - The triggers in the container that this version was taken from.
  *   `variable` (*type:* `list(GoogleApi.TagManager.V2.Model.Variable.t)`, *default:* `nil`) - The variables in the container that this version was taken from.
  *   `zone` (*type:* `list(GoogleApi.TagManager.V2.Model.Zone.t)`, *default:* `nil`) - The zones in the container that this version was taken from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :builtInVariable => list(GoogleApi.TagManager.V2.Model.BuiltInVariable.t()) | nil,
          :client => list(GoogleApi.TagManager.V2.Model.Client.t()) | nil,
          :container => GoogleApi.TagManager.V2.Model.Container.t() | nil,
          :containerId => String.t() | nil,
          :containerVersionId => String.t() | nil,
          :customTemplate => list(GoogleApi.TagManager.V2.Model.CustomTemplate.t()) | nil,
          :deleted => boolean() | nil,
          :description => String.t() | nil,
          :fingerprint => String.t() | nil,
          :folder => list(GoogleApi.TagManager.V2.Model.Folder.t()) | nil,
          :gtagConfig => list(GoogleApi.TagManager.V2.Model.GtagConfig.t()) | nil,
          :name => String.t() | nil,
          :path => String.t() | nil,
          :tag => list(GoogleApi.TagManager.V2.Model.Tag.t()) | nil,
          :tagManagerUrl => String.t() | nil,
          :trigger => list(GoogleApi.TagManager.V2.Model.Trigger.t()) | nil,
          :variable => list(GoogleApi.TagManager.V2.Model.Variable.t()) | nil,
          :zone => list(GoogleApi.TagManager.V2.Model.Zone.t()) | nil
        }

  field(:accountId)
  field(:builtInVariable, as: GoogleApi.TagManager.V2.Model.BuiltInVariable, type: :list)
  field(:client, as: GoogleApi.TagManager.V2.Model.Client, type: :list)
  field(:container, as: GoogleApi.TagManager.V2.Model.Container)
  field(:containerId)
  field(:containerVersionId)
  field(:customTemplate, as: GoogleApi.TagManager.V2.Model.CustomTemplate, type: :list)
  field(:deleted)
  field(:description)
  field(:fingerprint)
  field(:folder, as: GoogleApi.TagManager.V2.Model.Folder, type: :list)
  field(:gtagConfig, as: GoogleApi.TagManager.V2.Model.GtagConfig, type: :list)
  field(:name)
  field(:path)
  field(:tag, as: GoogleApi.TagManager.V2.Model.Tag, type: :list)
  field(:tagManagerUrl)
  field(:trigger, as: GoogleApi.TagManager.V2.Model.Trigger, type: :list)
  field(:variable, as: GoogleApi.TagManager.V2.Model.Variable, type: :list)
  field(:zone, as: GoogleApi.TagManager.V2.Model.Zone, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.ContainerVersion do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.ContainerVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.ContainerVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
