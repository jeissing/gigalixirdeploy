Code.require_file("test_helper.exs", __DIR__)

defmodule Accetance1.BddTest do
  use ExUnit.Case
  use Hound.Helpers

  describe "Sign up" do
    @tag :acceptance
    test "Sign up successfully" do
      defmodule SignupTest do
        use Cabbage.Feature, file: "signup.feature"

        setup do
          on_exit(fn ->
            IO.puts("Scenario completed")
          end)

          Hound.start_session()
          {:ok, %{state: [:initial]}}
        end

        defgiven ~r/^I have chosen to sign up$/, _vars, %{state: state} do
          [:given | state]
          # {:ok, %{state: [:given | state]}}
        end

        defwhen ~r/^I sign up with the valid details$/, _vars, %{state: state} do
          navigate_to("http://localhost:4002")
          assert [:initial] == state
          :ok
        end

        defthen ~r/^I should receive a confirmation emial$/, _vars, %{state: state} do
          assert page_title() == "Gigalixirdeploy · Phoenix Framework"
          assert state == [:initial]
        end

        defthen ~r/^I should see a personalized greeting message$/, _vars, %{state: state} do
          assert page_title() == "Gigalixirdeploy · Phoenix Framework"
          assert state == [:initial]
        end
      end

      {result, _output} = CabbageTestHelper.run()
      assert result == %{failures: 0, skipped: 0, total: 1, excluded: 1}
    end
  end
end
