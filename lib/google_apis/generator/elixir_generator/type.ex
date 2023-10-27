# Copyright 2019 Google Inc.
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

defmodule GoogleApis.Generator.ElixirGenerator.Type do
  @moduledoc """
  A type holds information about a property type
  """

  @type t :: %__MODULE__{
          :name => String.t(),
          :typed_map => String.t(),
          :struct => String.t(),
          :is_list => boolean(),
          :typespec => String.t()
        }

  defstruct [:name, :typed_map, :struct, :is_list, :typespec]

  alias GoogleApis.Generator.ElixirGenerator.ResourceContext
  alias GoogleApi.Discovery.V1.Model.JsonSchema

  @doc """
  Return a type definition given the JsonSchema and the default ResourceContext
  """
  @spec from_schema(JsonSchema.t()) :: t
  def from_schema(schema) do
    from_schema(schema, ResourceContext.default())
  end

  @doc """
  Return a type definition given the JsonSchema and a ResourceContext
  """
  @spec from_schema(JsonSchema.t(), ResourceContext.t()) :: t
  def from_schema(%{additionalProperties: %{"$ref": nil}}, _context) do
    %__MODULE__{
      name: "map",
      typespec: "map()"
    }
  end

  def from_schema(%{additionalProperties: %{"$ref": ref}}, context) do
    typespec = ResourceContext.typespec(context, ref)

    %__MODULE__{
      name: "map",
      typed_map: ResourceContext.typed_map_name(context, ref),
      typespec: "%{optional(String.t) => #{typespec}}"
    }
  end

  def from_schema(%{type: "array", items: items}, context) do
    t = from_schema(items, context)

    {typed_map, name} =
      case t.name do
        "arrayarray" -> {nil, "arrayarray"}
        "array" -> {t.typed_map, "arrayarray"}
        _ -> {t.typed_map, "array"}
      end

    %__MODULE__{
      name: name,
      typed_map: typed_map,
      is_list: true,
      typespec: "list(#{t.typespec})"
    }
  end

  def from_schema(%{repeated: true} = schema, context) do
    t =
      schema
      |> Map.put(:repeated, nil)
      |> from_schema(context)

    typed_map =
      case t.name do
        "array" -> nil
        _ -> t.typed_map
      end

    %__MODULE__{
      name: "array",
      typed_map: typed_map,
      is_list: true,
      typespec: "list(#{t.typespec})"
    }
  end

  def from_schema(%{"$ref": ref}, context) when not is_nil(ref) do
    model = Map.get(context.models_by_name, ref)
    type_typed_map = ResourceContext.typed_map_name(context, ref)
    type_spec = ResourceContext.typespec(context, ref)

    if model == nil || !model.is_array do
      %__MODULE__{
        name: "object",
        typed_map: type_typed_map,
        typespec: type_spec
      }
    else
      %__MODULE__{
        name: "array",
        typed_map: type_typed_map,
        is_list: true,
        typespec: "list(#{type_spec})"
      }
    end
  end

  def from_schema(%{type: int}, _context) when int in ["int", "integer"] do
    %__MODULE__{
      name: "integer",
      typespec: "integer()"
    }
  end

  def from_schema(%{type: "string", format: "date"}, _context) do
    %__MODULE__{
      name: "date",
      struct: "Date",
      typespec: "Date.t"
    }
  end

  def from_schema(%{type: "string", format: date_or_time}, _context)
      when date_or_time in ["date-time", "time", "google-datetime"] do
    %__MODULE__{
      name: "datetime",
      struct: "DateTime",
      typespec: "DateTime.t"
    }
  end

  def from_schema(%{type: "string"}, _context) do
    %__MODULE__{
      name: "string",
      typespec: "String.t"
    }
  end

  def from_schema(%{type: "boolean"}, _context) do
    %__MODULE__{
      name: "boolean",
      typespec: "boolean()"
    }
  end

  def from_schema(%{type: "number", format: "double"}, _context) do
    %__MODULE__{
      name: "float",
      typespec: "float()"
    }
  end

  def from_schema(%{type: "number"}, _context) do
    %__MODULE__{
      name: "number",
      typespec: "number()"
    }
  end

  def from_schema(%{type: "any"}, _context) do
    %__MODULE__{
      name: "any",
      typespec: "any()"
    }
  end

  def from_schema(%{type: "object"}, context) do
    %__MODULE__{
      name: "object",
      typed_map: ResourceContext.typed_map_name(context),
      typespec: ResourceContext.typespec(context)
    }
  end

  def from_schema(_schema, _context) do
    %__MODULE__{
      name: "string",
      typespec: "String.t"
    }
  end

  @doc """
  Return an empty Type
  """
  @spec empty() :: t
  def empty() do
    %__MODULE__{
      typespec: "nil"
    }
  end
end
