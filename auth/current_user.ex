defmodule SimpleAuth.CurrentUser do
	import Plug.Conn
	import Guardian.Plug

	def init(opts), do: opts
	 
	def call(conn, _opts) do
		current_user = current_resource(conn)
		IO.inspect current_user
		assign(conn, :current_user, current_user)
	end
end