db.orcamento.aggregate([
  {
    $match: {
      "servico.data_inicio": {
        $gte: ISODate("2024-01-01T00:00:00Z"),
        $lt: ISODate("2025-01-01T00:00:00Z")
      }
    }
  },
  {
    $group: {
      _id: "$servico.tipo_servico",
      total: { $sum: 1 }
    }
  },
  {
    $group: {
      _id: null,
      maxTotal: { $max: "$total" },
      tipos: {
        $push: {
          tipo: "$_id",
          total: "$total"
        }
      }
    }
  },
  {
    $project: {
      _id: 0,
      tipos: {
        $filter: {
          input: "$tipos",
          as: "t",
          cond: { $eq: ["$$t.total", "$maxTotal"] }
        }
      }
    }
  },
  { $unwind: "$tipos" },
  {
    $project: {
      tipo_servico: "$tipos.tipo",
      total: "$tipos.total"
    }
  }
])