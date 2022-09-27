defmodule OctoEventsWeb.EventsController do
    use OctoEventsWeb, :controller

    def create(conn, params) do
        params
        |> OctoEvents.create_event()
        |> handle_response(conn)
    end

    defp handle_response({:ok, event}, conn) do
        conn
        |> put_status(:ok)
        |> render("create.json", event: event)
    end
end