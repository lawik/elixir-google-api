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

defmodule GoogleApi.Datastore.V1.Model.AggregationResultBatch do
  @moduledoc """
  A batch of aggregation results produced by an aggregation query.

  ## Attributes

  *   `aggregationResults` (*type:* `list(GoogleApi.Datastore.V1.Model.AggregationResult.t)`, *default:* `nil`) - The aggregation results for this batch.
  *   `moreResults` (*type:* `String.t`, *default:* `nil`) - The state of the query after the current batch. Only COUNT(*) aggregations are supported in the initial launch. Therefore, expected result type is limited to `NO_MORE_RESULTS`.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - Read timestamp this batch was returned from. In a single transaction, subsequent query result batches for the same query can have a greater timestamp. Each batch's read timestamp is valid for all preceding batches.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregationResults => list(GoogleApi.Datastore.V1.Model.AggregationResult.t()) | nil,
          :moreResults => String.t() | nil,
          :readTime => DateTime.t() | nil
        }

  field(:aggregationResults, as: GoogleApi.Datastore.V1.Model.AggregationResult, type: :list)
  field(:moreResults)
  field(:readTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.AggregationResultBatch do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.AggregationResultBatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.AggregationResultBatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
