db.orcamento.aggregate([
  {
    $match: {
      "servico.status": "Entregue"
    }
  },
  {
    $lookup: {
      from: "funcionario",
      localField: "servico.cpf_funcionario",
      foreignField: "_id",
      as: "dados_funcionario"
    }
  },
  {
    $unwind: "$dados_funcionario" 
  },
  {
    $project: {
      _id: 0, 
      servico_id: "$_id", 
      status: "$servico.status",
      orcamento_valor: "$valor",
      descricao_problema: "$descricao_problema",
      funcionario: "$dados_funcionario.nome",
      funcionario_cpf: "$dados_funcionario._id"
    }
  }
])