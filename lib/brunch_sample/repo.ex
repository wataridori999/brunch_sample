defmodule BrunchSample.Repo do
  use Ecto.Repo, otp_app: :brunch_sample

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
