defmodule NashvilleZoneLookupWeb.ErrorViewTest do
  use NashvilleZoneLookupWeb.ConnCase, async: true

  import Phoenix.View

  test "renders 400.json" do
    response_string = "{\"message\":\"Bad request\"}"
    assigns = [message: "Bad request"]

    assert render_to_string(NashvilleZoneLookupWeb.ErrorView, "400.json", assigns) == response_string
  end

  test "render 500.json" do
    response_string = "{\"message\":\"Internal server error\"}"
    assigns = [message: "Internal server error"]

    assert render_to_string(NashvilleZoneLookupWeb.ErrorView, "500.json", assigns) == response_string
  end

  test "render any other" do
    response_string = "{\"message\":\"Other error\"}"
    assigns = [message: "Other error"]

    assert render_to_string(NashvilleZoneLookupWeb.ErrorView, "other_error.json", assigns) == response_string
  end
end
