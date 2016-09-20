defmodule Wallaby.DSL.Window.ResizeTest do
  use Wallaby.SessionCase, async: true

  test "manipulating window size", %{session: session, server: server} do
    window_size =
      session
      |> visit(server.base_url)
      |> set_window_size(1234, 1234)
      |> get_window_size

    assert window_size == %{"height" => 1234, "width" => 1234}
  end
end
