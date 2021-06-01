defmodule Gigalixirdeploy.Repo do
  use Ecto.Repo,
    otp_app: :gigalixirdeploy,
    adapter: Ecto.Adapters.Postgres
end
