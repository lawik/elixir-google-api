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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule do
  @moduledoc """
  The rule that adjusts the likelihood of findings within a certain proximity of hotwords.

  ## Attributes

  *   `hotwordRegex` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex.t`, *default:* `nil`) - Regular expression pattern defining what qualifies as a hotword.
  *   `likelihoodAdjustment` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment.t`, *default:* `nil`) - Likelihood adjustment to apply to all matching findings.
  *   `proximity` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Proximity.t`, *default:* `nil`) - Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The finding itself will be included in the window, so that hotwords can be used to match substrings of the finding itself. Suppose you want Cloud DLP to promote the likelihood of the phone number regex "\\(\\d{3}\\) \\d{3}-\\d{4}" if the area code is known to be the area code of a company's office. In this case, use the hotword regex "\\(xxx\\)", where "xxx" is the area code in question. For tabular data, if you want to modify the likelihood of an entire column of findngs, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hotwordRegex => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex.t() | nil,
          :likelihoodAdjustment =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment.t() | nil,
          :proximity => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Proximity.t() | nil
        }

  field(:hotwordRegex, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex)
  field(:likelihoodAdjustment, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment)
  field(:proximity, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Proximity)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
