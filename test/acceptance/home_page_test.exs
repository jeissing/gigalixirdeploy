defmodule Acceptance.HomePageTest do
  use ExUnit.Case, async: false
  use Hound.Helpers

  setup do
    Hound.start_session()
    :ok
  end

  @tag :acceptance
  test "the page loads" do
    # navigate_to("http://localhost:4002")
    navigate_to(GigalixirdeployWeb.Endpoint.url())
    assert page_title() == "Gigalixirdeploy · Phoenix Framework"
  end
end
