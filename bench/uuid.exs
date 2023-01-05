Benchee.run(
  %{
    "ecto_ulid" => fn
      "generate/0" -> Ecto.ULID.generate()
      "bingenerate/0" -> Ecto.ULID.bingenerate()
    end,
    "ecto_uuid" => fn
      "generate/0" -> Ecto.UUID.generate()
      "bingenerate/0" -> Ecto.UUID.bingenerate()
    end,
    "uniq_uuid_v6" => fn
      "generate/0" -> Uniq.UUID.uuid6()
      "bingenerate/0" -> Uniq.UUID.uuid6(:raw)
    end,
    "uniq_uuid_v7" => fn
      "generate/0" -> Uniq.UUID.uuid7()
      "bingenerate/0" -> Uniq.UUID.uuid7(:raw)
    end
  },
  inputs: %{
    "generate/0" => "generate/0",
    "bingenerate/0" => "bingenerate/0"
  }
)
