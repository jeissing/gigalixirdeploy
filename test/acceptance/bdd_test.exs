Code.require_file("test_helper.exs", __DIR__)

defmodule Accetance.BddTest do
  use ExUnit.Case

  describe "Tests execution" do
    test "ignores steps that doesn't comply to pattern {:ok, map}" do
      defmodule FeatureExecutionTest do
        use Cabbage.Feature, file: "simple.feature"

        setup do
          on_exit(fn ->
            IO.puts("Scenario completed")
          end)
          {:ok, %{state: [:initial]}}
        end

        defgiven ~r/^I provide Given$/, _vars, %{state: state} do
          [:given | state]
          #{:ok, %{state: [:given | state]}}
        end

        defgiven ~r/^I provide And$/, _vars, %{state: state} do
          assert [:initial] == state
          # assert [:given] == state
          nil
        end

        defwhen ~r/^I provide When$/, _vars, %{state: state} do
          assert [:initial] == state
          :ok
        end

        defthen ~r/^I provide Then$/, _vars, %{state: state} do
          assert state == [:initial]
        end
      end

      {result, _output} = CabbageTestHelper.run()
      assert result == %{failures: 0, skipped: 0, total: 1, excluded: 0}
    end
  end
end
