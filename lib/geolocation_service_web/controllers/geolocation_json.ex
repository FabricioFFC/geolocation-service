defmodule GeolocationServiceWeb.GeolocationJSON do
  alias GeolocationService.Geolocation

  @doc """
  Renders a single geolocation.
  """
  def show(%{geolocation: geolocation}) do
    %{data: data(geolocation)}
  end

  defp data(%Geolocation{} = geolocation) do
    {a, b, c, d} = geolocation.ip_address.address

    %{
      ip_address: "#{a}.#{b}.#{c}.#{d}",
      country_code: geolocation.country_code,
      country: geolocation.country,
      city: geolocation.city,
      latitude: geolocation.latitude,
      longitude: geolocation.longitude,
      mystery_value: geolocation.mystery_value
    }
  end
end
