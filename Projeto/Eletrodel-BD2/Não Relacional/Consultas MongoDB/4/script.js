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
      _id: "$servico.cpf_funcionario",
      total_servicos: { $sum: 1 }
    }
  },
  {
    $group: {
      _id: null,
      maxTotal: { $max: "$total_servicos" },
      funcionarios: {
        $push: {
          cpf: "$_id",
          total_servicos: "$total_servicos"
        }
      }
    }
  },
  {
    $project: {
      _id: 0,
      funcionarios: {
        $filter: {
          input: "$funcionarios",
          as: "f",
          cond: { $eq: ["$$f.total_servicos", "$maxTotal"] }
        }
      }
    }
  },
  { $unwind: "$funcionarios" },
  {
    $lookup: {
      from: "funcionario",
      localField: "funcionarios.cpf",
      foreignField: "_id",
      as: "dados_funcionario"
    }
  },
  { $unwind: "$dados_funcionario" },
  {
    $project: {
      cpf: "$funcionarios.cpf",
      nome: "$dados_funcionario.nome",
      total_servicos: "$funcionarios.total_servicos"
    }
  }
])