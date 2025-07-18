db.orcamento.aggregate([
  {
    $match: {
      "servico.status": "Entregue",
      "servico.data_inicio": { $exists: true, $ne: null },
      "servico.data_conclusao": { $exists: true, $ne: null }
    }
  },
  {
    $project: {
      _id: 0,
      tempoEntregaMs: { $subtract: ["$servico.data_conclusao", "$servico.data_inicio"] }
    }
  },
  {
    $group: {
      _id: null,
      mediaTempoEntregaMs: { $avg: "$tempoEntregaMs" }
    }
  },
  {
    $project: {
      _id: 0,
      mediaTempoEntregaDias: { $divide: ["$mediaTempoEntregaMs", 1000 * 60 * 60 * 24] }
    }
  }
])