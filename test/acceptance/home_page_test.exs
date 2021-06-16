defmodule Acceptance.HomePageTest do
  use ExUnit.Case, async: false
  use Hound.Helpers

  setup do
    Hound.start_session()
    :ok
  end

  @tag :acceptance
  test "the page loads" do
    navigate_to("http://localhost:4002")
    assert page_title() == "Gigalixirdeploy · Phoenix Framework"
  end
end
