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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FractionSplit do
  @moduledoc """
  Assigns the input data to training, validation, and test sets as per the given fractions. Any of `training_fraction`, `validation_fraction` and `test_fraction` may optionally be provided, they must sum to up to 1. If the provided ones sum to less than 1, the remainder is assigned to sets as decided by Vertex AI. If none of the fractions are set, by default roughly 80% of data is used for training, 10% for validation, and 10% for test.

  ## Attributes

  *   `testFraction` (*type:* `float()`, *default:* `nil`) - The fraction of the input data that is to be used to evaluate the Model.
  *   `trainingFraction` (*type:* `float()`, *default:* `nil`) - The fraction of the input data that is to be used to train the Model.
  *   `validationFraction` (*type:* `float()`, *default:* `nil`) - The fraction of the input data that is to be used to validate the Model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :testFraction => float() | nil,
          :trainingFraction => float() | nil,
          :validationFraction => float() | nil
        }

  field(:testFraction)
  field(:trainingFraction)
  field(:validationFraction)
end

defimpl Poison.Decoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FractionSplit do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FractionSplit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1FractionSplit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
