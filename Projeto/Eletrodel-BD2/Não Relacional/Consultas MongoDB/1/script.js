db.orcamento.aggregate([
  {
    $match: {
      "servico.data_conclusao": {
        $gte: ISODate("2024-06-01T00:00:00.000Z"),
        $lt: ISODate("2024-07-01T00:00:00.000Z")
      }
    }
  },
  {
    $lookup: {
      from: "cliente",
      localField: "cpf_cliente",
      foreignField: "_id",
      as: "clienteInfo"
    }
  },
  {
    $unwind: "$clienteInfo"
  },
  {
    $project: {
      _id: 0,
      nome: "$clienteInfo.Nome",
      cpf: "$cpf_cliente",
      telefone: "$clienteInfo.telefone_cliente"
    }
  }
])