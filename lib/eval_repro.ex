defmodule EvalRepro do
  @moduledoc """
  Documentation for `EvalRepro`.
  """

  require Logger

  def main do
    {:ok, _} = Application.ensure_all_started(:eval_repro)

    span = O11y.start_span("EvalRepro.main")

    Process.sleep(1000)

    exit_code = 0

    Logger.info("Stopping EvalRepro", exit_code: exit_code)
    O11y.set_attributes(exit_code: exit_code)
    O11y.end_span(span)
    Application.stop(:eval_repro)
    3
  end
end
