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

defmodule GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics do
  @moduledoc """


  ## Attributes

  *   `confidenceThreshold` (*type:* `number()`, *default:* `nil`) - Metrics are computed with an assumption that the Model never returns predictions with score lower than this value.
  *   `confusionMatrix` (*type:* `GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix.t`, *default:* `nil`) - Confusion matrix of the evaluation for this confidence_threshold.
  *   `f1Score` (*type:* `number()`, *default:* `nil`) - The harmonic mean of recall and precision. For summary metrics, it computes the micro-averaged F1 score.
  *   `f1ScoreAt1` (*type:* `number()`, *default:* `nil`) - The harmonic mean of recallAt1 and precisionAt1.
  *   `f1ScoreMacro` (*type:* `number()`, *default:* `nil`) - Macro-averaged F1 Score.
  *   `f1ScoreMicro` (*type:* `number()`, *default:* `nil`) - Micro-averaged F1 Score.
  *   `falseNegativeCount` (*type:* `String.t`, *default:* `nil`) - The number of ground truth labels that are not matched by a Model created label.
  *   `falsePositiveCount` (*type:* `String.t`, *default:* `nil`) - The number of Model created labels that do not match a ground truth label.
  *   `falsePositiveRate` (*type:* `number()`, *default:* `nil`) - False Positive Rate for the given confidence threshold.
  *   `falsePositiveRateAt1` (*type:* `number()`, *default:* `nil`) - The False Positive Rate when only considering the label that has the highest prediction score and not below the confidence threshold for each DataItem.
  *   `maxPredictions` (*type:* `integer()`, *default:* `nil`) - Metrics are computed with an assumption that the Model always returns at most this many predictions (ordered by their score, descendingly), but they all still need to meet the `confidenceThreshold`.
  *   `precision` (*type:* `number()`, *default:* `nil`) - Precision for the given confidence threshold.
  *   `precisionAt1` (*type:* `number()`, *default:* `nil`) - The precision when only considering the label that has the highest prediction score and not below the confidence threshold for each DataItem.
  *   `recall` (*type:* `number()`, *default:* `nil`) - Recall (True Positive Rate) for the given confidence threshold.
  *   `recallAt1` (*type:* `number()`, *default:* `nil`) - The Recall (True Positive Rate) when only considering the label that has the highest prediction score and not below the confidence threshold for each DataItem.
  *   `trueNegativeCount` (*type:* `String.t`, *default:* `nil`) - The number of labels that were not created by the Model, but if they would, they would not match a ground truth label.
  *   `truePositiveCount` (*type:* `String.t`, *default:* `nil`) - The number of Model created labels that match a ground truth label.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceThreshold => number() | nil,
          :confusionMatrix =>
            GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix.t()
            | nil,
          :f1Score => number() | nil,
          :f1ScoreAt1 => number() | nil,
          :f1ScoreMacro => number() | nil,
          :f1ScoreMicro => number() | nil,
          :falseNegativeCount => String.t() | nil,
          :falsePositiveCount => String.t() | nil,
          :falsePositiveRate => number() | nil,
          :falsePositiveRateAt1 => number() | nil,
          :maxPredictions => integer() | nil,
          :precision => number() | nil,
          :precisionAt1 => number() | nil,
          :recall => number() | nil,
          :recallAt1 => number() | nil,
          :trueNegativeCount => String.t() | nil,
          :truePositiveCount => String.t() | nil
        }

  field(:confidenceThreshold)

  field(:confusionMatrix,
    as:
      GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix
  )

  field(:f1Score)
  field(:f1ScoreAt1)
  field(:f1ScoreMacro)
  field(:f1ScoreMicro)
  field(:falseNegativeCount)
  field(:falsePositiveCount)
  field(:falsePositiveRate)
  field(:falsePositiveRateAt1)
  field(:maxPredictions)
  field(:precision)
  field(:precisionAt1)
  field(:recall)
  field(:recallAt1)
  field(:trueNegativeCount)
  field(:truePositiveCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics do
  def decode(value, options) do
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AiPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
