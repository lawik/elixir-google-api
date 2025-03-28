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

defmodule GoogleApi.Content.V21.Model.BestSellers do
  @moduledoc """
  Fields related to the [Best Sellers reports](https://support.google.com/merchants/answer/9488679).

  ## Attributes

  *   `categoryId` (*type:* `String.t`, *default:* `nil`) - Google product category ID to calculate the ranking for, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country where the ranking is calculated.
  *   `previousRank` (*type:* `String.t`, *default:* `nil`) - Popularity rank in the previous week or month.
  *   `previousRelativeDemand` (*type:* `String.t`, *default:* `nil`) - Estimated demand in relation to the item with the highest popularity rank in the same category and country in the previous week or month.
  *   `rank` (*type:* `String.t`, *default:* `nil`) - Popularity on Shopping ads and free listings, in the selected category and country, based on the estimated number of units sold.
  *   `relativeDemand` (*type:* `String.t`, *default:* `nil`) - Estimated demand in relation to the item with the highest popularity rank in the same category and country.
  *   `relativeDemandChange` (*type:* `String.t`, *default:* `nil`) - Change in the estimated demand. Whether it rose, sank or remained flat.
  *   `reportDate` (*type:* `GoogleApi.Content.V21.Model.Date.t`, *default:* `nil`) - Report date. The value of this field can only be one of the following: * The first day of the week (Monday) for weekly reports. * The first day of the month for monthly reports.
  *   `reportGranularity` (*type:* `String.t`, *default:* `nil`) - Granularity of the report. The ranking can be done over a week or a month timeframe.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categoryId => String.t() | nil,
          :countryCode => String.t() | nil,
          :previousRank => String.t() | nil,
          :previousRelativeDemand => String.t() | nil,
          :rank => String.t() | nil,
          :relativeDemand => String.t() | nil,
          :relativeDemandChange => String.t() | nil,
          :reportDate => GoogleApi.Content.V21.Model.Date.t() | nil,
          :reportGranularity => String.t() | nil
        }

  field(:categoryId)
  field(:countryCode)
  field(:previousRank)
  field(:previousRelativeDemand)
  field(:rank)
  field(:relativeDemand)
  field(:relativeDemandChange)
  field(:reportDate, as: GoogleApi.Content.V21.Model.Date)
  field(:reportGranularity)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.BestSellers do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.BestSellers.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.BestSellers do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
