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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadata do
  @moduledoc """
  Metadata of the input of a feature. Fields other than InputMetadata.input_baselines are applicable only for Models that are using Vertex AI-provided images for Tensorflow.

  ## Attributes

  *   `denseShapeTensorName` (*type:* `String.t`, *default:* `nil`) - Specifies the shape of the values of the input if the input is a sparse representation. Refer to Tensorflow documentation for more details: https://www.tensorflow.org/api_docs/python/tf/sparse/SparseTensor.
  *   `encodedBaselines` (*type:* `list(any())`, *default:* `nil`) - A list of baselines for the encoded tensor. The shape of each baseline should match the shape of the encoded tensor. If a scalar is provided, Vertex AI broadcasts to the same shape as the encoded tensor.
  *   `encodedTensorName` (*type:* `String.t`, *default:* `nil`) - Encoded tensor is a transformation of the input tensor. Must be provided if choosing Integrated Gradients attribution or XRAI attribution and the input tensor is not differentiable. An encoded tensor is generated if the input tensor is encoded by a lookup table.
  *   `encoding` (*type:* `String.t`, *default:* `nil`) - Defines how the feature is encoded into the input tensor. Defaults to IDENTITY.
  *   `featureValueDomain` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadataFeatureValueDomain.t`, *default:* `nil`) - The domain details of the input feature value. Like min/max, original mean or standard deviation if normalized.
  *   `groupName` (*type:* `String.t`, *default:* `nil`) - Name of the group that the input belongs to. Features with the same group name will be treated as one feature when computing attributions. Features grouped together can have different shapes in value. If provided, there will be one single attribution generated in Attribution.feature_attributions, keyed by the group name.
  *   `indexFeatureMapping` (*type:* `list(String.t)`, *default:* `nil`) - A list of feature names for each index in the input tensor. Required when the input InputMetadata.encoding is BAG_OF_FEATURES, BAG_OF_FEATURES_SPARSE, INDICATOR.
  *   `indicesTensorName` (*type:* `String.t`, *default:* `nil`) - Specifies the index of the values of the input tensor. Required when the input tensor is a sparse representation. Refer to Tensorflow documentation for more details: https://www.tensorflow.org/api_docs/python/tf/sparse/SparseTensor.
  *   `inputBaselines` (*type:* `list(any())`, *default:* `nil`) - Baseline inputs for this feature. If no baseline is specified, Vertex AI chooses the baseline for this feature. If multiple baselines are specified, Vertex AI returns the average attributions across them in Attribution.feature_attributions. For Vertex AI-provided Tensorflow images (both 1.x and 2.x), the shape of each baseline must match the shape of the input tensor. If a scalar is provided, we broadcast to the same shape as the input tensor. For custom images, the element of the baselines must be in the same format as the feature's input in the instance[]. The schema of any single instance may be specified via Endpoint's DeployedModels' Model's PredictSchemata's instance_schema_uri.
  *   `inputTensorName` (*type:* `String.t`, *default:* `nil`) - Name of the input tensor for this feature. Required and is only applicable to Vertex AI-provided images for Tensorflow.
  *   `modality` (*type:* `String.t`, *default:* `nil`) - Modality of the feature. Valid values are: numeric, image. Defaults to numeric.
  *   `visualization` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadataVisualization.t`, *default:* `nil`) - Visualization configurations for image explanation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :denseShapeTensorName => String.t() | nil,
          :encodedBaselines => list(any()) | nil,
          :encodedTensorName => String.t() | nil,
          :encoding => String.t() | nil,
          :featureValueDomain =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadataFeatureValueDomain.t()
            | nil,
          :groupName => String.t() | nil,
          :indexFeatureMapping => list(String.t()) | nil,
          :indicesTensorName => String.t() | nil,
          :inputBaselines => list(any()) | nil,
          :inputTensorName => String.t() | nil,
          :modality => String.t() | nil,
          :visualization =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadataVisualization.t()
            | nil
        }

  field(:denseShapeTensorName)
  field(:encodedBaselines, type: :list)
  field(:encodedTensorName)
  field(:encoding)

  field(:featureValueDomain,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadataFeatureValueDomain
  )

  field(:groupName)
  field(:indexFeatureMapping, type: :list)
  field(:indicesTensorName)
  field(:inputBaselines, type: :list)
  field(:inputTensorName)
  field(:modality)

  field(:visualization,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadataVisualization
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadata do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadataInputMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
