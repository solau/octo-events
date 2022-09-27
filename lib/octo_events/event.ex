defmodule OctoEvents.Event do
    use Ecto.Schema
    import Ecto.Changeset

    @primary_key {:id, Ecto.UUID, autogenerate: true}
    schema "events" do 
      field :action,  :string
      field :number, :integer
      timestamps()
    end

    @required_params [:action, :number]
    
    def build(params) do
        params
        |> changeset()
        |> apply_action(:insert)
    end

    def changeset(params) do
        %__MODULE__{}
        |> cast(params, @required_params)
        |> validate_required(@required_params)
    end 
end